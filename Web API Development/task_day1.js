////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TASK 1 ////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


const fruit = ['apple', 'orange', 'grape', 'pineapple']
fruit.pop()
fruit.push('watermelon')

const drinks = ['coke', 'fanta', 'sprite']
drinks.pop()
drinks.push('redbull')

for (let i = 0; i < fruit.length; i++) {
    console.log(fruit[i])
}

for (eachDrink in drinks) {
    console.log(drinks[eachDrink])
}

var spread = [...fruit, ...drinks]


console.log(fruit)

console.log(spread)
// console.log(drinks)


///////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TASK 2 ////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// task callback 
// make a function that takes name as args adn callback cb as argument. 
//  make a new variable called greet with hello _ name
//  return the callback function with greeting. 
//  call the function with your name and an arrow function. 
//  print the result. 

function greet(name, cb) {
    const greeting = `hello ${name}`
    return cb(greeting)
}

const result = greet('Abc', (greeting) => {
    return greeting
}
)

console.log(result) // hello Abc

///////////////////////////////////////////////////////////////////////////////
//////////////////////////////////// TASK 3 ////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// create 3 objects. 
// stu1, stu2, stu3
//  with attribute, name, email, phone, and address 
//  create a new variable students 
//  and put stu1, stu2, and stu3 in an array. 

stu1 = {
    name: "abc",
    email: "abc@cef.com",
    phone: 12345678890,
    address: "Dillibazar",
}

stu2 = {
    name: 'def',
    email: 'def@ghi.com',
    phone: 1234567889,
    address: 'Mairighar',
}

stu3 = {
    name: 'ghi',
    email: 'ghi@jkl.com',
    phone: 123342232,
    address: 'Bhaktapur'
}

const students = [
    stu1, stu2, stu3
]