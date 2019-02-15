exports.getAllUsers = "SELECT * FROM person";
exports.getUser = "SELECT * FROM `person` WHERE id = ?";
exports.addUser = "INSERT INTO `person`(first_name, last_name) VALUES (?)";
exports.deleteUser = "DELETE FROM `person` WHERE id=?";