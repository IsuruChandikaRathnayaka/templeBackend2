const db=require('../db/db');


const getAllCategories = () => {
    const sql ="SELECT * FROM pictures";
    return new Promise((resolve,reject)=>{
        db.query(sql,(err,results)=>{
            if(err){
                console.error(err);
                reject(err);

            }else{
                resolve(JSON.parse(JSON.stringify(results)));

            }
        })
    });

}

const getEsalaPerahera=()=>{
    const sql="SELECT * FROM pictures WHERE category_id=1";
    return new Promise((resolve,reject)=>{
        db.query(sql,(err,results)=>{
            if(err){
                console.error(err);
                reject(err);

            }else{
                resolve(JSON.parse(JSON.stringify(results)));

            }
        })
    })

}


const getDammaSchool=()=>{
    const sql="SELECT * FROM pictures WHERE category_id=2";
    return new Promise((resolve,reject)=>{
        db.query(sql,(err,results)=>{
            if(err){
                console.error(err);
                reject(err);

            }else{
                resolve(JSON.parse(JSON.stringify(results)));

            }
        })
    })

}

const getVibashanaDevalaya=()=>{
    const sql="SELECT * FROM pictures WHERE category_id=3";
    return new Promise((resolve,reject)=>{
        db.query(sql,(err,results)=>{
            if(err){
                console.error(err);
                reject(err);

            }else{
                resolve(JSON.parse(JSON.stringify(results)));

            }
        })
    })

}




module.exports={
    getAllCategories,
    getEsalaPerahera,
    getDammaSchool,
    getVibashanaDevalaya
}


