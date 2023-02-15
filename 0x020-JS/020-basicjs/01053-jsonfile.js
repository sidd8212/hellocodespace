
// java script  read ajason file and print it

function readjsonfile(filepath){
    var fs = require('fs');
    var obj = JSON.parse(fs.readFileSync(filepath, 'utf8'));
    console.log(obj);
    return obj;
}

var obj = readjsonfile('000-resources/datafiles/jsonfile.json');
console.log(obj.name);
console.log(obj.age);
