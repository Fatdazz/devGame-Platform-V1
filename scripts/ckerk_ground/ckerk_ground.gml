/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3B946D6E
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "ckerk_ground"
function ckerk_ground() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7A5E1782
	/// @DnDParent : 3B946D6E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_colision"
	var l7A5E1782_0 = instance_place(x + 0, y + 1, obj_colision);
	if ((l7A5E1782_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 120DEBC8
		/// @DnDParent : 7A5E1782
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "isGround"
		isGround = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 618F534F
	/// @DnDParent : 3B946D6E
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D213054
		/// @DnDParent : 618F534F
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "isGround"
		isGround = false;
	}
}