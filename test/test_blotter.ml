open Blotterml

let case1 () =
  Alcotest.(check int) "case 1" 1 1

let test_side_sign () =
  Alcotest.(check int) "Buy sign is 1" 1 (Blotter.sign Buy);
  Alcotest.(check int) "Sell sign is -1" (-1) (Blotter.sign Sell);
  Alcotest.(check int) "Add" 5 (Blotterml.Blotter.add 2 3)

let foo = [("Foo", `Quick, case1)]
let bar = [("Bar", `Quick, test_side_sign)]

let () =
  Alcotest.run "Sample tests" 
    [("Foo cases", foo); ("Bar cases", bar)]