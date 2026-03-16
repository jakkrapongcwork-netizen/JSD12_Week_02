use("sample_mflix");

// db.theaters.aggregate([{$match: {"location.address.state": 'MN'}}]);

// 3.1
// db.theaters.find({'location.address.state': 'AL'}).count();

// 3.2
// db.theaters.find({'location.address.city': 'La Quinta'}).count();

// 3.3.1
// db.theaters.findOne({'location.address.state': 'AL'});

// 3.3.2
db.theaters.findOne({'location.address.city': 'La Quinta'});