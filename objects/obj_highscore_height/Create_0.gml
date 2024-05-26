/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CA4DF48
/// @DnDArgument : "var" "global.score_height"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.highscore_height"
if(global.score_height > global.highscore_height)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E6F7ADC
	/// @DnDParent : 3CA4DF48
	/// @DnDArgument : "expr" "global.score_height"
	/// @DnDArgument : "var" "global.highscore_height"
	global.highscore_height = global.score_height;
}