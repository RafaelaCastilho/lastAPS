if(y > room_height + 360)
{
	var new_x = floor(random_range(200, room_width - 200 + 1));

	x = new_x	;
	y = -200;

	var chance = floor(random_range(0, 3 + 1));

	sprite_index = spr_window;
	image_index = 2;

	var l3F7FA695_0 = chance;
	switch(l3F7FA695_0)
	{
		case 0:
			instance_create_layer(x + 0, y + 0, "Spawns", obj_rec);
		
			sprite_index = spr_window;
			image_index = 1;
			break;
	
		case 1:
			instance_create_layer(x + 0, y + 0, "Spawns", obj_norec);
		
			sprite_index = spr_window;
			image_index = 1;
			break;
	}
}