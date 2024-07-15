const mysql=require("mysql");

const connection=mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"root",
    port:8889,
    database:"temple"
})

connection.connect((err)=>{
    if(err){
        console.error("Error connecting to database!");
        
    }else{
        console.log("Connected to database without any issue!");
    }
})


module.exports=connection;


