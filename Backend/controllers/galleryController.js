const galleryService = require("../services/galleryServices");


const getAllCategories = async (req,res) =>{
    try{
        const all_categories= await galleryService.getAllCategories();
        console.log("all categories : ",all_categories);
        return res.status(200).json(all_categories);
        

    }catch(err){
        console.error("somthing went wrong when fetching images!",err);
        return res.status(500).json({message:"Error when fetching details!",error:err})


    }


}

const getEsalaPerahera= async(req,res)=>{
    try{
        const esalaperahera=await galleryService.getEsalaPerahera();
        return res.status(200).json(esalaperahera);

    }catch(err){
        console.error("somthing went wrong when fetching images!",err);
        return res.status(500).json({message:"Error when fetching details!",error:err})


    }
    
}


const getDammaSchool= async(req,res)=>{
    try{
        const getDammaSchool=await galleryService.getDammaSchool();
        return res.status(200).json(getDammaSchool);

    }catch(err){
        console.error("somthing went wrong when fetching images!",err);
        return res.status(500).json({message:"Error when fetching details!",error:err})


    }
    
}
const getVibashanaDevalaya= async(req,res)=>{
try{
    const getVibashanaDevalaya=await galleryService.getVibashanaDevalaya();
    return res.status(200).json(getVibashanaDevalaya);

}catch(err){
    console.error("somthing went wrong when fetching images!",err);
    return res.status(500).json({message:"Error when fetching details!",error:err})

}
}









module.exports={
    getAllCategories,
    getEsalaPerahera,
    getDammaSchool,
    getVibashanaDevalaya
    // getEsalaPerahera,
    // getDammaSchool,
    // getVibashanaDevalaya



}