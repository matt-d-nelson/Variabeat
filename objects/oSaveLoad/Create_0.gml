save = instance_create_depth(x,y,depth-1,oSave);
load = instance_create_depth(x+save.sprite_width+5,y,depth-1,oLoad);

executeSave = false;
executeLoad = false;
