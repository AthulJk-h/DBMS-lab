> db.empl.find({"name":/s/})
{ "_id" : ObjectId("628e76e4b7f978af2ccfe4a6"), "name" : "dsflkj", "salary" : 40
000, "role" : "KP" }
{ "_id" : ObjectId("628e76efb7f978af2ccfe4a7"), "name" : "dghjlksfsj", "salary"
: 60000, "role" : "KP" }
{ "_id" : ObjectId("628e76f9b7f978af2ccfe4a8"), "name" : "sfsdfskjuhdj", "salary
" : 100000, "role" : "HR" }
{ "_id" : ObjectId("628e770eb7f978af2ccfe4aa"), "name" : "Eldhose", "salary" : 5
00000, "role" : "Developer" }
> db.empl.find({name:/^s/});
{ "_id" : ObjectId("628e76f9b7f978af2ccfe4a8"), "name" : "sfsdfskjuhdj", "salary
" : 100000, "role" : "HR" }
> db.empl.find({name:/^s/}).pretty();
{
        "_id" : ObjectId("628e76f9b7f978af2ccfe4a8"),
        "name" : "sfsdfskjuhdj",
        "salary" : 100000,
        "role" : "HR"
}
> db.empl.find({name:{$regex: "e$"}}.pretty();
...
...
> db.empl.find({name:{$regex: "e$"}}).pretty();
{
        "_id" : ObjectId("628e770eb7f978af2ccfe4aa"),
        "name" : "Eldhose",
        "salary" : 500000,
        "role" : "Developer"
}
> db.empl.updateOne({name:"Eldhose"},{$set:{salary:"55000"}});
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.empl.find.pretty();
2022-05-25T05:40:48.365-0400 E QUERY    [thread1] TypeError: db.empl.find.pretty
 is not a function :
@(shell):1:1

> db.empl.find;
function (query, fields, limit, skip, batchSize, options) {
    var cursor = new DBQuery(this._mongo,
                             this._db,
                             this,
                             this._fullName,
                             this._massageObject(query),
                             fields,
                             limit,
                             skip,
                             batchSize,
                             options || this.getQueryOptions());

    var connObj = this.getMongo();
    var readPrefMode = connObj.getReadPrefMode();
    if (readPrefMode != null) {
        cursor.readPref(readPrefMode, connObj.getReadPrefTagSet());
    }

    return cursor;
}
> db.empl.find().pretty();
{
        "_id" : ObjectId("628e76e4b7f978af2ccfe4a6"),
        "name" : "dsflkj",
        "salary" : 40000,
        "role" : "KP"
}
{
        "_id" : ObjectId("628e76efb7f978af2ccfe4a7"),
        "name" : "dghjlksfsj",
        "salary" : 60000,
        "role" : "KP"
}
{
        "_id" : ObjectId("628e76f9b7f978af2ccfe4a8"),
        "name" : "sfsdfskjuhdj",
        "salary" : 100000,
        "role" : "HR"
}
{
        "_id" : ObjectId("628e7703b7f978af2ccfe4a9"),
        "name" : "Alan",
        "salary" : 200000,
        "role" : "HR"
}
{
        "_id" : ObjectId("628e770eb7f978af2ccfe4aa"),
        "name" : "Eldhose",
        "salary" : "55000",
        "role" : "Developer"
}
> db.empl.updateOne({name:"Eldhose"},{$inc:{salary:8000}});
2022-05-25T05:44:00.967-0400 E QUERY    [thread1] uncaught exception: WriteError
({
        "index" : 0,
        "code" : 16837,
        "errmsg" : "Cannot apply $inc to a value of non-numeric type. {_id: Obje
ctId('628e770eb7f978af2ccfe4aa')} has the field 'salary' of non-numeric type Str
ing",
        "op" : {
                "q" : {
                        "name" : "Eldhose"
                },
                "u" : {
                        "$inc" : {
                                "salary" : 8000
                        }
                },
                "multi" : false,
                "upsert" : false
        }
}) :
undefined
> db.empl.update({name:"Eldhose"},{$inc:{salary:8000}});
WriteResult({
        "nMatched" : 0,
        "nUpserted" : 0,
        "nModified" : 0,
        "writeError" : {
                "code" : 16837,
                "errmsg" : "Cannot apply $inc to a value of non-numeric type. {_
id: ObjectId('628e770eb7f978af2ccfe4aa')} has the field 'salary' of non-numeric
type String"
        }
})
> db.empl.updateOne({name:"Eldhose"},{$set:{salary:55000}});
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.empl.update({name:"Eldhose"},{$inc:{salary:8000}});
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.empl.find().pretty();
{
        "_id" : ObjectId("628e76e4b7f978af2ccfe4a6"),
        "name" : "dsflkj",
        "salary" : 40000,
        "role" : "KP"
}
{
        "_id" : ObjectId("628e76efb7f978af2ccfe4a7"),
        "name" : "dghjlksfsj",
        "salary" : 60000,
        "role" : "KP"
}
{
        "_id" : ObjectId("628e76f9b7f978af2ccfe4a8"),
        "name" : "sfsdfskjuhdj",
        "salary" : 100000,
        "role" : "HR"
}
{
        "_id" : ObjectId("628e7703b7f978af2ccfe4a9"),
        "name" : "Alan",
        "salary" : 200000,
        "role" : "HR"
}
{
        "_id" : ObjectId("628e770eb7f978af2ccfe4aa"),
        "name" : "Eldhose",
        "salary" : 63000,
        "role" : "Developer"
}
> db.empl.update({},{$inc:{salary:4000}},{multi:true});
WriteResult({ "nMatched" : 5, "nUpserted" : 0, "nModified" : 5 })
> db.empl.find().pretty();
{
        "_id" : ObjectId("628e76e4b7f978af2ccfe4a6"),
        "name" : "dsflkj",
        "salary" : 44000,
        "role" : "KP"
}
{
        "_id" : ObjectId("628e76efb7f978af2ccfe4a7"),
        "name" : "dghjlksfsj",
        "salary" : 64000,
        "role" : "KP"
}
{
        "_id" : ObjectId("628e76f9b7f978af2ccfe4a8"),
        "name" : "sfsdfskjuhdj",
        "salary" : 104000,
        "role" : "HR"
}
{
        "_id" : ObjectId("628e7703b7f978af2ccfe4a9"),
        "name" : "Alan",
        "salary" : 204000,
        "role" : "HR"
}
{
        "_id" : ObjectId("628e770eb7f978af2ccfe4aa"),
        "name" : "Eldhose",
        "salary" : 67000,
        "role" : "Developer"
}
> db.empl.find({name:/s/}).pretty();
{
        "_id" : ObjectId("628e76e4b7f978af2ccfe4a6"),
        "name" : "dsflkj",
        "salary" : 44000,
        "role" : "KP"
}
{
        "_id" : ObjectId("628e76efb7f978af2ccfe4a7"),
        "name" : "dghjlksfsj",
        "salary" : 64000,
        "role" : "KP"
}
{
        "_id" : ObjectId("628e76f9b7f978af2ccfe4a8"),
        "name" : "sfsdfskjuhdj",
        "salary" : 104000,
        "role" : "HR"
}
{
        "_id" : ObjectId("628e770eb7f978af2ccfe4aa"),
        "name" : "Eldhose",
        "salary" : 67000,
        "role" : "Developer"
}
>db.emp.update({name:"RS"},{$set:{remark:"WC"}})