use employee
switched to db employee
> db.createCollection("EMPL")
{ "ok" : 1 }

> db.EMPL.find().pretty()
> db.EMPL.insert({"empno":1,"name":"ST","salary":2000,"role":"OB"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":2,"name":"MSD","salary":1500,"role":"WK"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":3,"name":"YS","salary":1000,"role":"ALR"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":4,"name":"RD","salary":1000,"role":"MOB"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":5,"name":"RS","salary":500,"role":"OB"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":6,"name":"BK","salary":500,"role":"MOB"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":7,"name":"VK","salary":300,"role":"BW"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":8,"name":"JB","salary":400,"role":"BW"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":9,"name":"HP","salary":400,"role":"ALR"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.insert({"empno":10,"name":"VS","salary":300,"role":"OB"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.find().pretty()
{
        "_id" : ObjectId("628c633ebeb71b94d48f6917"),
        "empno" : 1,
        "name" : "ST",
        "salary" : 2000,
        "role" : "OB"
}
{
        "_id" : ObjectId("628c6360beb71b94d48f6918"),
        "empno" : 2,
        "name" : "MSD",
        "salary" : 1500,
        "role" : "WK"
}
{
        "_id" : ObjectId("628c6381beb71b94d48f6919"),
        "empno" : 3,
        "name" : "YS",
        "salary" : 1000,
        "role" : "ALR"
}
{
        "_id" : ObjectId("628c639abeb71b94d48f691a"),
        "empno" : 4,
        "name" : "RD",
        "salary" : 1000,
        "role" : "MOB"
}
{
        "_id" : ObjectId("628c63afbeb71b94d48f691b"),
        "empno" : 5,
        "name" : "RS",
        "salary" : 500,
        "role" : "OB"
}
{
        "_id" : ObjectId("628c63c9beb71b94d48f691c"),
        "empno" : 6,
        "name" : "BK",
        "salary" : 500,
        "role" : "MOB"
}
{
        "_id" : ObjectId("628c63e2beb71b94d48f691d"),
        "empno" : 7,
        "name" : "VK",
        "salary" : 300,
        "role" : "BW"
}
{
        "_id" : ObjectId("628c63f5beb71b94d48f691e"),
        "empno" : 8,
        "name" : "JB",
        "salary" : 400,
        "role" : "BW"
}
{
        "_id" : ObjectId("628c6411beb71b94d48f691f"),
        "empno" : 9,
        "name" : "HP",
        "salary" : 400,
        "role" : "ALR"
}
{
        "_id" : ObjectId("628c642cbeb71b94d48f6920"),
        "empno" : 10,
        "name" : "VS",
        "salary" : 300,
        "role" : "OB"
}