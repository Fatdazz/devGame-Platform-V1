/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 521073B6
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "cherk_facing"
function cherk_facing() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B8F84F3
	/// @DnDParent : 521073B6
	/// @DnDArgument : "var" "hspeed"
	/// @DnDArgument : "not" "1"
	if(!(hspeed == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B7EA68E
		/// @DnDParent : 3B8F84F3
		/// @DnDArgument : "var" "hspeed"
		/// @DnDArgument : "op" "2"
		if(hspeed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 049B9B1E
			/// @DnDParent : 7B7EA68E
			/// @DnDArgument : "value" "1"
			return 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5E4134B4
		/// @DnDParent : 3B8F84F3
		else
		{
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 26254E5D
			/// @DnDParent : 5E4134B4
			/// @DnDArgument : "value" "-1"
			return -1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 072035F9
	/// @DnDParent : 521073B6
	/// @DnDArgument : "value" "1"
	return 1;
}