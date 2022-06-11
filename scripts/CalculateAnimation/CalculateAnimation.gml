// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GreenAnimation(){
	return y+2+(sin(get_timer()*0.0000025*pi*(tempoObject.tempo/200))*5);
}

function PinkAnimation() {
	return y+2+(sin(0.5+get_timer()*0.0000025*pi*(tempoObject.tempo/200))*5);
}

function BlackAnimation() {
	return y+2+(sin(1+get_timer()*0.0000025*pi*(tempoObject.tempo/200))*5);
}
