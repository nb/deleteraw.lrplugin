--[[----------------------------------------------------------------------------

Delete RAW plugin adds an item in the Library menu, which deletes the RAW
files of the selected photos.

Files are moved to trash (or equivalent) and not deleted permanently.

Author: Nikolay Bachiyski <nb@nikolay.bg> http://nikolay.bg/
License: Public Domain

------------------------------------------------------------------------------]]

return {
	
	LrSdkVersion = 2.0,
	LrSdkMinimumVersion = 2.0,

	LrToolkitIdentifier = 'bg.nikolay.lightroom.deleteraw',
	LrPluginName = 'Delete RAW',
	
	-- Add the menu item the Library menu
	LrLibraryMenuItems = {
		title = "Delete RAW",
		file = "DeleteRaw.lua",
		enabledWhen = 'photosAvailable',
	},
}


