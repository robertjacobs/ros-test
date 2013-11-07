FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/action_test/msg"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/action_test/MessageAction.h"
  "../msg_gen/cpp/include/action_test/MessageGoal.h"
  "../msg_gen/cpp/include/action_test/MessageActionGoal.h"
  "../msg_gen/cpp/include/action_test/MessageResult.h"
  "../msg_gen/cpp/include/action_test/MessageActionResult.h"
  "../msg_gen/cpp/include/action_test/MessageFeedback.h"
  "../msg_gen/cpp/include/action_test/MessageActionFeedback.h"
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
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
