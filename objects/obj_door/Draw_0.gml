/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27DA198F
/// @DnDArgument : "var" "isOpen"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(isOpen == true))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 415ED9BC
	/// @DnDParent : 27DA198F
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "xscale" "image_xscale"
	/// @DnDArgument : "yscale" "image_yscale"
	/// @DnDArgument : "sprite" "spr_doorLocked"
	/// @DnDSaveInfo : "sprite" "spr_doorLocked"
	draw_sprite_ext(spr_doorLocked, 0, x, y, image_xscale, image_yscale, 0, $FFFFFF & $ffffff, 1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2839A329
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 78C086BB
	/// @DnDParent : 2839A329
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "xscale" "image_xscale"
	/// @DnDArgument : "yscale" "image_yscale"
	/// @DnDArgument : "sprite" "spr_doorOpen"
	/// @DnDSaveInfo : "sprite" "spr_doorOpen"
	draw_sprite_ext(spr_doorOpen, 0, x, y, image_xscale, image_yscale, 0, $FFFFFF & $ffffff, 1);
}