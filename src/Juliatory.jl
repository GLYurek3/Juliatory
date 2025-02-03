"""
## Welcome to Hell
So far I really have no clue what I am doing.
My *VERY* overzealous goal is to eventually make a fully functioning Julia IDE
that looks something like matlab but only better
"""
module Juliatory
include("./Interface/InitWindow.jl")
"""
This is the entrypoint for the program
"""
function run()
InitWindow.create()
end

end # module Juliatory
