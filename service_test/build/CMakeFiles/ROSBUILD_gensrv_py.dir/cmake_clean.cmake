FILE(REMOVE_RECURSE
  "../srv_gen"
  "../srv_gen"
  "../src/service_test/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/service_test/srv/__init__.py"
  "../src/service_test/srv/_Message.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
