"""
# KeyHandler
"""
module KeyHandler


using Gtk4

@enum EditorState begin
    Normal
    Insert
    Visual
end

function addKeys(win::GtkWindow, eventControllerKey::GtkEventControllerKey)

signal_connect(eventControllerKey, "key-pressed") do controller, keyval, keycode, state
    mask = Gtk4.ModifierType_CONTROL_MASK
    if ((ModifierType(state & Gtk4.MODIFIER_MASK) & mask == mask) && keyval == UInt('w'))
        close(widget(eventControllerKey))
    end
end
end # function AddKeys

end # module KeyHandler
