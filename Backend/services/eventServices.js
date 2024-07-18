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

const addEvent=(month, date, title_english,title_sinhala, description_english,description_sinhala)=>{
    const sql = "INSERT INTO events (month, date, title_english,title_sinhala, description_english,description_sinhala) VALUES (? ,? ,? , ? , ? , ? )";
    return new Promise((resolve,reject)=>{
        db.query(sql,[month, date, title_english,title_sinhala, description_english,description_sinhala],(err,results)=>{
            if(err){
                console.log(err);
                reject(err);

            }else{
                console.log(results);
                resolve(results);

            }
        })
    })

}

const editEvent = (month, date, title_english,title_sinhala, description_english,description_sinhala,id)=>{
    const sql = "UPDATE events SET month = ?, date = ?, title_english = ?,title_sinhala = ?,description_english = ? , description_sinhala = ?   WHERE id = ?";
    return new Promise((resolve,reject)=>{
       db.query(sql,[month, date, title_english,title_sinhala, description_english,description_sinhala,id],(err,results)=>{
            if(err){
                console.log(err);
                reject(err);

            }else{
                console.log(results);
                resolve(results);
            }
       })
    })

}

const eventDelete = (id)=>{
    const sql = "DELETE from events WHERE id = ? ";
    return new Promise((resolve,reject)=>{
        db.query(sql,[id],(err,results)=>{
            if(err){
                console.error(err);
                reject(err);

            }else{
                console.log(results);
                resolve(results);

            }
        })
    })
}







module.exports={
    getAllEvents,
    addEvent,
    editEvent,
    eventDelete
}