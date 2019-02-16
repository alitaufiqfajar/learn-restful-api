exports.success = function(values, res){
    var values = {
        'status' : 200,
        'values' : values
    };
    res.json(values);
    res.end
};

exports.addSuccess = function(values, res){
    var values = {
        'status' : 200,
        'message' : 'Add user success!'
    };
    res.json(values);
    res.end
};

exports.deleteSuccess = function(values, res){
    var values = {
        'status' : 200,
        'message' : 'Delete user success!'
    };
    res.json(values);
    res.end
};

exports.editSuccess = function(values, res){
    var values = {
        'status' : 200,
        'message' : 'edit user success!'
    };
    res.json(values);
    res.end
};