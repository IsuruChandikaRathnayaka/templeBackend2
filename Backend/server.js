const express = require("express");
const cors=require("cors");
const app=express();
const port=8000;
const db = require("./db/db");

app.use(express.json());
app.use(cors());

//link the routes
const contactRoutes= require("./routes/contactRoute");
const eventRoutes=require("./routes/eventRoute");
const galleryRoutes=require("./routes/galleryRoute");


//making routes
app.use("/api/addContact",contactRoutes);//todo
app.use("/api/events",eventRoutes);
app.use("/api/getAllCategories",galleryRoutes);//todo




app.listen(port,()=>{
    console.log("express backend is working on port number 8001!");

})