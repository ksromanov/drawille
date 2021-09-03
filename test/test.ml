open OUnit2

let create_canvas_test _ =
    let size_x, size_y = 8, 9 in
    let canvas = Drawille.create size_x size_y in
    assert_equal (Hashtbl.length canvas.data) 0

let from_list_canvas_test _ =
    let lst = [(0,0); (1,2); (1,1); (2,4); (1,0); (2,0)] in
    let canvas = Drawille.fromList lst in
    assert_equal (Hashtbl.length canvas.data) (List.length lst)

let () =
  let suite =
    "tests"
    >::: [ "Canvas creation" >:: create_canvas_test
         ; "Canvas creation from list" >:: from_list_canvas_test
         ]
  in
run_test_tt_main suite
