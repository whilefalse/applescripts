try
	tell application "System Preferences"
		run
		set current pane to pane "com.apple.preference.trackpad"
	end tell
	
	tell application "System Events"
		tell process "System Preferences"
			repeat until (exists window "Trackpad")
			end repeat
			click radio button "Scroll & Zoom" of tab group 1 of window "Trackpad"
			click checkbox 1 of tab group 1 of window "Trackpad"
		end tell
	end tell
	
	tell application "System Preferences"
		quit
	end tell
	
	tell application "System Events"
		key code 49 using control down
	end tell
end try

