#!/usr/bin/env ocaml
#use "topfind";;
#require "topkg"
open Topkg

let () =
  Pkg.describe ?change_logs:(Some []) "mr-btree" @@ fun c ->
  Ok [ Pkg.mllib "src/mr-btree.mllib";
  Pkg.test "src/btree_bytes_test"; ]

