	const_def 2 ; object constants
	const ROUTE12SUPERRODHOUSE_FISHING_GURU

UrasoeTrailSuperRodHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

UrasoeTrailSuperRodHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .GotSuperRod
	writetext OfferSuperRodText
	yesorno
	iffalse .Refused
	writetext GiveSuperRodText
	buttonsound
	verbosegiveitem SUPER_ROD
	iffalse .NoRoom
	setevent EVENT_GOT_SUPER_ROD
.GotSuperRod:
	writetext GaveSuperRodText
	waitbutton
	closetext
	end

.Refused:
	writetext DontWantSuperRodText
	waitbutton
.NoRoom:
	closetext
	end

SuperRodHouseBookshelf:
; unused
	jumpstd picturebookshelf

OfferSuperRodText:
	text "I can see that you"
	line "like fishing."

	para "There's no doubt"
	line "in my mind at all!"

	para "So? I know I'm"
	line "right."
	done

GiveSuperRodText:
	text "Yes, yes. Just as"
	line "I thought!"

	para "Here, fishing fan!"
	line "Take this--it's a"
	cont "SUPER ROD."
	done

GaveSuperRodText:
	text "Try your hand at"
	line "fishing wherever"
	cont "there is water."

	para "Remember--you can"
	line "catch different"

	para "#MON using"
	line "different RODS."
	
	para "The SUPER ROD is"
	line "the best of them"
	cont "all!"
	done

DontWantSuperRodText:
	text "Huh? My own eyes"
	line "deceived me?"
	done

UrasoeTrailSuperRodHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  7, AMAMI_TOWN, 8
	warp_event  5,  7, AMAMI_TOWN, 8

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  7,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, UrasoeTrailSuperRodHouseFishingGuruScript, -1