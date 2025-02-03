"""
This file is for key press event handling, this is heavily intertwined with the
interface since key event handeling should mostly be handled by Gtk4.jl
"""
@enum EditorState begin
	Normal
    Insert
    Visual
end
module KeyHandler
using Gtk4
function addKeys(win::GtkWindow, EventControllerKey::GtkEventControllerKey)

   signal_connect(EventControllerKey) do controller, keyval, keycode, state
      mask = Gtk4.ModifierType_CONTROL_MASK
       if((ModifierType(state & Gtk4.MODIFIER_MASK) & mask == mask) && keyval == UInt('w'))
           close(widget(EventControllerKey))
       end
   end


end
end
