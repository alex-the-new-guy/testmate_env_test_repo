

# a simple stub dll which loaded at program load time and thus required to launch
function(add_dll)
  set(target_name "test_dll")
  add_library(${target_name} SHARED "dll.cpp")

  set_target_properties(${target_name}
    PROPERTIES
      LINKER_LANGUAGE CXX
      RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/mydll"
      LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/mydll"
  )
  
endfunction()


function(add_test_exe_link1)
  set (target_name "test_exe_link1")
  add_executable(${target_name} "test.cpp")

  target_link_libraries(
    ${target_name}
    PRIVATE test_dll
    PRIVATE Catch2::Catch2WithMain
  )

  set_target_properties(${target_name}
  PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/testexe"
  )

  target_compile_definitions( ${target_name}
    PRIVATE "DLL_TEST"
  )

  
endfunction()

function(add_test_exe_link2)
  set (target_name "test_exe_link2")
  add_executable(${target_name} "test.cpp")

  target_link_libraries(
    ${target_name}
    PRIVATE test_dll
    PRIVATE Catch2::Catch2WithMain
  )

  set_target_properties(${target_name}
  PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/testexe"
  )

  target_compile_definitions( ${target_name}
    PRIVATE "DLL_TEST"
  )

  
endfunction()

set(project_name "testmate_test")

cmake_minimum_required(VERSION 3.15)

project(${project_name})

find_package(Catch2 3 REQUIRED)


add_dll()

add_test_exe_link1()
add_test_exe_link2()
