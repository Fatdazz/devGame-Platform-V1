/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DE292F1
/// @DnDArgument : "var" "stade"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
if(!(stade == ps.DEAD))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C6CC318
	/// @DnDParent : 0DE292F1
	/// @DnDArgument : "var" "hspeed"
	hspeed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03D82E4A
	/// @DnDParent : 0DE292F1
	/// @DnDArgument : "expr" "ps.DEAD"
	/// @DnDArgument : "var" "stade"
	stade = ps.DEAD;

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4735A026
	/// @DnDDisabled : 1
	/// @DnDParent : 0DE292F1
}