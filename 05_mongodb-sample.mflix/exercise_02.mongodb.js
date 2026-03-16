use("sample_mflix");

// 2.1
// db.movies.aggregate([{$match:{type: 'movie', rated: 'TV-G'}}]);

// db.movies.find({type: 'movie', rated: 'TV-G'}).count();

// 2.2
// db.movies.countDocuments({type: 'movie', rated: 'TV-G'});

// 2.2 (เพิ่มเติม)
db.movies.aggregate([
    {$match: {type: 'movie', rated: 'TV-G'}},
    {$count: 'total'}
]);