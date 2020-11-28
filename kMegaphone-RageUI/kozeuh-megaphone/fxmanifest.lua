fx_version 'adamant'

game 'gta5'

--[[###########################################################
########### KoZ-megaphone © Copyright KoZeuh 2020 #############
    ###########################################################--]]

client_scripts {
    "@RageUI/main/RageMenu.lua",
    "@RageUI/menu/RageUI.lua",
    "@RageUI/menu/Menu.lua",
    "@RageUI/menu/MenuController.lua",
    "@RageUI/menu/HeritageRage.lua",

    "@RageUI/menu/elements/ItemsBadge.lua",
	"@RageUI/menu/elements/ItemsColour.lua",
	"@RageUI/menu/elements/PanelColour.lua",

	"@RageUI/menu/elements/UIButton.lua",
	"@RageUI/menu/elements/UICheckBox.lua",
	"@RageUI/menu/elements/UIList.lua",
	"@RageUI/menu/elements/UIProgress.lua",
	"@RageUI/menu/elements/UISlider.lua",
	"@RageUI/menu/elements/UISliderHeritage.lua",
	"@RageUI/menu/elements/UISliderProgress.lua",

	"@RageUI/components/Audio.lua",
	"@RageUI/components/Rectangle.lua",
	"@RageUI/components/Screen.lua",
	"@RageUI/components/Sprite.lua",
	"@RageUI/components/Text.lua",
	"@RageUI/components/Visual.lua",

    "@RageUI/menu/gestion/UIColourPanel.lua",
	"@RageUI/menu/gestion/UIGridPanel.lua",
	"@RageUI/menu/gestion/UIGridPanelHorizontal.lua",
	"@RageUI/menu/gestion/UIGridPanelVertical.lua",
	"@RageUI/menu/gestion/UIPercentagePanel.lua",
	"@RageUI/menu/gestion/UIStatisticsPanel.lua",

}


client_scripts {
    'config.lua',
	'client.lua'
}

server_scripts {
    'server.lua'

}

dependencies {
	'RageUI'
}
