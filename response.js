exports.success = function(values, res){
    var data = {
        'status' : 200,
        'values' : values
    };
    res.json(data);
    res.end
};

exports.addSuccess = function(values, res){
    var data = {
        'status' : 200,
        'message' : 'Add user success!'
    };
    res.json(data);
    res.end
};

exports.deleteSuccess = function(values, res){
    var data = {
        'status' : 200,
        'message' : 'Delete user success!'
    };
    res.json(data);
    res.end
};