const express=require('express');
const router =express.Router();
const galleryController=require("../controllers/galleryController");


router.get("/",galleryController.getAllCategories);
// router.get("/getEsalaPerahera",galleryController.getEsalaPerahera);
// router.get("/getDammaSchool",galleryController.getDammaSchool);
// router.get("/getVibashanaDevalaya",galleryController.getVibashanaDevalaya);

module.exports=router