local LrDialogs = import 'LrDialogs'
local LrApplication = import 'LrApplication'
local LrTasks = import 'LrTasks'
local LrFileUtils = import 'LrFileUtils'

DeleteRawMenuItem = {}

function DeleteRawMenuItem.deleteRAW()
    local catalog = LrApplication.activeCatalog()
    -- TODO: filter only RAW files
    if 'ok' == LrDialogs.confirm('Are you sure?', 'Do you really want to delete the RAW files for ' .. #(catalog.targetPhotos) .. ' photo(s)?') then
        for i, photo in ipairs(catalog.targetPhotos) do
            res, reason = LrFileUtils.moveToTrash(photo.path)
            if not res then
                LrDialogs.showError(reason .. ' ' .. photo.path)
            end
        end
    end
end

DeleteRawMenuItem.deleteRAW()
