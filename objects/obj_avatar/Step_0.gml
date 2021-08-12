/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 32B6E647
/// @DnDArgument : "expr" "stade"
var l32B6E647_0 = stade;
switch(l32B6E647_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3DCD9CEE
	/// @DnDParent : 32B6E647
	/// @DnDArgument : "const" "ps.IDLE"
	case ps.IDLE:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 07066072
		/// @DnDParent : 3DCD9CEE
		/// @DnDArgument : "function" "get_input"
		get_input();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3D83C44E
	/// @DnDParent : 32B6E647
	/// @DnDArgument : "const" "ps.WALK"
	case ps.WALK:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 289D1E1A
		/// @DnDParent : 3D83C44E
		/// @DnDArgument : "function" "get_input"
		get_input();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 73A4DD9F
	/// @DnDParent : 32B6E647
	/// @DnDArgument : "const" "ps.DEAD"
	case ps.DEAD:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 255B295D
		/// @DnDParent : 73A4DD9F
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "value" "sprite_get_number(sprite_index) -1"
		if(image_index == sprite_get_number(sprite_index) -1)
		{
			/// @DnDAction : YoYo Games.Game.Restart_Game
			/// @DnDVersion : 1
			/// @DnDHash : 2C79EB73
			/// @DnDParent : 255B295D
			game_restart();
		}
		break;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2C98F0DB
/// @DnDArgument : "function" "anim"
anim();