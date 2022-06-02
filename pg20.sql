> use movie
switched to db movie
> db.MovieDetails.insert({"Title":"Titanic","Writer":"James_cameron","year":1997
,"Actors":["Dicaprio","Rose"]})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.insert({"Title":"Dark_Knight","Writer":"Nolan","year":2008,"Ac
tors":["Cristian Bale","heath_Ledger"]})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.insert({"Title":"Forestgump","Writer":"Robert","year":1994,"Ac
tors":["Tom_hanks","Robin"]})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.insert({"Title":"Interstellar","Writer":"Nolan","year":2014,"A
ctors":["Mathew","Anne"]})
WriteResult({ "nInserted" : 1 })

> db.MovieDetails.insert({"Title":"FightClub","Writer":"ChuckPalahniuk","year":1
999,"Actors":["Brad_pitt","Edward_Norton"]})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.insert({"Title":"Pulp Fiction","Writer":"Quentin Tarantino","y
ear":1994,"Actors":["John Travolta","Uma Thurman"]})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.insert({"Title":"Inglorious Basterds","Writer":"Quentin Tarant
ino","year":2009,"Actors":["Brad pitt","Diane Kruger","Eli Roth"]})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.insert({"Title":"The Hobbit:An unexpected Journey","Writer":"J
.R.R. Tolkein","year":2012,"Actors":["Martin Freeman","Ian Mckellen"]})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.remove({"Title":"The Hobbit:An unexpected Journey"})
WriteResult({ "nRemoved" : 1 })
> db.MovieDetails.insert({"Title":"The Hobbit:An unexpected Journey","Writer":"J
.R.R. Tolkein","year":2012,"Franchise":"The Hobbit"})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.insert({"Title":"The Hobbit:The Desolation of Smaug","Writer":
"J.R.R. Tolkein","year":2013,"Franchise":"The Hobbit"})
WriteResult({ "nInserted" : 1 })
> db.MovieDetails.insert({"Title":"The Hobbit:The Battle of Five armies","Writer
":"J.R.R. Tolkein","year":2012,"Franchise":"The Hobbit","Synopsis":"Bilbo and Co
mpany are forced to engage in a war against an array of"})
WriteResult({ "nInserted" : 1 })





> db.MovieDetails.find().pretty()
{
        "_id" : ObjectId("628c5b18beb71b94d48f690c"),
        "Title" : "Titanic",
        "Writer" : "James_cameron",
        "year" : 1997,
        "Actors" : [
                "Dicaprio",
                "Rose"
        ]
}
{
        "_id" : ObjectId("628c5b58beb71b94d48f690d"),
        "Title" : "Dark_Knight",
        "Writer" : "Nolan",
        "year" : 2008,
        "Actors" : [
                "Cristian Bale",
                "heath_Ledger"
        ]
}
{
        "_id" : ObjectId("628c5b99beb71b94d48f690e"),
        "Title" : "Forestgump",
        "Writer" : "Robert",
        "year" : 1994,
        "Actors" : [
                "Tom_hanks",
                "Robin"
        ]
}
{
        "_id" : ObjectId("628c5cd7beb71b94d48f690f"),
        "Title" : "Interstellar",
        "Writer" : "Nolan",
        "year" : 2014,
        "Actors" : [
                "Mathew",
                "Anne"
        ]
}
{
        "_id" : ObjectId("628c5e39beb71b94d48f6910"),
        "Title" : "FightClub",
        "Writer" : "ChuckPalahniuk",
        "year" : 1999,
        "Actors" : [
                "Brad_pitt",
                "Edward_Norton"
        ]
}
{
        "_id" : ObjectId("628c5e89beb71b94d48f6911"),
        "Title" : "Pulp Fiction",
        "Writer" : "Quentin Tarantino",
        "year" : 1994,
        "Actors" : [
                "John Travolta",
                "Uma Thurman"
        ]
}
{
        "_id" : ObjectId("628c5ef9beb71b94d48f6912"),
        "Title" : "Inglorious Basterds",
        "Writer" : "Quentin Tarantino",
        "year" : 2009,
        "Actors" : [
                "Brad pitt",
                "Diane Kruger",
                "Eli Roth"
        ]
}
{
        "_id" : ObjectId("628c60c6beb71b94d48f6914"),
        "Title" : "The Hobbit:An unexpected Journey",
        "Writer" : "J.R.R. Tolkein",
        "year" : 2012,
        "Franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("628c60f2beb71b94d48f6915"),
        "Title" : "The Hobbit:The Desolation of Smaug",
        "Writer" : "J.R.R. Tolkein",
        "year" : 2013,
        "Franchise" : "The Hobbit"
}
{
        "_id" : ObjectId("628c612dbeb71b94d48f6916"),
        "Title" : "The Hobbit:The Battle of Five armies",
        "Writer" : "J.R.R. Tolkein",
        "year" : 2012,
        "Franchise" : "The Hobbit",
        "Synopsis" : "Bilbo and Company are forced to engage in a war against an
 array of"
}
>