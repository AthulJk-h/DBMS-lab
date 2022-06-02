> db.createUser({user:"sam",pwd:"password",roles:[{role:"userAdminAnyDatabase",d
b:"admin"}]})
Successfully added user: {
        "user" : "sam",
        "roles" : [
                {
                        "role" : "userAdminAnyDatabase",
                        "db" : "admin"
                }
        ]
}
> db.createUser({user:"Employeeadmin",pwd:"password",roles:[{role:"userAdmin",db
:"Employee"}]})
Successfully added user: {
        "user" : "Employeeadmin",
        "roles" : [
                {
                        "role" : "userAdmin",
                        "db" : "Employee"
                }
        ]
}