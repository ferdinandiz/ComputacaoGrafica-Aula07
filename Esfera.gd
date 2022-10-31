extends KinematicBody2D
var velocidade = Vector2.ZERO
var contador = 0 

func _physics_process(delta):
	
	move_and_slide(velocidade*10)
	
	$".".get_parent().get_node("HUD/Label").set_text ("Contador: "+str(contador))
	
	pass

func _ready():
	velocidade.x = 100
	contador = 0
	pass 


func _on_esquerda_body_entered(body):
	print(body.name)
	velocidade.x *= -1 
	contador += 1
	pass # Replace with function body.


func _on_direita_body_entered(body):
	velocidade.x *= -1 
	contador += 1
	pass # Replace with function body.
