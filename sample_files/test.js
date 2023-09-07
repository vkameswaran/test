
// javascript

class Testing {
  constructor() {
    this.name = 'Joe';
  }

  greet() {
    console.log(`Hello ${this.name}`);
  }
}

const test = new Testing();
test.greet();

// classes, functions, enums, interfaces, methods, structs

function greet(name) {
  console.log(`Hello ${name}`);
}

greet('Joe');

// functions, methods

const greet = (name) => {
  console.log(`Hello ${name}`);
}

greet('Joe');
