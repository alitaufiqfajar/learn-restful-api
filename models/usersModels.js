exports.getAllUsers = "SELECT * FROM person";
exports.getUser = "SELECT * FROM `person` WHERE id = ?";
exports.addUser = "INSERT INTO `person`(first_name, last_name, phone, email, address) VALUES (?)";
exports.deleteUser = "DELETE FROM `person` WHERE id=?";
exports.editUser = "UPDATE `person` SET `first_name`=?,`last_name`=?,`phone`=?,`email`=?,`address`=? WHERE id=?";