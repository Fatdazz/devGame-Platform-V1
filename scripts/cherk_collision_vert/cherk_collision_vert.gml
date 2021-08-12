/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 598B4BA6
/// @DnDComment : // Les actifs du script ont changé pour v2.3.0 Voir$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
/// @DnDArgument : "funcName" "cherk_collision_vert"
function cherk_collision_vert() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7933E6AA
	/// @DnDParent : 598B4BA6
	/// @DnDArgument : "var" "sing_vspeed"
	/// @DnDArgument : "value" "sign(vspeed)"
	var sing_vspeed = sign(vspeed);

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 59E69696
	/// @DnDParent : 598B4BA6
	/// @DnDArgument : "var" "place_empty(x,y,comp_entity)"
	/// @DnDArgument : "value" "false"
	while ((place_empty(x,y,comp_entity) == false)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6BA4FC0F
		/// @DnDInput : 2
		/// @DnDParent : 59E69696
		/// @DnDArgument : "expr" "-0.1 * sing_vspeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "var_1" "vspeed"
		y += -0.1 * sing_vspeed;
		vspeed = 0;
	}
}