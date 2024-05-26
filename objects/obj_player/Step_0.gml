/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A09FA15
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height/2"
if(y < room_height/2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32CAB2DA
	/// @DnDParent : 7A09FA15
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 430B5D52
		/// @DnDParent : 32CAB2DA
		/// @DnDArgument : "var" "downspeed"
		/// @DnDArgument : "value" "-vspeed"
		var downspeed = -vspeed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 15F367ED
		/// @DnDApplyTo : {obj_move_parent}
		/// @DnDParent : 32CAB2DA
		/// @DnDArgument : "value" "downspeed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		with(obj_move_parent) {
		y += downspeed;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 767B75AD
		/// @DnDParent : 32CAB2DA
		/// @DnDArgument : "value" "room_height/2"
		/// @DnDArgument : "instvar" "1"
		y = room_height/2;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 66B71A3F
		/// @DnDParent : 32CAB2DA
		/// @DnDArgument : "var" "back_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "layer_get_y"
		/// @DnDArgument : "arg" ""Background""
		var back_y = layer_get_y("Background");
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 07D36198
		/// @DnDInput : 2
		/// @DnDParent : 32CAB2DA
		/// @DnDArgument : "function" "layer_y"
		/// @DnDArgument : "arg" ""Background""
		/// @DnDArgument : "arg_1" "back_y + downspeed"
		layer_y("Background", back_y + downspeed);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 6E574F10
		/// @DnDParent : 32CAB2DA
		/// @DnDArgument : "value" "downspeed / 100"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "score_height"
		global.score_height += downspeed / 100;
	}
}