/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29F408A3
/// @DnDArgument : "var" "recolhido"
/// @DnDArgument : "value" "false"
if(recolhido == false)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 291AB7F2
	/// @DnDParent : 29F408A3
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "score_rescue"
	global.score_rescue += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BEBB254
	/// @DnDParent : 29F408A3
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "recolhido"
	recolhido = true;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7477EDF3
	/// @DnDParent : 29F408A3
	instance_destroy();
}