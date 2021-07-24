(* type which defines red or white *)
type team_t = Red | White

(* Purpose : To return string when received team name *)
(* team_string : team_t -> string *)
let team_string team = match team with
  Red -> "赤組"
  | White -> "白組"