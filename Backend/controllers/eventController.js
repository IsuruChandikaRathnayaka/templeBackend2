const { response } = require("express");
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

const addEvent = async (req,res)=>{
    try{
        const {month,date,title,description} = req.body;
        const event =await eventService.addEvent(month,date,title,description);
        return res.status(201).json({message:'Event added successfully!',data:event});

    }catch(err){
        console.error("Error fetching events : ",err);
        return res.status(500).json({message:"Error when adding the event!"});
    }

}

const editEvent =async (req,res)=>{
    try{
        const {id}=req.params;
        const {month,date,title,description}= req.body;

        const result = await eventService.editEvent(month,date,title,description,id);
        return res.status(200).json({message:"successfully edited the event!",data:result});


    }catch(err){
        console.error("Error when editing the event!",err);
        return res.status(500).json({message:"Error when editing the event!"});
    }

}


const eventDelete=async(req,res)=>{
    const id = req.params.id;
    try{
        const event=await eventService.eventDelete(id);
        res.status(200).json({message:"event deletion completed!",data:event});
        


    }catch(err){
        console.error("Error when editing the event!",err);
        return res.status(500).json({message:"Error when editing the event!"});
    }

}

module.exports={
    showEvents,
    addEvent,
    editEvent,
    eventDelete
}