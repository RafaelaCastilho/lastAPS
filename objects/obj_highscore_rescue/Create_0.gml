/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37D55FCE
/// @DnDArgument : "var" "global.score_rescue"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.highscore_rescue"
if(global.score_rescue > global.highscore_rescue)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2175EAC3
	/// @DnDParent : 37D55FCE
	/// @DnDArgument : "expr" "global.score_rescue"
	/// @DnDArgument : "var" "global.highscore_rescue"
	global.highscore_rescue = global.score_rescue;
}