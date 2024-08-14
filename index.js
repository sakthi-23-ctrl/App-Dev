// function fizzBuzz() {
//     for(let i = 1; i<100; i++) {
//         if (i%3 === 0)
//             console.log("Fizz")
//         else if (i%5 === 0)
//             console.log("Buzz")
//         else if ((i%3 === 0) && (i%5 === 0))
//             console.log("FizzBuzz")
//         else
//             console.log(i)
//     }
// }

// fizzBuzz();

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

function filterEvenNumber(arr) {
    let newArr = []
    for(let i = 0;i<arr.length;i++) {
        if (arr[i]%2 === 0)
            newArr.push(arr[i]);
    }
    console.log(newArr) ;
}
filterEvenNumber(array);