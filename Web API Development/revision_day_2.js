var data = 1;
console.log(1 == "1"); // checks data but not data type
console.log(1 === "1"); // checks data as well as data type

// class and object
class Student {
    #name;

    constructor(name) {
        this.name = name;
    }

    sayName() {
        return `Hello ${this.name}`;
    }
}


var student = new Student("Adamya")
console.log(student.sayName())
console.log(student.name)


// Promise / Future (async await)
// Sync 
// Async

const getData = () => {
    return new Promise(
        (resolve, reject) => {
            if (1 == 1) {
                // add a delay simulating time consuming logic. 
                setTimeout(() => {
                    resolve("data loaded");
                }, 2000);
            } else {
                reject("data loading failed");
            }
        }
    )
}


// resolve is success, reject is error

const showData = async () => {
    const response = await getData().then(
        (response) => {
            console.log(response);
        }
    ).catch(
        (err) => {
            console.log(err);
            console.log("Error loaded")
        }
    );
    console.log("finished");
}

showData(); 