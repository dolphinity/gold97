	db WARWOLF ; 247

	db 70, 90, 80,  100, 70, 85
	;   hp  atk  def  spd  sat  sdf

	db ICE, DARK ; type
	db 65 ; catch rate
	db 174 ; base exp
	db ICE_BERRY, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/warwolf/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm ROAR, DYNAMICPUNCH, HEADBUTT, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, ENDURE, RETURN, MEGAPHONE, SWAGGER, SWIFT, BLIZZARD, ICY_WIND, ICE_PUNCH, EARTHQUAKE, MUD_SLAP, THIEF, THUNDERPUNCH, ROCK_SMASH, STRENGTH, REST
	; end
