const mongoose = require('mongoose');

const Schema = mongoose.Schema;
 
const ItemSchema = new Schema({
  slot: String,
  name: String,
  weight: String,
  cl: String,
  url: String,
  type: String,
  price: String,
  misc: {
      Construction: {
          Cost: String,
          Requirements: String
      }
  },
  source: String,
  aura: String,
  subtype: String,
  sections: [
      {
          body: String,
          source: String,
          type: String,
          name: String
      }
  ]
});

var Item = mongoose.model('Item', ItemSchema);

module.exports = {
    Item: Item
  }

