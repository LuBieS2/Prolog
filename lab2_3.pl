%safe
safe(state(F,W,G,C)) :- G==F.
safe(state(F,W,G,C)) :- G\=W, G\=C.


%wolf
move(state(east,east,G,C),farmer_and_wolf_west,state(west,west,G,C)) :- safe(state(west,west,G,C)).
move(state(west,west,G,C),farmer_and_wolf_east,state(east,east,G,C)) :- safe(state(east,east,G,C)).

%goat
move(state(east,W,east,C),farmer_and_goat_west,state(west,W,west,C)) :- safe(state(west,W,west,C)).
move(state(west,W,west,C),farmer_and_goat_east,state(east,W,east,C)) :- safe(state(east,W,east,C)).

%cabbage
move(state(east,W,G,east),farmer_and_cabbage_west,state(west,W,G,west)) :- safe(state(west,W,G,west)).
move(state(west,W,G,west),farmer_and_cabbage_east,state(east,W,G,east)) :- safe(state(east,W,G,east)).

%alone
move(state(east,W,G,C),farmer_west_alone,state(west,W,G,C)) :- safe(state(west,W,G,C)).
move(state(west,W,G,C),farmer_east_alone,state(east,W,G,C)) :- safe(state(east,W,G,C)).

can_get(state(east,east,east,east)).
can_get(StateBefore) :- move(StateBefore,Move,StateAfter), can_get(StateAfter).

