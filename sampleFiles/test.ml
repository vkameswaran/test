(* Variables *)
let x: int = 10
let y: string = "Hello, World!"

(* Functions *)
let greet name =
  Printf.printf "Hello, %s!\n" name

(* Recursive Functions *)
let rec factorial n =
  if n <= 1 then 1
  else n * factorial (n - 1)

(* Algebraic Data Types *)
type shape =
  | Circle of float
  | Rectangle of float * float

let area shape =
  match shape with
  | Circle radius -> 3.14159 *. radius *. radius
  | Rectangle (width, height) -> width *. height

(* Lists *)
let numbers = [1; 2; 3; 4; 5]
let doubled_numbers = List.map (fun x -> x * 2) numbers

(* Higher-Order Functions *)
let apply_twice f x =
  f (f x)

let square x =
  x * x

let quad = apply_twice square

let rec y f x =
  f (y f) x (* Y combinator *)

(* Modules *)
module MathUtils = struct
  let sum_of_squares x y =
    x * x + y * y
end

(* Main Function *)
let () =
  greet "Alice";
  Printf.printf "Factorial of 5: %d\n" (factorial 5);
  let circle = Circle 3.0 in
  Printf.printf "Area of circle: %.2f\n" (area circle);
  List.iter (Printf.printf "%d\n") doubled_numbers;
  Printf.printf "Quad of 3: %d\n" (quad 3);
  Printf.printf "Sum of squares of 3 and 4: %d\n" (MathUtils.sum_of_squares 3 4)
  