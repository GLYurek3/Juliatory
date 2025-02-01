using Gtk4
win = GtkWindow("Hello World?", 400, 200)

b = GtkButton("Click Me?")
push!(win,b)

show(win)
