// Retrieve the five most-recent films directed by Christopher Nolan.
use('sample_mflix')

db.movies.aggregate([
    {$match:{directors: 'Christopher Nolan'}},
    {$sort: {year: -1}},
    {$limit: 5},
    {$project: {
        _id: 0,
        director: '$directors',
        year: '$year'}
    }
]);
