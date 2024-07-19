const db = require("../db/db");

const addContact = (firstname, lastname, email, subject, message) => {
  const sql =
    "INSERT INTO contactus (firstname,lastname,email,subject,message) VALUES (?, ?, ?, ?, ?)";
  return new Promise((resolve, reject) => {
    db.query(
      sql,
      [firstname, lastname, email, subject, message],
      (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(JSON.parse(JSON.stringify(results)));
        }
      }
    );
  });
};

const checkContact = (email) => {
  const sql = "SELECT * FROM contactus WHERE email=?";
  return new Promise((resolve, reject) => {
    db.query(sql, [email], (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results);
      }
    });
  });
};

module.exports = {
  addContact,
  checkContact,
};
