var mongoose = require("mongoose");
var Item = require('./models/item').Item;

mongoose.connect('mongodb://127.0.0.1/pfDB', { useNewUrlParser: true });

var db = mongoose.connection;

db.on('error', console.error.bind(console, 'MongoDB connection error:'));

try {

    Item.find({ "name": "Acid" }, "name price", function(err, item) {

        if(err) return err;

        if (item.length === 0) {
            console.log("No items of that name found");
        } else {

        console.log(item);
        console.log("The %s is worth %s", item[0].name, item[0].price);
        }

        db.close();
        
    });

    
} catch (error) {
    
    console.log(error);

}
