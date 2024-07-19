const express = require("express");
const router = express.Router();
const galleryController = require("../controllers/galleryController");
const upload = require("../middleware/upload");

router.get("/", galleryController.getAllCategories);
router.post(
  "/:category_id",
  upload.single("picture_url"),
  galleryController.addPicture
);
router.delete("/:id", galleryController.deleteImage);

module.exports = router;
