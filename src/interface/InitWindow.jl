"""
# UI creation entrypoint
This is where the Userinterface creation will begin
"""
module InitWindow'

using Gtk4

include("../KeyEvents/KeyHandler.jl")

function create()
    win = GtkWindow("Juliatory Proof Of Concept", 400, 200)
    EventControllerKey = GtkEventControllerKey(win)
    KeyHandler.addKeys(win, EventControllerKey)
    LayoutBox = GtkBox(:v)
    push!(win, LayoutBox)
    TextView = GtkTextView()
    push!(LayoutBox, TextView)


    show(win)
end

end
