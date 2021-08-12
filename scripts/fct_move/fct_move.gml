/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 35697888
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "fct_move_friction"
/// @DnDArgument : "arg" "_friction"
function fct_move_friction(_friction) 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47910886
	/// @DnDComment : friction NoGround
	/// @DnDParent : 35697888
	/// @DnDArgument : "var" "abs(hspeed)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "frictionGround"
	if(abs(hspeed) <= frictionGround)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0DC3BD78
		/// @DnDParent : 47910886
		/// @DnDArgument : "var" "hspeed"
		hspeed = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 53339AEA
	/// @DnDParent : 35697888
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C0B3A5C
		/// @DnDParent : 53339AEA
		/// @DnDArgument : "expr" "-sign(hspeed)*_friction"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hspeed"
		hspeed += -sign(hspeed)*_friction;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 669775F5
/// @DnDArgument : "funcName" "fct_jump"
function fct_jump() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AFC12E9
	/// @DnDParent : 669775F5
	/// @DnDArgument : "var" "vAcc"
	/// @DnDArgument : "value" "0"
	var vAcc = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4B2E3D42
	/// @DnDParent : 669775F5
	/// @DnDArgument : "expr" "isJump2!=true && alarm[0]>-1"
	if(isJump2!=true && alarm[0]>-1)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A8F2422
		/// @DnDParent : 4B2E3D42
		/// @DnDArgument : "var" "channel"
		/// @DnDArgument : "value" "animcurve_get_channel(animcurve_get(cv_moveAdvance), "ch_jump_acc")"
		var channel = animcurve_get_channel(animcurve_get(cv_moveAdvance), "ch_jump_acc");
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5426326D
		/// @DnDParent : 4B2E3D42
		/// @DnDArgument : "expr" "animcurve_channel_evaluate(channel,abs(1 - alarm[0]/alarmJump))"
		/// @DnDArgument : "var" "vAcc"
		vAcc = animcurve_channel_evaluate(channel,abs(1 - alarm[0]/alarmJump));
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1FDD6335
	/// @DnDParent : 669775F5
	/// @DnDArgument : "expr" "alarm[1] >=0"
	if(alarm[1] >=0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 327BF6D6
		/// @DnDParent : 1FDD6335
		/// @DnDArgument : "var" "channel"
		/// @DnDArgument : "value" "animcurve_get_channel(animcurve_get(cv_moveAdvance), "ch_jump2_acc")"
		var channel = animcurve_get_channel(animcurve_get(cv_moveAdvance), "ch_jump2_acc");
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68EB93CF
		/// @DnDParent : 1FDD6335
		/// @DnDArgument : "expr" "animcurve_channel_evaluate(channel,abs(1 - alarm[1]/alarmJump2))"
		/// @DnDArgument : "var" "vAcc"
		vAcc = animcurve_channel_evaluate(channel,abs(1 - alarm[1]/alarmJump2));
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3AF18B83
		/// @DnDDisabled : 1
		/// @DnDParent : 1FDD6335
		/// @DnDArgument : "function" "show_debug_message"
		/// @DnDArgument : "arg" "1 - alarm[1]/alarmJump2"
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A539548
	/// @DnDParent : 669775F5
	/// @DnDArgument : "expr" "- vAcc * jumpAcc"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vspeed"
	vspeed += - vAcc * jumpAcc;
}