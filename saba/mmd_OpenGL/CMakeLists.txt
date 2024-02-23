# Example

# simple_mmd_viewer_glfw
add_executable(opengl_mmd_viewer
opengl_mmd_viewer.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/../external/gl3w/src/gl3w.c
)

set(opengl_mmd_viewer_LIBRARIES
    ${OPENGL_LIBRARY}
    Saba
)
if(SABA_FORCE_GLFW_BUILD)
    list(APPEND opengl_mmd_viewer_LIBRARIES glfw)
else()
    list(APPEND opengl_mmd_viewer_LIBRARIES ${GLFW_LIBRARIES})
endif()
if(UNIX)
    list(APPEND opengl_mmd_viewer_LIBRARIES ${CMAKE_DL_LIBS})
endif()
target_link_libraries(opengl_mmd_viewer ${opengl_mmd_viewer_LIBRARIES})

add_custom_command(TARGET opengl_mmd_viewer POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_CURRENT_SOURCE_DIR}/../viewer/Saba/Viewer/resource
    $<TARGET_FILE_DIR:opengl_mmd_viewer>/resource
)