"""
# UI creation entrypoint
This is where the Userinterface creation will begin
"""
module InitWindow

using Gtk4

include("../KeyEvents/KeyHandler.jl")


function create()
    win = GtkWindow("Juliatory Proof Of Concept", 400, 200)
    eventControllerKey = GtkEventControllerKey(win)
    KeyHandler.addKeys(win, eventControllerKey)
    layoutBox = GtkBox(:v)
    push!(win, layoutBox)
    textView = GtkTextView()
    push!(layoutBox, textView)

    show(win)
end # function Create

end # module InitWindow
