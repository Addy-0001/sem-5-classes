const fs = require('fs/promises') 

const writeToFile = async () => {
    await fs.writeFile('notes.txt', "Hello World"); 
    console.log("Done")
}

writeToFile(); 