use("sample_mflix");

// 1.1
// db.comments.aggregate([{$match: {}}]);

// 1.2
// db.comments.aggregate([{$match: {_id: ObjectId('5a9427648b0beebeb69579f5')}}]);

// 1.3
// db.comments.aggregate([{$match: {email: 'john_bishop@fakegmail.com'}},{$project: {_id: ObjectId('5a9427648b0beebeb69579f5')}}]);

// 1.4
// db.comments.aggregate([{$match: {name: 'John Bishop'}}]);

// เพิ่มเติม
// db.comments.countDocuments({name: 'John Bishop'});
