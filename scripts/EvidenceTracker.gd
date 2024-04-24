extends Node

var evidence_data = {
	
	"11037": {
		"name": "11037",
		"icon": "res://sprites/interface/evidence icons/11037.png",
		"description": "It's a very suspicious number"
	},
	
	"banana": {
		"name": "Banana",
		"icon": "res://sprites/interface/evidence icons/banana.png",
		"description": "It's high in potassium"
	},
	
	"cipher": {
		"name": "Bill Cipher",
		"icon": "res://sprites/interface/evidence icons/bill cipher.png",
		"description": "It's time for Weirdmageddon"
	},
	
	"cookie": {
		"name": "Cookie",
		"icon": "res://sprites/interface/evidence icons/cookie.png",
		"description": "Who stole the cookie from the cookie jar? A question as old as time..."
	},
	
	"dagger": {
		"name": "Dagger",
		"icon": "res://sprites/interface/evidence icons/dagger.png",
		"description": "This is clearly not suspicious and completely irrelevant to the case"
	},
	
	"fish": {
		"name": "Doom Fish",
		"icon": "res://sprites/interface/evidence icons/fish.png",
		"description": "If you're not careful, you'll be doomfished next"
	},
	
	"hat": {
		"name": "Hat",
		"icon": "res://sprites/interface/evidence icons/hat.png",
		"description": "It's my hat! I like my hat"
	},
	
	"jiggy": {
		"name": "Jiggy",
		"icon": "res://sprites/interface/evidence icons/jiggy.png",
		"description": "If I collect enough of these, I can defeat the witch"
	},
	
	"e": {
		"name": "Letter E",
		"icon": "res://sprites/interface/evidence icons/letter e.png",
		"description": "Not as good as D, but better than F"
	},
	
	"cylinder": {
		"name": "Orange Cylinder",
		"icon": "res://sprites/interface/evidence icons/orange cylinder.png",
		"description": "I understand"
	},
	
	"pear": {
		"name": "Pear",
		"icon": "res://sprites/interface/evidence icons/pear.png",
		"description": "Bad and naughty children get sent to the pear wiggler"
	},
	
	"snake": {
		"name": "Scary Snake",
		"icon": "res://sprites/interface/evidence icons/snake.png",
		"description": "Aaah!"
	}
	
}

var evidence = []

var currently_observed_evidence : String
signal updated_currently_observed_evidence

func _ready():
	evidence.append("banana")
	evidence.append("11037")
	evidence.append("cipher")
	evidence.append("cookie")
	evidence.append("dagger")
	evidence.append("fish")
	evidence.append("hat")
	evidence.append("jiggy")
	evidence.append("e")
	evidence.append("cylinder")
	evidence.append("pear")
	evidence.append("snake")

func set_observed_evidence(key : String):
	currently_observed_evidence = key
	updated_currently_observed_evidence.emit()
