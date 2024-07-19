const contactService = require("../services/contactServices");

const addContact = async (req, res) => {
  try {
    const { email } = req.body;
    const available_mail = await contactService.checkContact(email);

    if (available_mail.length > 0) {
      return res
        .status(500)
        .json({
          message: "You already sent a mail!..we will contact you soon...",
        });
    }
    const { firstname, lastname, subject, message } = req.body;
    const adder = await contactService.addContact(
      firstname,
      lastname,
      email,
      subject,
      message
    );
    return res
      .status(200)
      .json({ message: "Message sending completed!", data: adder });
  } catch (err) {
    console.error(err);
    return res
      .status(500)
      .json({ message: "Error when adding the contact!", error: err });
  }
};

module.exports = {
  addContact,
};
