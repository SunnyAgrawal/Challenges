function returnValue (object, key) {
    let obj = object;
    // Split the key
    const keys = key.split("/") 
    for(let i =0; i < keys.length ; i++) {
      obj = obj[keys[i]]
    }
    return obj;
  }
  
  module.exports = returnValue;
  