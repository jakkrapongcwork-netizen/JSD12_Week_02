use('sample_mflix');

// 6.1
db.movies.find({
  countries: {$in: ["USA"]},
  year: {$gte: 1950, $lte: 1970}
});

// 6.2
db.movies.find({ 
  genres: { $all: ["Drama", "History"] },
  released: { $gt: ISODate("1970-01-01T00:00:00Z") }
}).count();

// 6.3
db.movies.find({ cast: "Roy L. McCardell" }).count();

// 6.4
db.movies.find({ directors: "Hal Roach" }).count();

// 6.5
db.movies.find({ directors: { $in: ["Hal Roach"] } });

// 6.6
db.movies.find(
    { 
        directors: { $in: ["Hal Roach"] } 
    }, 
    {
        title: 1, 
        "awards.wins": 1, 
        _id: 0 
    }
);
