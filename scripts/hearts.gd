extends CanvasLayer

### NODES ###
@onready var player = get_parent()
@onready var heart1 = $Heart1
@onready var heart2 = $Heart2
@onready var heart3 = $Heart3

### BUILT IN FUNCTIONS ###
func _ready():
	heart1.visible = true
	heart2.visible = true
	heart3.visible = true

func _physics_process(_delta):
	match player.health:
		3:
			heart1.visible = false
			heart2.visible = false
			heart3.visible = true
		2:
			heart1.visible = false
			heart2.visible = true
			heart3.visible = false
		1:
			heart1.visible = true
			heart2.visible = false
			heart3.visible = false
		0:
			heart1.visible = false
			heart2.visible = false
			heart3.visible = false
