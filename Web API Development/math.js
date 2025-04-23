const add = (num1, num2) => {
    return num1 + num2;
}

const sub = (num1, num2) => {
    return num1 - num2
}
// 2 ways to export any function. 
// export all in the end
module.exports = {
    add,
    sub
}
// Or export at function level
module.exports.multiply = (num1, num2) => {
    return num1 * num2;
}