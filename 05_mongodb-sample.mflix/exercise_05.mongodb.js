use('sample_mflix');

// 5.1
db.movies.find({}).sort({ runtime: -1 }).limit(5);

// 5.2
db.movies.find({ runtime: { $lt: 60 } }).sort({ runtime: -1 }).limit(5);

// 5.3
db.movies.find({ year: { $gt: 1954, $lt: 1966 } }).sort({ year: 1 }).limit(3);

// 5.4
db.movies.find({ released: { $gte: ISODate("1990-01-01T00:00:00Z"), $lt: ISODate("2001-01-01T00:00:00Z") } }).count()