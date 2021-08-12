/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 378337A9
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "anim"
function anim() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 48FED2AB
	/// @DnDParent : 378337A9
	/// @DnDArgument : "expr" "stade"
	var l48FED2AB_0 = stade;
	switch(l48FED2AB_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0F4539B6
		/// @DnDParent : 48FED2AB
		/// @DnDArgument : "const" "ps.IDLE"
		case ps.IDLE:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2975C2C9
			/// @DnDParent : 0F4539B6
			/// @DnDArgument : "expr" "spr_idle"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_idle;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2CB63C8A
		/// @DnDParent : 48FED2AB
		/// @DnDArgument : "const" "ps.WALK"
		case ps.WALK:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42A622F0
			/// @DnDParent : 2CB63C8A
			/// @DnDArgument : "expr" "spr_walk"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_walk;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7027AF44
		/// @DnDParent : 48FED2AB
		/// @DnDArgument : "const" "ps.DEAD"
		case ps.DEAD:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4398E9DB
			/// @DnDParent : 7027AF44
			/// @DnDArgument : "expr" "spr_dead"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_dead;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 48ADA90D
		/// @DnDParent : 48FED2AB
		/// @DnDArgument : "const" "ps.AIR"
		case ps.AIR:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A0D4AF8
			/// @DnDParent : 48ADA90D
			/// @DnDArgument : "expr" "spr_jump"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_jump;
			break;
	}
}