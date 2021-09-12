function isPrimeNumber(num) {
  if (Number.isInteger(num)) {
    let arr = [];
    arr.push(num);
    isPrimeInArray(arr);
  } else if (Array.isArray(num)){
    isPrimeInArray(num);
  } else {
    console.log('Введено неверное значение');
  }
}

function isPrimeInArray(arr) {
  for (let i = 0; i < arr.length; i++) {
    if (Number.isInteger(arr[i])) {
      let flag = true;
      if (arr[i] < 2) {
        flag = false;
      }
      for (let j = 2; j < arr[i]; j++) {
        if (arr[i] % j == 0) {
          flag = false;
          break;
        }
      }
      if (flag) {
        console.log('%d is prime number', arr[i]);
      } else {
        console.log('%d is not prime number', arr[i]);
      }
    } else {
      console.log('Введено неверное значение'); 
    }
  }
}