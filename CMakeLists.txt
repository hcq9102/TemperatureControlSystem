cmake_minimum_required(VERSION 3.10)

# 项目名称
project(TemperatureControlSystem)

# 设置C++标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加源文件
set(SOURCES
    embedded_temp_contrl.cpp
)

# 生成可执行文件
add_executable(temperature_control_system ${SOURCES})

# 如果需要线程库，添加链接
find_package(Threads REQUIRED)
target_link_libraries(temperature_control_system PRIVATE Threads::Threads)

