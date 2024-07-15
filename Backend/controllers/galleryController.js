const galleryService = require("../services/galleryServices");

const getAllCategories = async (req, res) => {
  try {
    const all_categories = await galleryService.getAllCategories();
    console.log("all categories : ", all_categories);
    return res.status(200).json(all_categories);
  } catch (err) {
    console.error("somthing went wrong when fetching images!", err);
    return res
      .status(500)
      .json({ message: "Error when fetching details!", error: err });
  }
};

const addPicture = async (req, res) => {
  try {
    const { category_id } = req.params;
    const picture = req.file ? req.file.filename : null;
    const adder = await galleryService.addPicture(category_id, picture);
    return res
      .status(200)
      .json({ message: "picture adding completed!", data: adder });
  } catch (err) {
    console.error("Somthing went wrong when adding the picture!");
    return res
      .status(500)
      .json({ message: "Error when adding the picture", error: err });
  }
};

const deleteImage =async (req,res) =>{
    try{
        const {id} =req.params;
        const imageDelete = await galleryService.deleteImage(id);
        return res.status(200).json({message:"image deletion complated!"});
        

    }catch(err){
        console.error(err);
        return res.status(500).json({message:"Error when deleting the image"});

    }

}


module.exports = {
  getAllCategories,
  addPicture,
  deleteImage
};
