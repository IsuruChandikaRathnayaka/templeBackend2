const db=require("../db/db");

const getAllEvents=()=>{
    const sql="SELECT * FROM events";
    return new Promise((resolve,reject)=>{
        db.query(sql,(err,results)=>{
            if(err){
                console.log("error when fetching data!");
                 reject(err);

            }else{
                console.log(results);
                 resolve(JSON.parse(JSON.stringify(results)));

            }
        })
    });


}



module.exports={
    getAllEvents
}