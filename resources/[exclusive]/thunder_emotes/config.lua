Config = {
    -- Change the language of the menu here!.
    MenuLanguage = 'pt',
    -- Set this to true to enable some extra prints
    DebugDisplay = false,
    -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
    EnableXtoCancel = true,
    CancelEmoteKey = 'F6', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Set this to true if you want to disarm the player when they play an emote.
    DisarmPlayer = false,
    -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
    AllowedInCars = true,
    -- You can disable the menu here / change the keybind. It is currently set to F5
    MenuKeybindEnabled = true,
    MenuKeybind = 'f4', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can disable the Favorite emote keybinding here.
    FavKeybindEnabled = true,
    FavKeybind = 'capital', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can change the header image for the menu here
    -- Use a 512 x 128 image!
    -- Note this might cause an issue of the image getting stuck on peoples screens
    CustomMenuEnabled = true,
    MenuImage = "https://cdn.discordapp.com/attachments/1074350331959464056/1146243404385243216/cosito.png", ----[Custom banner IMGUR or GIPHY URLs go here ]---
    -- You can change the menu image by pasting a link above. It must be the same width and length
    -- You can change the name of the menu here or leave it blank to remove the text in front of the custom banners
    MenuTitle = "Central Animeçoes",
    -- You can change the menu position here
    MenuPosition = "right", -- (left, right)
    -- You can enable or disable the Ragdoll keybinding here.
    RagdollEnabled = false,
    RagdollKeybind = 'u', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can enable or disable Ragdoll as Toggle here. Only works if RagdollEnabled is set to true.
    RagdollAsToggle = true,
    -- You can disable the Facial Expressions menu here.
    ExpressionsEnabled = true,
    -- Saves expression style to client and applies them on joining
    PersistentExpression = true,
    -- You can disable the Walking Styles menu here.
    WalkingStylesEnabled = true,
    -- Saves walk styles to client and applies them periodically
    PersistentWalk = true,
    -- Polling period to apply persistent walkstyles
    PersistencePollPeriod = 60000,
    -- You can disable the Shared Emotes here.
    SharedEmotesEnabled = false,
    -- If you have the SQL imported enable this to turn on keybinding.
    SqlKeybinding = false,
    -- If you don't like gta notifications, you can disable them here to have messages in the chat.
    NotificationsAsChatMessage = false,
    -- Used for few framework dependent things. Accepted values: "qb-core", false
    Framework = false,
    -- You can disable the Adult Emotes here.
    AdultEmotesDisabled = false,
    -- You can disable the Animal Emotes here.
    AnimalEmotesEnabled = true,
    -- Used to enable or disable the search feature in the menu.
    Search = true,
    -- You can disable the handsup here / change the keybind. It is currently set to Y
    HandsupEnabled = false,
    HandsupKeybind = 'O', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    HandsupKeybindEnabled = false,
    HandsupKeybindInCarEnabled = false,
    PersistentEmoteAfterHandsup = true, -- If true, you will play the emote you were playing previously after you stop handsup.
    -- You can disable the fingrer pointing here / change the keybind. It is currently set to B
    PointingEnabled = false,
    PointingKeybindEnabled = true,
    PointingKeybind = '9', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    PersistentEmoteAfterPointing = true, -- If true, you will play the emote you were playing previously after you stop pointing.
    -- If crouching should be enabled.
    CrouchEnabled = false,
    CrouchKeybindEnabled = false, -- If true, crouching will use keybinds.
    CrouchKeybind = 'lcontrol', -- The default crouch keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    CrouchOverride = false, -- If true, you won't enter stealth mode even if the crouch key and the "duck" key are the same.
    -- If crawling should be enabled.
    CrawlEnabled = true,
    CrawlKeybindEnabled = true, -- If true, crawling will use keybinds.
    CrawlKeybind = 'rcontrol', -- The default crawl keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- If turned on, playing an emote will cancel the previous one.
    CancelPreviousEmote = false,
    -- If turned off, opening the menu and playing an emote will not be possible while swimming
    AllowInWater = true,
    -- If set to true, the /binoculars command will be enabled.
    BinocularsEnabled = true,
    -- If set to true, you'll be able to toggle between different vision modes in the binoculars
    AllowVisionsToggling = false,
    -- If set to true, the /newscam command will be enabled.
    NewscamEnabled = true,
    -- Check for updates
    CheckForUpdates = false,
}

Config.KeybindKeys = {
    -- ['num4'] = 108,
    -- ['num5'] = 110,
    -- ['num6'] = 109,
    -- ['num7'] = 117,
    -- ['num8'] = 111,
    -- ['num9'] = 118
}
