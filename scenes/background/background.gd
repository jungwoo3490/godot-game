extends ParallaxBackground

@export var background_image:CompressedTexture2D
@export var scroll_speed_x = 10
@export var scroll_speed_y = 10
@onready var sprite = $ParallaxLayer/Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sprite.texture = background_image


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#sprite.region_rect.position.x += delta * scroll_speed_x
	#sprite.region_rect.position.y += delta * scroll_speed_y
	
	sprite.region_rect.position += delta * Vector2(scroll_speed_x, scroll_speed_y)
	
	if sprite.region_rect.position.x >= 1024 || sprite.region_rect.position.y >= 1024 || sprite.region_rect.position.x <= -1024 || sprite.region_rect.position.y <= -1024:
		sprite.region_rect.position = Vector2.ZERO
