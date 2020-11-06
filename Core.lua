local addonName, EM = ...
_G.EnhancedMenu = EM

EM.funcs = {}
local F = EM.funcs
local L = EM.L

local EnhancedMenu_ItemOrder = {"GUILD_INVITE", "COPY_NAME", "SEND_WHO", "ARMORY_URL"}
local EnhancedMenu_Items = {
    ["ENHANCED_MENU"] = {
        text = L["ENHANCED_MENU"],
        isTitle = true,
        notCheckable = 1,
    },
    ["GUILD_INVITE"] = {
        text = L["GUILD_INVITE"],
        notCheckable = 1,
    },
    ["COPY_NAME"] = {
        text = L["COPY_NAME"],
        notCheckable = 1,
    },
    ["SEND_WHO"] = {
        text = L["SEND_WHO"],
        notCheckable = 1,
    },
    ["ARMORY_URL"] = {
        text = L["ARMORY_URL"],
        notCheckable = 1,
    },
}
local EnhancedMenu_Func = {}
local EnhancedMenu_Which = {}
-- ["which"] = "SELF": unit frame self
--             "FOCUS": unit frame focus
--             "PLAYER": unit frame player
--             "TARGET": unit frame target (non-player)
--             "FRIEND": chat frame / friend
--             "FRIEND_OFFLINE": friend
--             "COMMUNITIES_GUILD_MEMBER": guild frame
--             "PARTY": party member
--             "RAID_PLAYER": raid member

----------------------------------------------------------------------------
-- which
----------------------------------------------------------------------------
EnhancedMenu_Which["GUILD_INVITE"] = {
	["PLAYER"] = true,
    ["FRIEND"] = true,
	["PARTY"] = true,
	["RAID_PLAYER"] = true,
}

EnhancedMenu_Which["COPY_NAME"] = {
	["SELF"] = true,
	["TARGET"] = true,
	["PARTY"] = true,
	["PLAYER"] = true,
	["RAID_PLAYER"] = true,
	["FRIEND"] = true,
	["FRIEND_OFFLINE"] = true,
	["COMMUNITIES_GUILD_MEMBER"] = true,
}

EnhancedMenu_Which["SEND_WHO"] = {
	["FRIEND"] = true,
}

EnhancedMenu_Which["ARMORY_URL"] = {
	["SELF"] = true,
	["PARTY"] = true,
	["PLAYER"] = true,
	["RAID_PLAYER"] = true,
	["FRIEND"] = true,
	["FRIEND_OFFLINE"] = true,
	["COMMUNITIES_GUILD_MEMBER"] = true,
}

print(UnitGUID("player"))
print(EM:GetCurrentRegion())

----------------------------------------------------------------------------
-- func
----------------------------------------------------------------------------
EnhancedMenu_Func["GUILD_INVITE"] = function(name, server)
    F:ConfirmGuildInvite(name.."-"..server)
end

EnhancedMenu_Func["COPY_NAME"] = function(name, server)
    F:ShowName(name.."-"..server)
end

EnhancedMenu_Func["SEND_WHO"] = function(name, server)
    C_FriendList.SetWhoToUi(false)
    C_FriendList.SendWho("n-"..name.."-"..server)
end

EnhancedMenu_Func["ARMORY_URL"] = function(name, server)
end

----------------------------------------------------------------------------
-- prepare buttons
----------------------------------------------------------------------------
local buttons = {}
local function PrepareButtons(which, name, server)
    wipe(buttons)
    if not server then server = GetRealmName() end

    local i = 0
    for _, itemName in pairs(EnhancedMenu_ItemOrder) do
        if EnhancedMenu_Which[itemName][which] then
            i = i + 1
            -- add item
            tinsert(buttons, EnhancedMenu_Items[itemName])
            -- set func
            buttons[i].func = function()
                EnhancedMenu_Func[itemName](name, server)
            end
        end
    end

    if i ~= 0 then
        tinsert(buttons, 1, EnhancedMenu_Items["ENHANCED_MENU"])
        return true
    end
end

----------------------------------------------------------------------------
-- hook
----------------------------------------------------------------------------
hooksecurefunc("UnitPopup_ShowMenu", function()
    local menuLevel = UIDROPDOWNMENU_MENU_LEVEL
    if menuLevel > 1 then return end

    local menu = UnitPopup_HasVisibleMenu() and UIDropDownMenu_GetCurrentDropDown() or nil
    if not menu then return end
    -- texplore(menu)

    local show = PrepareButtons(menu.which, menu.name, menu.server)
    -- Interface\SharedXML\UIDropDownMenu.lua
    if show then
        UIDropDownMenu_AddSeparator()
        for _, info in pairs(buttons) do
            UIDropDownMenu_AddButton(info)
        end
    end
end)