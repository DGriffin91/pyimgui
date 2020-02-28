cdef extern from "imgui.h":
    ctypedef enum ImGuiKey_:
        ImGuiKey_Tab         # for tabbing through fields
        ImGuiKey_LeftArrow   # for text edit
        ImGuiKey_RightArrow  # for text edit
        ImGuiKey_UpArrow     # for text edit
        ImGuiKey_DownArrow   # for text edit
        ImGuiKey_PageUp
        ImGuiKey_PageDown
        ImGuiKey_Home
        ImGuiKey_End
        ImGuiKey_Insert      # for text edit
        ImGuiKey_Delete      # for text edit
        ImGuiKey_Backspace   # for text edit
        ImGuiKey_Space       # for text edit
        ImGuiKey_Enter       # for text edit
        ImGuiKey_Escape      # for text edit
        ImGuiKey_A           # for text edit CTRL+A: select all
        ImGuiKey_C           # for text edit CTRL+C: copy
        ImGuiKey_V           # for text edit CTRL+V: paste
        ImGuiKey_X           # for text edit CTRL+X: cut
        ImGuiKey_Y           # for text edit CTRL+Y: redo
        ImGuiKey_Z           # for text edit CTRL+Z: undo
        ImGuiKey_COUNT


    ctypedef enum ImGuiNavInput_:
        ImGuiNavInput_Activate
        ImGuiNavInput_Cancel
        ImGuiNavInput_Input
        ImGuiNavInput_Menu
        ImGuiNavInput_DpadLeft
        ImGuiNavInput_DpadRight
        ImGuiNavInput_DpadUp
        ImGuiNavInput_DpadDown
        ImGuiNavInput_LStickLeft
        ImGuiNavInput_LStickRight
        ImGuiNavInput_LStickUp
        ImGuiNavInput_LStickDown
        ImGuiNavInput_FocusPrev
        ImGuiNavInput_FocusNext
        ImGuiNavInput_TweakSlow
        ImGuiNavInput_TweakFast


    ctypedef enum ImGuiConfigFlags_:
        ImGuiConfigFlags_NavEnableKeyboard
        ImGuiConfigFlags_NavEnableGamepad
        ImGuiConfigFlags_NavEnableSetMousePos
        ImGuiConfigFlags_NavNoCaptureKeyboard
        ImGuiConfigFlags_NoMouse
        ImGuiConfigFlags_NoMouseCursorChange

        # User storage (to allow your back-end/engine to communicate to code that may be sh
        ImGuiConfigFlags_IsSRGB
        ImGuiConfigFlags_IsTouchScreen


    ctypedef enum ImGuiBackendFlags_:
        ImGuiBackendFlags_HasGamepad
        ImGuiBackendFlags_HasMouseCursors
        ImGuiBackendFlags_HasSetMousePos



    ctypedef enum ImGuiCol_:
        ImGuiCol_Text
        ImGuiCol_TextDisabled
        ImGuiCol_WindowBg              # Background of normal windows
        ImGuiCol_ChildBg               # Background of child windows
        ImGuiCol_PopupBg               # Background of popups, menus, tooltips windows
        ImGuiCol_Border
        ImGuiCol_BorderShadow
        ImGuiCol_FrameBg               # Background of checkbox, radio button, plot, slider, text input
        ImGuiCol_FrameBgHovered
        ImGuiCol_FrameBgActive
        ImGuiCol_TitleBg
        ImGuiCol_TitleBgActive
        ImGuiCol_TitleBgCollapsed
        ImGuiCol_MenuBarBg
        ImGuiCol_ScrollbarBg
        ImGuiCol_ScrollbarGrab
        ImGuiCol_ScrollbarGrabHovered
        ImGuiCol_ScrollbarGrabActive
        ImGuiCol_CheckMark
        ImGuiCol_SliderGrab
        ImGuiCol_SliderGrabActive
        ImGuiCol_Button
        ImGuiCol_ButtonHovered
        ImGuiCol_ButtonActive
        ImGuiCol_Header
        ImGuiCol_HeaderHovered
        ImGuiCol_HeaderActive
        ImGuiCol_Separator
        ImGuiCol_SeparatorHovered
        ImGuiCol_SeparatorActive
        ImGuiCol_ResizeGrip
        ImGuiCol_ResizeGripHovered
        ImGuiCol_ResizeGripActive
        ImGuiCol_PlotLines
        ImGuiCol_PlotLinesHovered
        ImGuiCol_PlotHistogram
        ImGuiCol_PlotHistogramHovered
        ImGuiCol_TextSelectedBg
        ImGuiCol_DragDropTarget
        ImGuiCol_NavHighlight,          # Gamepad/keyboard: current highlighted item
        ImGuiCol_NavWindowingHighlight, # Highlight window when using CTRL+TAB
        ImGuiCol_NavWindowingDimBg,     # Darken/colorize entire screen behind the CTRL+TAB window list, when active
        ImGuiCol_ModalWindowDimBg,      # Darken/colorize entire screen behind a modal window, when one is active
        ImGuiCol_COUNT

    ctypedef enum ImGuiDataType_:
        ImGuiDataType_S32       # int
        ImGuiDataType_U32       # unsigned int
        ImGuiDataType_S64       # long long, __int64
        ImGuiDataType_U64       # unsigned long long, unsigned __int64
        ImGuiDataType_Float     # float
        ImGuiDataType_Double    # double
        ImGuiDataType_COUNT

    ctypedef enum ImGuiStyleVar_:
        ImGuiStyleVar_Alpha                  # float
        ImGuiStyleVar_WindowPadding          # ImVec2
        ImGuiStyleVar_WindowRounding         # float
        ImGuiStyleVar_WindowBorderSize       # float 
        ImGuiStyleVar_WindowMinSize          # ImVec2
        ImGuiStyleVar_WindowTitleAlign       # ImVec2
        ImGuiStyleVar_ChildRounding          # float 
        ImGuiStyleVar_ChildBorderSize        # float 
        ImGuiStyleVar_PopupRounding          # float
        ImGuiStyleVar_PopupBorderSize        # float
        ImGuiStyleVar_FramePadding           # ImVec2
        ImGuiStyleVar_FrameRounding          # float
        ImGuiStyleVar_FrameBorderSize        # float
        ImGuiStyleVar_ItemSpacing            # ImVec2
        ImGuiStyleVar_ItemInnerSpacing       # ImVec2
        ImGuiStyleVar_IndentSpacing          # float
        ImGuiStyleVar_ScrollbarSize          # float
        ImGuiStyleVar_ScrollbarRounding      # float
        ImGuiStyleVar_GrabMinSize            # float
        ImGuiStyleVar_GrabRounding           # float
        ImGuiStyleVar_ButtonTextAlign        # flags ImGuiAlign_*
        ImGuiStyleVar_Count_

    ctypedef enum ImGuiAlign_:
        ImGuiAlign_Left
        ImGuiAlign_Center
        ImGuiAlign_Right
        ImGuiAlign_Top
        ImGuiAlign_VCenter
        ImGuiAlign_Default

    ctypedef enum ImGuiCond_:
        ImGuiCond_Always               # Set the variable
        ImGuiCond_Once                 # Only set the variable on the first call per runtime session
        ImGuiCond_FirstUseEver         # Only set the variable if the window doesn't exist in the .ini file
        ImGuiCond_Appearing            # Only set the variable if the window is appearing after being inactive (or the first time)

    ctypedef enum ImGuiWindowFlags_:
        ImGuiWindowFlags_NoTitleBar                 # Disable title-bar
        ImGuiWindowFlags_NoResize                   # Disable user resizing with the lower-right grip
        ImGuiWindowFlags_NoMove                     # Disable user moving the window
        ImGuiWindowFlags_NoScrollbar                # Disable scrollbars (window can still scroll with mouse or programatically)
        ImGuiWindowFlags_NoScrollWithMouse          # Disable user vertically scrolling with mouse wheel
        ImGuiWindowFlags_NoCollapse                 # Disable user collapsing window by double-clicking on it
        ImGuiWindowFlags_AlwaysAutoResize           # Resize every window to its content every frame
        ImGuiWindowFlags_NoSavedSettings            # Never load/save settings in .ini file
        ImGuiWindowFlags_NoInputs                   # Disable catching mouse or keyboard inputs
        ImGuiWindowFlags_MenuBar                    # Has a menu-bar
        ImGuiWindowFlags_HorizontalScrollbar        # Allow horizontal scrollbar to appear (off by default). You may use SetNextWindowContentSize(ImVec2(width,0.0f)); prior to calling Begin() to specify width. Read code in imgui_demo in the "Horizontal Scrolling" section.
        ImGuiWindowFlags_NoFocusOnAppearing         # Disable taking focus when transitioning from hidden to visible state
        ImGuiWindowFlags_NoBringToFrontOnFocus      # Disable bringing window to front when taking focus (e.g. clicking on it or programatically giving it focus)
        ImGuiWindowFlags_AlwaysVerticalScrollbar    # Always show vertical scrollbar (even if ContentSize.y < Size.y)
        ImGuiWindowFlags_AlwaysHorizontalScrollbar  # Always show horizontal scrollbar (even if ContentSize.x < Size.x)
        ImGuiWindowFlags_AlwaysUseWindowPadding     # Ensure child windows without border uses style.WindowPadding (ignored by default for non-bordered child windows, because more convenient)
        ImGuiWindowFlags_NoNavInputs                # No gamepad/keyboard navigation within the window
        ImGuiWindowFlags_NoNavFocus                 # No focusing toward this window with gamepad/keyboard navigation (e.g. skipped by CTRL+TAB)
        ImGuiWindowFlags_NoNav = ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus 

    ctypedef enum ImGuiColorEditFlags_:
        ImGuiColorEditFlags_NoAlpha
        ImGuiColorEditFlags_NoPicker               # ColorEdit: disable picker when clicking on colored square.
        ImGuiColorEditFlags_NoOptions              # ColorEdit: disable toggling options menu when right-clicking on inputs/small preview.
        ImGuiColorEditFlags_NoSmallPreview         # ColorEdit, ColorPicker: disable colored square preview next to the inputs. (e.g. to show only the inputs)
        ImGuiColorEditFlags_NoInputs               # ColorEdit, ColorPicker: disable inputs sliders/text widgets (e.g. to show only the small preview colored square).
        ImGuiColorEditFlags_NoTooltip              # ColorEdit, ColorPicker, ColorButton: disable tooltip when hovering the preview.
        ImGuiColorEditFlags_NoLabel                # ColorEdit, ColorPicker: disable display of inline text label (the label is still forwarded to the tooltip and picker).
        ImGuiColorEditFlags_NoSidePreview          # ColorPicker: disable bigger color preview on right side of the picker, use small colored square preview instead.
        # User Options (right-click on widget to change some of them). You can set application defaults using SetColorEditOptions(). The idea is that you probably don't want to override them in most of your calls, let the user choose and/or call SetColorEditOptions() during startup.
        ImGuiColorEditFlags_AlphaBar               # ColorEdit, ColorPicker: show vertical alpha bar/gradient in picker.
        ImGuiColorEditFlags_AlphaPreview           # ColorEdit, ColorPicker, ColorButton: display preview as a transparent color over a checkerboard, instead of opaque.
        ImGuiColorEditFlags_AlphaPreviewHalf       # ColorEdit, ColorPicker, ColorButton: display half opaque / half checkerboard, instead of opaque.
        ImGuiColorEditFlags_HDR                    # (WIP) ColorEdit: Currently only disable 0.0f..1.0f limits in RGBA edition (note: you probably want to use ImGuiColorEditFlags_Float flag as well).
        ImGuiColorEditFlags_RGB                    # ColorEdit: choose one among RGB/HSV/HEX. ColorPicker: choose any combination using RGB/HSV/HEX.
        ImGuiColorEditFlags_HSV                    # "
        ImGuiColorEditFlags_HEX                    # "
        ImGuiColorEditFlags_Uint8                  # ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0..255.
        ImGuiColorEditFlags_Float                  # ColorEdit, ColorPicker, ColorButton: _display_ values formatted as 0.0f..1.0f floats instead of 0..255 integers. No round-trip of value via integers.
        ImGuiColorEditFlags_PickerHueBar           # ColorPicker: bar for Hue, rectangle for Sat/Value.
        ImGuiColorEditFlags_PickerHueWheel         # ColorPicker: wheel for Hue, triangle for Sat/Value.
        # Internals/Masks
        ImGuiColorEditFlags__InputsMask     = ImGuiColorEditFlags_RGB|ImGuiColorEditFlags_HSV|ImGuiColorEditFlags_HEX
        ImGuiColorEditFlags__DataTypeMask   = ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_Float
        ImGuiColorEditFlags__PickerMask     = ImGuiColorEditFlags_PickerHueWheel|ImGuiColorEditFlags_PickerHueBar
        ImGuiColorEditFlags__OptionsDefault



    ctypedef enum ImGuiTreeNodeFlags_:
        ImGuiTreeNodeFlags_None                 = 0
        ImGuiTreeNodeFlags_Selected             = 1 << 0   # Draw as selected
        ImGuiTreeNodeFlags_Framed               = 1 << 1   # Full colored frame (e.g. for CollapsingHeader)
        ImGuiTreeNodeFlags_AllowItemOverlap     = 1 << 2   # Hit testing to allow subsequent widgets to overlap this one
        ImGuiTreeNodeFlags_NoTreePushOnOpen     = 1 << 3   # Don't do a TreePush() when open (e.g. for CollapsingHeader) = no extra indent nor pushing on ID stack
        ImGuiTreeNodeFlags_NoAutoOpenOnLog      = 1 << 4   # Don't automatically and temporarily open node when Logging is active (by default logging will automatically open tree nodes)
        ImGuiTreeNodeFlags_DefaultOpen          = 1 << 5   # Default node to be open
        ImGuiTreeNodeFlags_OpenOnDoubleClick    = 1 << 6   # Need double-click to open node
        ImGuiTreeNodeFlags_OpenOnArrow          = 1 << 7   # Only open when clicking on the arrow part. If ImGuiTreeNodeFlags_OpenOnDoubleClick is also set, single-click arrow or double-click all box to open.
        ImGuiTreeNodeFlags_Leaf                 = 1 << 8   # No collapsing, no arrow (use as a convenience for leaf nodes).
        ImGuiTreeNodeFlags_Bullet               = 1 << 9   # Display a bullet instead of arrow
        ImGuiTreeNodeFlags_FramePadding         = 1 << 10  # Use FramePadding (even for an unframed text node) to vertically align text baseline to regular widget height. Equivalent to calling AlignTextToFramePadding().
        ImGuiTreeNodeFlags_SpanAvailWidth       = 1 << 11  # Extend hit box to the right-most edge, even if not framed. This is not the default in order to allow adding other items on the same line. In the future we may refactor the hit system to be front-to-back, allowing natural overlaps and then this can become the default.
        ImGuiTreeNodeFlags_SpanFullWidth        = 1 << 12  # Extend hit box to the left-most and right-most edges (bypass the indented area).
        ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 1 << 13  # (WIP) Nav: left direction may move to this TreeNode() from any of its child (items submitted between TreeNode and TreePop)
        #ImGuiTreeNodeFlags_NoScrollOnOpen      = 1 << 14  # FIXME: TODO: Disable automatic scroll on TreePop() if node got just open and contents is not visible
        ImGuiTreeNodeFlags_CollapsingHeader     = ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoTreePushOnOpen | ImGuiTreeNodeFlags_NoAutoOpenOnLog


    ctypedef enum ImGuiSelectableFlags_:
        ImGuiSelectableFlags_DontClosePopups    # Clicking this don't close parent popup window
        ImGuiSelectableFlags_SpanAllColumns     # Selectable frame can span all columns (text will still fit in current column)
        ImGuiSelectableFlags_AllowDoubleClick   # Generate press events on double clicks too
        ImGuiSelectableFlags_Disabled = 8
        ImGuiSelectableFlags_AllowItemOverlap = 16

    ctypedef enum ImGuiComboFlags_:
        ImGuiComboFlags_PopupAlignLeft          # Align the popup toward the left by default
        ImGuiComboFlags_HeightSmall             # Max ~4 items visible. Tip: If you want your combo popup to be a specific size you can use SetNextWindowSizeConstraints() prior to calling BeginCombo()
        ImGuiComboFlags_HeightRegular           # Max ~8 items visible (default)
        ImGuiComboFlags_HeightLarge             # Max ~20 items visible
        ImGuiComboFlags_HeightLargest           # As many fitting items as possible
        ImGuiComboFlags_NoArrowButton           # Display on the preview box without the square arrow button
        ImGuiComboFlags_NoPreview               # Display only a square arrow button
        ImGuiComboFlags_HeightMask_             # ImGuiComboFlags_HeightSmall | ImGuiComboFlags_HeightRegular | ImGuiComboFlags_HeightLarge | ImGuiComboFlags_HeightLargest

    ctypedef enum ImGuiFocusedFlags_:
        ImGuiFocusedFlags_ChildWindows          # IsWindowFocused(): Return true if any children of the window is focused
        ImGuiFocusedFlags_RootWindow            # IsWindowFocused(): Test from root window (top most parent of the current hierarchy)
        ImGuiFocusedFlags_AnyWindow             # IsWindowFocused(): Return true if any window is focused
        ImGuiFocusedFlags_RootAndChildWindows   # ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows


    ctypedef enum ImGuiTableFlags_:
        # Features
        ImGuiTableFlags_None                            = 0,
        ImGuiTableFlags_Resizable                       = 1 << 0,   # Allow resizing columns.
        ImGuiTableFlags_Reorderable                     = 1 << 1,   # Allow reordering columns (need calling TableSetupColumn() + TableAutoHeaders() or TableHeaders() to display headers)
        ImGuiTableFlags_Hideable                        = 1 << 2,   # Allow hiding columns (with right-click on header) (FIXME-TABLE: allow without headers).
        ImGuiTableFlags_Sortable                        = 1 << 3,   # Allow sorting on one column (sort_specs_count will always be == 1). Call TableGetSortSpecs() to obtain sort specs.
        ImGuiTableFlags_MultiSortable                   = 1 << 4,   # Allow sorting on multiple columns by holding Shift (sort_specs_count may be > 1). Call TableGetSortSpecs() to obtain sort specs.
        ImGuiTableFlags_NoSavedSettings                 = 1 << 5,   # Disable persisting columns order, width and sort settings in the .ini file.
        # Decoration
        ImGuiTableFlags_RowBg                           = 1 << 6,   # Use ImGuiCol_TableRowBg and ImGuiCol_TableRowBgAlt colors behind each rows.
        ImGuiTableFlags_BordersHInner                   = 1 << 7,   # Draw horizontal borders between rows.
        ImGuiTableFlags_BordersHOuter                   = 1 << 8,   # Draw horizontal borders at the top and bottom.
        ImGuiTableFlags_BordersVInner                   = 1 << 9,   # Draw vertical borders between columns.
        ImGuiTableFlags_BordersVOuter                   = 1 << 10,  # Draw vertical borders on the left and right sides.
        ImGuiTableFlags_BordersH                        = ImGuiTableFlags_BordersHInner | ImGuiTableFlags_BordersHOuter, # Draw horizontal borders.
        ImGuiTableFlags_BordersV                        = ImGuiTableFlags_BordersVInner | ImGuiTableFlags_BordersVOuter, # Draw vertical borders.
        ImGuiTableFlags_BordersInner                    = ImGuiTableFlags_BordersVInner | ImGuiTableFlags_BordersHInner, # Draw inner borders.
        ImGuiTableFlags_BordersOuter                    = ImGuiTableFlags_BordersVOuter | ImGuiTableFlags_BordersHOuter, # Draw outer borders.
        ImGuiTableFlags_Borders                         = ImGuiTableFlags_BordersInner | ImGuiTableFlags_BordersOuter,   # Draw all borders.
        ImGuiTableFlags_BordersVFullHeight              = 1 << 11,  # Borders covers all rows even when Headers are being used. Allow resizing from any rows.
        # Padding, Sizing
        ImGuiTableFlags_NoClipX                         = 1 << 12,  # Disable pushing clipping rectangle for every individual columns (reduce draw command count, items will be able to overflow)
        ImGuiTableFlags_SizingPolicyFixedX              = 1 << 13,  # Default if ScrollX is on. Columns will default to use WidthFixed or WidthAlwaysAutoResize policy. Read description above for more details.
        ImGuiTableFlags_SizingPolicyStretchX            = 1 << 14,  # Default if ScrollX is off. Columns will default to use WidthStretch policy. Read description above for more details.
        ImGuiTableFlags_NoHeadersWidth                  = 1 << 15,  # Disable header width contribution to automatic width calculation.
        ImGuiTableFlags_NoHostExtendY                   = 1 << 16,  # (FIXME-TABLE: Reword as SizingPolicy?) Disable extending past the limit set by outer_size.y, only meaningful when neither of ScrollX|ScrollY are set (data below the limit will be clipped and not visible)
        ImGuiTableFlags_NoKeepColumnsVisible            = 1 << 17,  # (FIXME-TABLE) Disable code that keeps column always minimally visible when table width gets too small.
        # Scrolling
        ImGuiTableFlags_ScrollX                         = 1 << 18,  # Enable horizontal scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size. Because this create a child window, ScrollY is currently generally recommended when using ScrollX.
        ImGuiTableFlags_ScrollY                         = 1 << 19,  # Enable vertical scrolling. Require 'outer_size' parameter of BeginTable() to specify the container size.
        ImGuiTableFlags_Scroll                          = ImGuiTableFlags_ScrollX | ImGuiTableFlags_ScrollY,
        ImGuiTableFlags_ScrollFreezeTopRow              = 1 << 20,  # We can lock 1 to 3 rows (starting from the top). Use with ScrollY enabled.
        ImGuiTableFlags_ScrollFreeze2Rows               = 2 << 20,
        ImGuiTableFlags_ScrollFreeze3Rows               = 3 << 20,
        ImGuiTableFlags_ScrollFreezeLeftColumn          = 1 << 22,  # We can lock 1 to 3 columns (starting from the left). Use with ScrollX enabled.
        ImGuiTableFlags_ScrollFreeze2Columns            = 2 << 22,
        ImGuiTableFlags_ScrollFreeze3Columns            = 3 << 22,
    
        # [Internal] Combinations and masks
        ImGuiTableFlags_SizingPolicyMaskX_              = ImGuiTableFlags_SizingPolicyStretchX | ImGuiTableFlags_SizingPolicyFixedX,
        ImGuiTableFlags_ScrollFreezeRowsShift_          = 20,
        ImGuiTableFlags_ScrollFreezeColumnsShift_       = 22,
        ImGuiTableFlags_ScrollFreezeRowsMask_           = 0x03 << ImGuiTableFlags_ScrollFreezeRowsShift_,
        ImGuiTableFlags_ScrollFreezeColumnsMask_        = 0x03 << ImGuiTableFlags_ScrollFreezeColumnsShift_


    # Flags for ImGui::TableSetupColumn()
    # FIXME-TABLE: Rename to ImGuiColumns_*, stick old columns api flags in there under an obsolete api block
    ctypedef enum ImGuiTableColumnFlags_:
        ImGuiTableColumnFlags_None                      = 0,
        ImGuiTableColumnFlags_DefaultHide               = 1 << 0,   # Default as a hidden column.
        ImGuiTableColumnFlags_DefaultSort               = 1 << 1,   # Default as a sorting column.
        ImGuiTableColumnFlags_WidthFixed                = 1 << 2,   # Column will keep a fixed size, preferable with horizontal scrolling enabled (default if table sizing policy is SizingPolicyFixedX and table is resizable).
        ImGuiTableColumnFlags_WidthStretch              = 1 << 3,   # Column will stretch, preferable with horizontal scrolling disabled (default if table sizing policy is SizingPolicyStretchX).
        ImGuiTableColumnFlags_WidthAlwaysAutoResize     = 1 << 4,   # Column will keep resizing based on submitted contents (with a one frame delay) == Fixed with auto resize (default if table sizing policy is SizingPolicyFixedX and table is not resizable).
        ImGuiTableColumnFlags_NoResize                  = 1 << 5,   # Disable manual resizing.
        ImGuiTableColumnFlags_NoClipX                   = 1 << 6,   # Disable clipping for this column (all NoClipX columns will render in a same draw command).
        ImGuiTableColumnFlags_NoSort                    = 1 << 7,   # Disable ability to sort on this field (even if ImGuiTableFlags_Sortable is set on the table).
        ImGuiTableColumnFlags_NoSortAscending           = 1 << 8,   # Disable ability to sort in the ascending direction.
        ImGuiTableColumnFlags_NoSortDescending          = 1 << 9,   # Disable ability to sort in the descending direction.
        ImGuiTableColumnFlags_NoHide                    = 1 << 10,  # Disable hiding this column.
        ImGuiTableColumnFlags_NoHeaderWidth             = 1 << 11,  # Header width don't contribute to automatic column width.
        ImGuiTableColumnFlags_PreferSortAscending       = 1 << 12,  # Make the initial sort direction Ascending when first sorting on this column (default).
        ImGuiTableColumnFlags_PreferSortDescending      = 1 << 13,  # Make the initial sort direction Descending when first sorting on this column.
        ImGuiTableColumnFlags_IndentEnable              = 1 << 14,  # Use current Indent value when entering cell (default for 1st column).
        ImGuiTableColumnFlags_IndentDisable             = 1 << 15,  # Ignore current Indent value when entering cell (default for columns after the 1st one). Indentation changes _within_ the cell will still be honored.
    
        # [Internal] Combinations and masks
        ImGuiTableColumnFlags_WidthMask_                = ImGuiTableColumnFlags_WidthFixed | ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_WidthAlwaysAutoResize,
        ImGuiTableColumnFlags_IndentMask_               = ImGuiTableColumnFlags_IndentEnable | ImGuiTableColumnFlags_IndentDisable,
        ImGuiTableColumnFlags_NoDirectResize_           = 1 << 20   # [Internal] Disable user resizing this column directly (it may however we resized indirectly from its left edge)

    # Flags for ImGui::TableNextRow()
    ctypedef enum ImGuiTableRowFlags_:
        ImGuiTableRowFlags_None                         = 0,
        ImGuiTableRowFlags_Headers                      = 1 << 0    # Identify header row (set default background color + width of its contents accounted different for auto column width)


    ctypedef enum ImGuiHoveredFlags_:
        ImGuiHoveredFlags_None                          # Return true if directly over the item/window, not obstructed by another window, not obstructed by an active popup or modal blocking inputs under them.
        ImGuiHoveredFlags_ChildWindows                  # IsWindowHovered() only: Return true if any children of the window is hovered
        ImGuiHoveredFlags_RootWindow                    # IsWindowHovered() only: Test from root window (top most parent of the current hierarchy)
        ImGuiHoveredFlags_AnyWindow
        ImGuiHoveredFlags_AllowWhenBlockedByPopup       # Return true even if a popup window is normally blocking access to this item/window
        #ImGuiHoveredFlags_AllowWhenBlockedByModal      # Return true even if a modal popup window is normally blocking access to this item/window. FIXME-TODO: Unavailable yet.
        ImGuiHoveredFlags_AllowWhenBlockedByActiveItem  # Return true even if an active item is blocking access to this item/window. Useful for Drag and Drop patterns.
        ImGuiHoveredFlags_AllowWhenOverlapped           # Return true even if the position is overlapped by another window
        ImGuiHoveredFlags_RectOnly                      # ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped,
        ImGuiHoveredFlags_RootAndChildWindows           # ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows

    ctypedef enum ImGuiDragDropFlags_:
        ImGuiDragDropFlags_SourceNoPreviewTooltip       # By default, a successful call to BeginDragDropSource opens a tooltip so you can display a preview or description of the source contents. This flag disable this behavior.
        ImGuiDragDropFlags_SourceNoDisableHover         # By default, when dragging we clear data so that IsItemHovered() will return true, to avoid subsequent user code submitting tooltips. This flag disable this behavior so you can still call IsItemHovered() on the source item.
        ImGuiDragDropFlags_SourceNoHoldToOpenOthers     # Disable the behavior that allows to open tree nodes and collapsing header by holding over them while dragging a source item.
        ImGuiDragDropFlags_SourceAllowNullID            # Allow items such as Text(), Image() that have no unique identifier to be used as drag source, by manufacturing a temporary identifier based on their window-relative position. This is extremely unusual within the dear imgui ecosystem and so we made it explicit.
        ImGuiDragDropFlags_SourceExtern                 # External source (from outside of imgui), won't attempt to read current item/window info. Will always return true. Only one Extern source can be active simultaneously.
        ImGuiDragDropFlags_SourceAutoExpirePayload      # Automatically expire the payload if the source cease to be submitted (otherwise payloads are persisting while being dragged)
        # AcceptDragDropPayload() flags
        ImGuiDragDropFlags_AcceptBeforeDelivery         # AcceptDragDropPayload() will returns true even before the mouse button is released. You can then call IsDelivery() to test if the payload needs to be delivered.
        ImGuiDragDropFlags_AcceptNoDrawDefaultRect      # Do not draw the default highlight rectangle when hovering over target.
        ImGuiDragDropFlags_AcceptNoPreviewTooltip       # Request hiding the BeginDragDropSource tooltip from the BeginDragDropTarget site.
        ImGuiDragDropFlags_AcceptPeekOnly = ImGuiDragDropFlags_AcceptBeforeDelivery | ImGuiDragDropFlags_AcceptNoDrawDefaultRect

    ctypedef enum ImGuiDir_:
        ImGuiDir_None
        ImGuiDir_Left
        ImGuiDir_Right
        ImGuiDir_Up
        ImGuiDir_Down
        ImGuiDir_COUNT

    ctypedef enum ImGuiMouseCursor_:
        ImGuiMouseCursor_None
        ImGuiMouseCursor_Arrow
        ImGuiMouseCursor_TextInput              # When hovering over InputText, etc.
        ImGuiMouseCursor_ResizeAll
        ImGuiMouseCursor_ResizeNS               # Unused
        ImGuiMouseCursor_ResizeEW               # When hovering over a column
        ImGuiMouseCursor_ResizeNESW             # Unused
        ImGuiMouseCursor_ResizeNWSE             # When hovering over the bottom-right corner of a window
        ImGuiMouseCursor_Count_

    ctypedef enum ImGuiInputTextFlags_:
        ImGuiInputTextFlags_CharsDecimal        # Allow 0123456789.+-*/
        ImGuiInputTextFlags_CharsHexadecimal    # Allow 0123456789ABCDEFabcdef
        ImGuiInputTextFlags_CharsUppercase      # Turn a..z into A..Z
        ImGuiInputTextFlags_CharsNoBlank        # Filter out spaces, tabs
        ImGuiInputTextFlags_AutoSelectAll       # Select entire text when first taking mouse focus
        ImGuiInputTextFlags_EnterReturnsTrue    # Return 'true' when Enter is pressed (as opposed to when the value was modified)
        ImGuiInputTextFlags_CallbackCompletion  # Call user function on pressing TAB (for completion handling)
        ImGuiInputTextFlags_CallbackHistory     # Call user function on pressing Up/Down arrows (for history handling)
        ImGuiInputTextFlags_CallbackAlways      # Call user function every time. User code may query cursor position, modify text buffer.
        ImGuiInputTextFlags_CallbackCharFilter  # Call user function to filter character. Modify data->EventChar to replace/filter input, or return 1 to discard character.
        ImGuiInputTextFlags_AllowTabInput       # Pressing TAB input a '\t' character into the text field
        ImGuiInputTextFlags_CtrlEnterForNewLine # In multi-line mode, allow exiting edition by pressing Enter. Ctrl+Enter to add new line (by default adds new lines with Enter).
        ImGuiInputTextFlags_NoHorizontalScroll  # Disable following the cursor horizontally
        ImGuiInputTextFlags_AlwaysInsertMode    # Insert mode
        ImGuiInputTextFlags_ReadOnly            # Read-only mode
        ImGuiInputTextFlags_Password            # Password mode, display all characters as '*'
        ImGuiInputTextFlags_NoUndoRedo          # Disable undo/redo. Note that input text owns the text data while active, if you want to provide your own undo/redo stack you need e.g. to call ClearActiveID().
        ImGuiInputTextFlags_CharsScientific     # Allow 0123456789.+-*/eE (Scientific notation input)
