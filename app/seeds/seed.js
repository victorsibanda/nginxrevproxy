const { faker } = require('@faker-js/faker');
var Post = require('../models/post');
var mongoose = require('mongoose');

if(process.env.DB_HOST) {
  mongoose.connect(process.env.DB_HOST);

  Post.deleteMany({}, function(){
    console.log('Database Cleared');
  });

  var count = 0;
  var num_records = 100;

  for(var i = 0; i < num_records; i++) {
    Post.create({
      title: faker.word.words(),
      body: faker.lorem.paragraphs()
    }, function(){
      count++;
      if(count >= num_records) {
        mongoose.connection.close();
        console.log("Database Seeded");
      }
    });
  }
}
