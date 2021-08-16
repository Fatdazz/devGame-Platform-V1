/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 75BFFBBB
/// @DnDArgument : "function" "cherk_collision_vert"
cherk_collision_vert();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 20F17F6B
/// @DnDArgument : "function" "ckerk_ground"
ckerk_ground();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02A92A6B
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "ps.IDLE"
/// @DnDArgument : "var" "stade"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2258867E
/// @DnDArgument : "var" "stade"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
if(!(stade == ps.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 052DE4E8
	/// @DnDParent : 2258867E
	/// @DnDArgument : "var" "isGround"
	/// @DnDArgument : "value" "true"
	if(isGround == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73DD7700
		/// @DnDParent : 052DE4E8
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "isJump2"
		isJump2 = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 684F46CE
		/// @DnDDisabled : 1
		/// @DnDParent : 052DE4E8
		/// @DnDArgument : "steps" "-1"
		/// @DnDArgument : "alarm" "1"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EABE676
		/// @DnDParent : 052DE4E8
		/// @DnDArgument : "expr" "ps.IDLE"
		/// @DnDArgument : "var" "stade"
		stade = ps.IDLE;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 276BC21A
		/// @DnDParent : 052DE4E8
		/// @DnDArgument : "expr" "abs(hspeed)==0"
		/// @DnDArgument : "not" "1"
		if(!(abs(hspeed)==0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47EB2788
			/// @DnDParent : 276BC21A
			/// @DnDArgument : "expr" "ps.WALK"
			/// @DnDArgument : "var" "stade"
			stade = ps.WALK;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 42526380
			/// @DnDDisabled : 1
			/// @DnDParent : 276BC21A
			/// @DnDArgument : "function" "show_debug_message"
			/// @DnDArgument : "arg" "stade"
		}
	}
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 24BA43D5
/// @DnDArgument : "function" "anim"
anim();