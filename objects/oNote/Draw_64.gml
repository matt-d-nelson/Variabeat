image_speed = 0;
image_index = active;
image_yscale = chance; 

if (flash != 0)
{
	shader_set(flashShader)
	uFlash = shader_get_uniform(flashShader, "flash");
	shader_set_uniform_f(uFlash,flash);
}

draw_self();

if (shader_current() != -1) shader_reset();
