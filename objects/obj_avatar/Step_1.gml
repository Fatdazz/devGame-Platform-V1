/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 00BF166F
/// @DnDInput : 2
/// @DnDArgument : "expr" "ps.DEAD==stade"
/// @DnDArgument : "expr_1" "image_index == sprite_get_number(spr_dead)-1"
if(ps.DEAD==stade && image_index == sprite_get_number(spr_dead)-1)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 707EE599
	/// @DnDParent : 00BF166F
	room_restart();
}