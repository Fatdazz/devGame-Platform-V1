/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 16FE3EFC
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B3DD8CE
	/// @DnDInput : 2
	/// @DnDParent : 16FE3EFC
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "jump"
	/// @DnDArgument : "var_1" "hspeed"
	jump = false;
	hspeed += 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3E67A19A
	/// @DnDParent : 16FE3EFC
	/// @DnDArgument : "key" "vk_left"
	var l3E67A19A_0;
	l3E67A19A_0 = keyboard_check(vk_left);
	if (l3E67A19A_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72473032
		/// @DnDParent : 3E67A19A
		/// @DnDArgument : "expr" "-walk_speed"
		/// @DnDArgument : "var" "hspeed"
		hspeed = -walk_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6B6AD2C8
	/// @DnDParent : 16FE3EFC
	/// @DnDArgument : "key" "vk_right"
	var l6B6AD2C8_0;
	l6B6AD2C8_0 = keyboard_check(vk_right);
	if (l6B6AD2C8_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04C520B7
		/// @DnDParent : 6B6AD2C8
		/// @DnDArgument : "expr" "walk_speed"
		/// @DnDArgument : "var" "hspeed"
		hspeed = walk_speed;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C70B9B6
	/// @DnDParent : 16FE3EFC
	/// @DnDArgument : "var" "abs(hspeed)"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "0.1"
	if(abs(hspeed) > 0.1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 111C37EF
		/// @DnDParent : 4C70B9B6
		/// @DnDArgument : "expr" "- sign(hspeed) * 0.5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hspeed"
		hspeed += - sign(hspeed) * 0.5;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CA5AF83
		/// @DnDParent : 4C70B9B6
		/// @DnDArgument : "expr" "ps.WALK"
		/// @DnDArgument : "var" "stade"
		stade = ps.WALK;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 71265257
	/// @DnDParent : 16FE3EFC
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3AA5E278
		/// @DnDParent : 71265257
		/// @DnDArgument : "var" "hspeed"
		hspeed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29469B27
		/// @DnDParent : 71265257
		/// @DnDArgument : "expr" "ps.IDLE"
		/// @DnDArgument : "var" "stade"
		stade = ps.IDLE;
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7F29248B
	/// @DnDParent : 16FE3EFC
	/// @DnDArgument : "function" "cherk_collision_hori"
	cherk_collision_hori();

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2C2EB139
	/// @DnDParent : 16FE3EFC
	var l2C2EB139_0;
	l2C2EB139_0 = keyboard_check(vk_space);
	if (l2C2EB139_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 389752C8
		/// @DnDParent : 2C2EB139
		/// @DnDArgument : "var" "isGround"
		/// @DnDArgument : "value" "true"
		if(isGround == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0321D09D
			/// @DnDParent : 389752C8
			/// @DnDArgument : "expr" "-Jump_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "vspeed"
			vspeed += -Jump_speed;
		}
	}
}