db.createUser(
    {
        user : "triadmin",
        pwd :  "admin01",
        roles :[
            {
                role : "readWrite",
                db : "library"
            }
        ]
    }
)