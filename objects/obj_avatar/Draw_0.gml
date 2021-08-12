/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0207999B
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "xscale" "image_xscale * cherk_facing()"
/// @DnDArgument : "yscale" "image_yscale"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * cherk_facing(), image_yscale, 0, $FFFFFF & $ffffff, 1);