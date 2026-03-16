use('sample_mflix');

// 4.1
// db.movies.find({plot:{$regex:'american', $options: "i" }});

// db.movies.find({ plot: { $regex: "American", $options: "i" } }).count();

// 4.2
// db.movies.find({ plot: { $regex: "street.$", $options: "i" } }).count();

// 4.3
db.movies.find({ plot: { $regex: "street.$", $options: "i" } })