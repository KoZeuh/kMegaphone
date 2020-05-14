
------
-- InteractSound by Scott
-- Verstion: v0.0.1
------

-- Manifest Version
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

-- Client Scripts
client_script 'client/main.lua'

-- Server Scripts
server_script 'server/main.lua'

-- NUI Default Page
ui_page('client/html/index.html')

-- Files needed for NUI
-- DON'T FORGET TO ADD THE SOUND FILES TO THIS!
files({
    'client/html/index.html',
    -- Begin Sound Files Here...
    -- client/html/sounds/ ... .ogg
    'client/html/sounds/demo.ogg',
	'client/html/sounds/seatbelt.ogg',
	'client/html/sounds/buckle.ogg',
	'client/html/sounds/unbuckle.ogg',
        'client/html/sounds/stop_vehicle.ogg',
	'client/html/sounds/stop_vehicle-2.ogg',
	'client/html/sounds/stop_the_f_car.ogg',
	'client/html/sounds/dont_make_me.ogg',
	'client/html/sounds/clear_the_area.ogg',
	'client/html/sounds/its_over_for_you.ogg',
	'client/html/sounds/you_are_finished_dhead.ogg',
	'client/html/sounds/cant_hide_boi.ogg',
	'client/html/sounds/stop_dont_move.ogg',
	'client/html/sounds/give_yourself_up.ogg',
	'client/html/sounds/stay_right_there.ogg',
	'client/html/sounds/freeze_lspd.ogg',
	'client/html/sounds/stop_or_executed.ogg',
	'client/html/sounds/stop_or_i_kill.ogg',
	'client/html/sounds/this_is_the_lspd.ogg',
	'client/html/sounds/move_along_people.ogg',
	'client/html/sounds/get_out_of_here_now.ogg',
	'client/html/sounds/disperse_now.ogg',
	'client/html/sounds/shoot_to_kill.ogg',
	'client/html/sounds/drop_a_missile.ogg',
	'client/html/sounds/lock.ogg',
	'client/html/sounds/unlock.ogg',
        'client/html/sounds/CoffinDance.ogg',
	'client/html/sounds/detector.ogg',
        'client/html/sounds/demo.ogg',
	'client/html/sounds/cuff.ogg',
	'client/html/sounds/uncuff.ogg',
	'client/html/sounds/ron.ogg',
	'client/html/sounds/roff.ogg',
	'client/html/sounds/unlockDoor.ogg',
	'client/html/sounds/lockDoor.ogg',
	'client/html/sounds/lockKeypad.ogg',
	'client/html/sounds/openKeypad.ogg',
	'client/html/sounds/vaultOpen.ogg',
	'client/html/sounds/crateOpen.ogg',
	'client/html/sounds/zip.ogg'
})
