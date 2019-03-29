AUX_SOURCE_DIRECTORY(. SRC_LIST)

add_executable(send ${SRC_LIST})

target_link_libraries(
    send
    muduo_net
    muduo_base
    json_linux-gcc-5.4.0_libmt
    pthread
    lcm
    )

