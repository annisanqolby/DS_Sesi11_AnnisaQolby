const car = {
    brand: 'toyota',
    year: 2020,
    price: 300000
}

function discount(car){
    const sale = car.price * 0.1
    return car.price - sale
}

console.log(discount(car))