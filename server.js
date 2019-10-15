var orm = require("./config/orm.js");

// For each of the following select methods, a string argument containing wildcard character ("*")
// could work in most environments, but some MySQL servers (like MAMP) will return an error.

// Console log all the party_name's.
orm.select("title", "artwork");

// Console log all the client_name's.
orm.select("artist_name", "artist");

// Console log all the parties that have a party-type of grown-up.
orm.selectWhere("artwork", "genre", "grown-up");

// Console log all the clients and their parties.
orm.leftJoin(["artist_name", "title"], "artist", "artwork", "id", "artist_id");


