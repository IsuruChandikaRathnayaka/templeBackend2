const express=require('express');
const router=express.Router();
const eventController=require("../controllers/eventController");

router.get("/",eventController.showEvents);
router.post("/",eventController.addEvent);
router.put("/:id",eventController.editEvent);
router.delete("/:id",eventController.eventDelete);
module.exports=router