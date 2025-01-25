extends Node2D

var levels:Array = [load("res://levels/test_scene.tscn"),load("res://levels/test2.tscn")]
var firstScene = load("res://levels/test_scene.tscn")
var lvl = 0;
func _ready():
	pass
func switch_scene(scene):
	get_child(0).queue_free()
	add_child(scene)

func death():
	print("dead")
	switch_scene(levels[0].instantiate())
	lvl = 0
func next_level():
	lvl+=1
	switch_scene(levels[lvl].instantiate())

func retry():
	switch_scene(firstScene.instantiate())
func end():
	print("the end ig")
