/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 12477DAD
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "cherk_collision_hori"
function cherk_collision_hori() 
{
	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 682FB72D
	/// @DnDParent : 12477DAD
	/// @DnDArgument : "var" "place_empty(x+hspeed,y,comp_entity)"
	/// @DnDArgument : "value" "false"
	while ((place_empty(x+hspeed,y,comp_entity) == false)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52A781BF
		/// @DnDParent : 682FB72D
		/// @DnDArgument : "expr" "-0.5 * sign(hspeed)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += -0.5 * sign(hspeed);
	}
}