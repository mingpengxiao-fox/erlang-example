-module(demo).
-export([clear_status/1]).
-include("./records.hrl").

clear_status(#todo{status=S,who=W}=R) ->
	R#todo{status=finished}.
do_something(X) when is_record(X,todo) ->
	X#todo.who.
