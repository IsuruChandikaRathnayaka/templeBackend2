const db = require("../db/db");

const getAllCategories = () => {
  const sql = "SELECT * FROM pictures";
  return new Promise((resolve, reject) => {
    db.query(sql, (err, results) => {
      if (err) {
        console.error(err);
        reject(err);
      } else {
        resolve(JSON.parse(JSON.stringify(results)));
      }
    });
  });
};

const addPicture = (category_id, picture) => {
  const sql = "INSERT INTO pictures (picture_url,category_id) VALUES (? , ?)";
  return new Promise((resolve, reject) => {
    db.query(sql, [picture, category_id], (err, results) => {
      if (err) {
        console.error(err);
        reject(err);
      } else {
        console.log(results);
        resolve(results);
      }
    });
  });
};

const deleteImage = (id) => {
  const sql = "DELETE from pictures WHERE id = ? ";
  return new Promise((resolve, reject) => {
    db.query(sql, [id], (err, results) => {
      if (err) {
        console.log(err);
        reject(err);
      } else {
        console.log(results);
        resolve(results);
      }
    });
  });
};

module.exports = {
  getAllCategories,
  addPicture,
  deleteImage
};
