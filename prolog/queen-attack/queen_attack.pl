create((R, C)) :-
  R > 0,
  R < 8,
  C > 0,
  C < 8.

attack((R, _), (R, _)) :- !.
attack((_, C), (_, C)) :- !.
attack((R1, C1), (R2, C2)) :-
  abs(R1 - R2) =:= abs(C1 - C2).
