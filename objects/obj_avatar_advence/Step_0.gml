/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2A6A0683
/// @DnDDisabled : 1
/// @DnDArgument : "function" "show_debug_message"
/// @DnDArgument : "arg" "isGround"


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
		/// @DnDArgument : "function" "get_input_advance_update"
		get_input_advance_update();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6B5F0BA5
		/// @DnDParent : 3DCD9CEE
		/// @DnDArgument : "function" "move_advance"
		move_advance();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6E2CC8DC
	/// @DnDParent : 32B6E647
	/// @DnDArgument : "const" "ps.WALK"
	case ps.WALK:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 42917A92
		/// @DnDParent : 6E2CC8DC
		/// @DnDArgument : "function" "get_input_advance_update"
		get_input_advance_update();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1EEDB38E
		/// @DnDParent : 6E2CC8DC
		/// @DnDArgument : "function" "move_advance"
		move_advance();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 097DB8A6
	/// @DnDParent : 32B6E647
	/// @DnDArgument : "const" "ps.AIR"
	case ps.AIR:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 36C4FA32
		/// @DnDDisabled : 1
		/// @DnDParent : 097DB8A6
		/// @DnDArgument : "function" "show_debug_message"
		/// @DnDArgument : "arg" ""ps.AiRE""
	
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0B932D11
		/// @DnDDisabled : 1
		/// @DnDParent : 097DB8A6
		/// @DnDArgument : "function" "get_input_advance_update"
	
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3DD67698
		/// @DnDParent : 097DB8A6
		/// @DnDArgument : "function" "move_advance"
		move_advance();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3362C033
	/// @DnDParent : 32B6E647
	/// @DnDArgument : "const" "ps.DEAD"
	case ps.DEAD:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1051B2AF
		/// @DnDParent : 3362C033
		/// @DnDArgument : "function" "move_advance"
		move_advance();
		break;
}