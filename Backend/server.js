const express = require("express");
const cors=require("cors");
const app=express();
const port=8000;
const db = require("./db/db");
const path =require('path');
app.use(express.json());
app.use(cors());

//link the routes
const contactRoutes= require("./routes/contactRoute");
const eventRoutes=require("./routes/eventRoute");
const galleryRoutes=require("./routes/galleryRoute");

app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

//making routes
app.use("/api/addContact",contactRoutes);//todo
app.use("/api/events",eventRoutes);
app.use("/api/gallery",galleryRoutes);




app.listen(port,()=>{
    console.log("express backend is working on port number 8001!");

})