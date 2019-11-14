///particle_bake_surface();

if surface_exists(g.surfaceParticles)   {
    surface_set_target(g.surfaceParticles);
    draw_sprite_ext(sprite_index, image_index, x * SURFACE_SCALE, y * SURFACE_SCALE, image_xscale * SURFACE_SCALE, image_yscale * SURFACE_SCALE, image_angle, image_blend, image_alpha);
    surface_reset_target();
    instance_destroy();
}   else    {
    g.surfaceParticles = surface_create_clear(room_width * SURFACE_SCALE, room_height * SURFACE_SCALE);
}
