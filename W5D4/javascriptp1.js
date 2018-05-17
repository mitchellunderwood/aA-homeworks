function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}


function madLib(verb, adj, noun) {
  return 'We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.'

}

function isString(searchString, subString) {
  return seachString.include(subString)

}

function fizzbuzz(array) {
  ans = [];

  for (i=0, i<array.length, i++) {
    if (array[i]%3 === 0) {
      ans << array[i]
    }
    if (array[i]%5 === 0) {
      ans << array[i]
    }
  }
  return ans;
}

function isPrime(num) {
  nums = (0..num)
  nums.forEach(el {
    if (num%el===0)
    return true
  })


}
