var move = false;

if(keyboard_check(vk_right) && place_free(x+walkSpd)){
     x+=walkSpd;
     image_xscale = 1;
     move = true;
}
else if(keyboard_check(vk_left) && place_free(x-walkSpd)){
     x-=walkSpd;
     image_xscale = -1;
     move = true;
}


if(keyboard_check_pressed(ord("Z"))){
     jump = true;
     //show_debug_message("Pulando");
}

//Sistema de pulo
