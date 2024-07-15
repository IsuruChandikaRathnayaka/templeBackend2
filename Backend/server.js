const express = require("express");
const cors=require("cors");
const app=express();
const port=8001;
const db = require("./db/db");

app.use(express.json());
app.use(cors());

//link the routes
const contactRoutes= require("./routes/contactRoute");
const eventRoutes=require("./routes/eventRoute");
const galleryRoutes=require("./routes/galleryRoute");


//making routes
app.use("/api/addContact",contactRoutes);
app.use("/api/showEvents",eventRoutes);
app.use("/api/getAllCategories",galleryRoutes);




app.listen(port,()=>{
    console.log("express backend is working on port number 8001!");

})