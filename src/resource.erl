%%% @author Tony Rogvall <tony@rogvall.se>
%%% @copyright (C) 2012, Tony Rogvall
%%% @doc
%%%    Resource event
%%% @end
%%% Created :  2 Jan 2012 by Tony Rogvall <tony@rogvall.se>

-module(resource).

-export([notify_when_destroyed/2]).
-on_load(init/0).

init() ->
    Nif = filename:join(code:priv_dir(resource), "resource_nif"),
    erlang:load_nif(Nif, 0).


notify_when_destroyed(_Pid,_Message) ->
    erlang:error(nif_not_loaded).

    
