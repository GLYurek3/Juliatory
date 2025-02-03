"""
# UI creation entrypoint
This is where the Userinterface creation will begin
"""
module InitWindow

using Gtk4

include("../KeyEvents/KeyHandler.jl")

win = GtkWindow("Juliatory Proof Of Concept", 400, 200)
function create()
    eventControllerKey = GtkEventControllerKey(win)
    KeyHandler.addKeys(win, eventControllerKey)
    layoutBox = GtkBox(:v)
    push!(win, LayoutBox)
    textView = GtkTextView()
    push!(LayoutBox, TextView)


    show(win)
end # function Create

end # module InitWindow
