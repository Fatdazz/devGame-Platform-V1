/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 23BD899D
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "move_advance"
function move_advance() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35FF2DEE
	/// @DnDParent : 23BD899D
	/// @DnDArgument : "var" "channel"
	/// @DnDArgument : "value" "animcurve_get_channel(animcurve_get(cv_moveAdvance), "ch_walk_acc")"
	var channel = animcurve_get_channel(animcurve_get(cv_moveAdvance), "ch_walk_acc");

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 474B7FC1
	/// @DnDParent : 23BD899D
	/// @DnDArgument : "var" "hacc"
	/// @DnDArgument : "value" "animcurve_channel_evaluate(channel,abs(hspeed/hSpeedMax))"
	var hacc = animcurve_channel_evaluate(channel,abs(hspeed/hSpeedMax));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26FE5C4B
	/// @DnDParent : 23BD899D
	/// @DnDArgument : "expr" "sign(hInput) * hAcc_walk * hacc"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hspeed"
	hspeed += sign(hInput) * hAcc_walk * hacc;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7750FD0C
	/// @DnDParent : 23BD899D
	/// @DnDArgument : "function" "cherk_collision_hori"
	cherk_collision_hori();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61C4B4AE
	/// @DnDParent : 23BD899D
	/// @DnDArgument : "var" "isGround"
	/// @DnDArgument : "value" "true"
	if(isGround == true)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 03A4219E
		/// @DnDParent : 61C4B4AE
		/// @DnDArgument : "function" "fct_move_friction"
		/// @DnDArgument : "arg" "frictionGround"
		fct_move_friction(frictionGround);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B6EBB63
		/// @DnDParent : 61C4B4AE
		/// @DnDArgument : "var" "isJump"
		/// @DnDArgument : "value" "true"
		if(isJump == true)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 700D7599
			/// @DnDParent : 4B6EBB63
			/// @DnDArgument : "function" "fct_jump"
			fct_jump();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2C893397
	/// @DnDParent : 23BD899D
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5AC4DECF
		/// @DnDParent : 2C893397
		/// @DnDArgument : "function" "fct_move_friction"
		/// @DnDArgument : "arg" "frictionNoGround"
		fct_move_friction(frictionNoGround);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7AA29ABF
		/// @DnDParent : 2C893397
		/// @DnDArgument : "expr" "isJump == true || isJump2 == true "
		if(isJump == true || isJump2 == true )
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 0DF5601E
			/// @DnDParent : 7AA29ABF
			/// @DnDArgument : "function" "fct_jump"
			fct_jump();
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A37FBFC
	/// @DnDParent : 23BD899D
	/// @DnDArgument : "var" "abs(hspeed)"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "hSpeedMax"
	if(abs(hspeed) > hSpeedMax)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70CF6874
		/// @DnDParent : 0A37FBFC
		/// @DnDArgument : "expr" "sign(hspeed)*hSpeedMax"
		/// @DnDArgument : "var" "hspeed"
		hspeed = sign(hspeed)*hSpeedMax;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 205E3211
	/// @DnDParent : 23BD899D
	/// @DnDArgument : "var" "abs(vspeed)"
	/// @DnDArgument : "value" "vSpeedMax"
	if(abs(vspeed) == vSpeedMax)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A15E0BD
		/// @DnDParent : 205E3211
		/// @DnDArgument : "expr" "sign(vspeed)*vSpeedMax"
		/// @DnDArgument : "var" "vspeed"
		vspeed = sign(vspeed)*vSpeedMax;
	}
}