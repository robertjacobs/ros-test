FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/action_test/msg"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/action_test/msg/__init__.py"
  "../src/action_test/msg/_MessageAction.py"
  "../src/action_test/msg/_MessageGoal.py"
  "../src/action_test/msg/_MessageActionGoal.py"
  "../src/action_test/msg/_MessageResult.py"
  "../src/action_test/msg/_MessageActionResult.py"
  "../src/action_test/msg/_MessageFeedback.py"
  "../src/action_test/msg/_MessageActionFeedback.py"
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
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
