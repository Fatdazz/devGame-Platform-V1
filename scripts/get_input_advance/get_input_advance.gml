/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 415268CF
/// @DnDArgument : "funcName" "get_input_advance_create"
function get_input_advance_create() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17D8FDCD
	/// @DnDParent : 415268CF
	/// @DnDArgument : "var" "hInput"
	hInput = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52CF3E9D
	/// @DnDParent : 415268CF
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "bjump"
	bjump = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B5327A7
	/// @DnDParent : 415268CF
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "bjump2"
	bjump2 = false;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7F00140B
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "get_input_advance_update"
function get_input_advance_update() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B3D6F96
	/// @DnDParent : 7F00140B
	/// @DnDArgument : "var" "hInput"
	hInput = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 11D0BAA7
	/// @DnDParent : 7F00140B
	var l11D0BAA7_0;
	l11D0BAA7_0 = keyboard_check_pressed(vk_space);
	if (l11D0BAA7_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BAF9E2C
		/// @DnDParent : 11D0BAA7
		/// @DnDArgument : "var" "isGround"
		/// @DnDArgument : "value" "true"
		if(isGround == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7EDBF91F
			/// @DnDParent : 4BAF9E2C
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "isJump"
			isJump = true;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4CE0ACE0
			/// @DnDParent : 4BAF9E2C
			/// @DnDArgument : "steps" "alarmJump"
			alarm_set(0, alarmJump);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 14F73FA4
		/// @DnDParent : 11D0BAA7
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 4C860BD1
			/// @DnDInput : 2
			/// @DnDParent : 14F73FA4
			/// @DnDArgument : "expr" "isJump2==false"
			/// @DnDArgument : "expr_1" "vspeed<12"
			if(isJump2==false && vspeed<12)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 7ABDF544
				/// @DnDDisabled : 1
				/// @DnDParent : 4C860BD1
				/// @DnDArgument : "function" "show_debug_message"
				/// @DnDArgument : "arg" "vspeed"
			
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4F303146
				/// @DnDParent : 4C860BD1
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "isJump2"
				isJump2 = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 34070D80
				/// @DnDParent : 4C860BD1
				/// @DnDArgument : "steps" "alarmJump2"
				/// @DnDArgument : "alarm" "1"
				alarm_set(1, alarmJump2);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0E9F5E3E
				/// @DnDParent : 4C860BD1
				/// @DnDArgument : "var" "vspeed"
				vspeed = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
	/// @DnDVersion : 1
	/// @DnDHash : 13A55BED
	/// @DnDParent : 7F00140B
	var l13A55BED_0;
	l13A55BED_0 = keyboard_check_released(vk_space);
	if (l13A55BED_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CE0AB14
		/// @DnDParent : 13A55BED
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "isJump"
		isJump = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 39AB4037
		/// @DnDParent : 13A55BED
		/// @DnDArgument : "steps" "-1"
		alarm_set(0, -1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1701B5C4
		/// @DnDParent : 13A55BED
		/// @DnDArgument : "var" "alarmJump2"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "-1"
		if(!(alarmJump2 == -1))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 304C119D
			/// @DnDParent : 1701B5C4
			/// @DnDArgument : "steps" "-1"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, -1);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6DD560CA
/// @DnDArgument : "funcName" "get_input_advance_AlarmJump"
function get_input_advance_AlarmJump() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 434B129B
	/// @DnDParent : 6DD560CA
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "isJump"
	isJump = false;
}