"""
# UI creation entrypoint
This is where the Userinterface creation will begin
"""
module InitWindow

using Gtk4

function create()
    win = GtkWindow("Hello World?", 400, 200)

    b = GtkButton("Click Me?")
    push!(win, b)

    show(win)
    end
end
