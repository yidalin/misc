set AIRPODS_PRO_NAME to "tle-airpodspro"
set ANC to "Noise Cancellation"
set TRANSPARENCY to "Transparency"

tell application "System Events"
	tell process "SystemUIServer"
		tell (menu bar item 1 of menu bar 1 whose description contains "volume") -- find volume menu bar item
			perform action "AXPress" -- click on it
			tell (menu item 1 of menu 1 whose name contains AIRPODS_PRO_NAME) -- find airpods menu item
				perform action "AXPress" -- click on it
				tell (menu 1) -- open airpods menu
					if (value of attribute "AXMenuItemMarkChar" of menu item ANC) is equal to "✓" then
						perform action "AXPress" of (menu item TRANSPARENCY) -- switch to Transparency
					else
						perform action "AXPress" of (menu item ANC) -- switch to ANC
					end if
				end tell
			end tell
		end tell
	end tell
end tell
