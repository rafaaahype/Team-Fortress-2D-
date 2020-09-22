var move = false;

if(keyboard_check(vk_right) && place_free(x+walkSpd,y)){
     x+=walkSpd;
     image_xscale = 1;
     move = true;
}
else if(keyboard_check(vk_left) && place_free(x-walkSpd,y)){
     x-=walkSpd;
     image_xscale = -1;
     move = true;
}


if(keyboard_check_pressed(ord("Z"))){
     jump = true;
     //show_debug_message("Pulando");
}

//Sistema de pulo
vspd+=grvt;
if(!place_free(x,y+1) && jump)
{
     jump = false;
     vspd = jump_Height;
}

if(place_free(x,y+vspd) == false){
     var signVsp = 0;
     if(vspd >= 0){
          signVsp = 1;
     }else{
          signVsp = -1;
     }
     
     while(place_free(x,y+signVsp)){
          y+=signVsp;
     }
     vspd = 0;
}

y = y + vspd;

//Fim sistema de pulo


if(move)
{
     sprite_index = spr_team_running1;
} else {
     sprite_index = spr_team_idle1;
}
