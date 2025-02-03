"""
# KeyHandler
## Brief Description
This Module is used for the setup and creation of keypress event handling
## List of Funcitons
- AddKeys
  -
"""
module KeyHandler

@enum EditorState begin
    Normal
    Insert
    Visual
end

using Gtk4

function addKeys(win::GtkWindow, eventControllerKey::GtkEventControllerKey)

    # CTRL-w -> Exit
    signal_connect(eventControllerKey) do controller, keyval, keycode, state
        mask = Gtk4.ModifierType_CONTROL_MASK
        if ((ModifierType(state & Gtk4.MODIFIER_MASK) & mask == mask) && keyval == UInt('w'))
            close(widget(eventControllerKey))
        end
    end

end # function AddKeys


end # module KeyHandler
