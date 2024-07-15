const eventService = require("../services/eventServices");

const showEvents=async (req,res)=>{
    try{
        const events = await eventService.getAllEvents();
        console.log("The events are : ",events);
        return res.status(200).json(events);
        

    }catch(err){
        console.error("Error fecthing events : ",err);
        return res.status(500).json({message:"Error when fetching the events!",error:err});
    }



}



module.exports={
    showEvents
}