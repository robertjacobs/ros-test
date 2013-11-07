FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/action_test/msg"
  "CMakeFiles/ROSBUILD_genaction_msgs"
  "../msg/MessageAction.msg"
  "../msg/MessageGoal.msg"
  "../msg/MessageActionGoal.msg"
  "../msg/MessageResult.msg"
  "../msg/MessageActionResult.msg"
  "../msg/MessageFeedback.msg"
  "../msg/MessageActionFeedback.msg"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genaction_msgs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
