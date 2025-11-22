extends Node2D

# 导出变量（exported variable）
@export var speed: float = 200.0

func _process(delta: float) -> void:
	var direction := Vector2.ZERO

	# 监听玩家输入（Input）
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# 如果有输入，就移动 Player
	if direction != Vector2.ZERO:
		direction = direction.normalized()
		position += direction * speed * delta

	# 条件判断（if / else）
	if position.length() > 400.0:
		print("离中心太远！")
	else:
		print("在安全范围内")
