tool
extends MeshInstance

export(NodePath) var sun_light
onready var sun_light_ref = get_node(sun_light)


# Called when the node enters the scene tree for the first time.
func _ready():
	var light_dir = sun_light_ref.transform.basis.xform(Vector3(0,0,1))
	print(light_dir)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var mat= get_active_material(0)
	mat.set_shader_param("light_vector", sun_light_ref.transform.basis.xform(Vector3(0,0,1)))