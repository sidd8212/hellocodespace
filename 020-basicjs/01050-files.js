// read a file and print it to the console
fs.readFile('file.txt', 'utf8', function(err, data) {
    if (err) {
        return console.log(err);
    }
    console.log(data);
});
//  write a file
fs.writeFile('file.txt', 'Hello Node', function(err) {
    if (err) {
        return console.log(err);
    }
    console.log('The file was saved!');
});
//  append to a file
fs.appendFile('file.txt', 'Hello Node', function(err) {
    if (err) {
        return console.log(err);
    }
    console.log('The file was saved!');
});
//  delete a file
fs.unlink('file.txt', function(err) {
    if (err) {
        return console.log(err);
    }
    console.log('The file was deleted!');
});   // end unlink
