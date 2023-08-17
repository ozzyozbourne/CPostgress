cmake_minimum_required(VERSION 3.26)
project(vul_tut C)

set(CMAKE_C_STANDARD 23)
set(SOURCES src/main.c)
set(PostgreSQL_INCLUDE_DIRS /usr/include/postgresql)
set(PostgreSQL_LIBRARIES pq)

find_package(PostgreSQL REQUIRED)

add_executable(main ${SOURCES})

# Include PostgreSQL headers
target_include_directories(main PRIVATE ${PostgreSQL_INCLUDE_DIRS})

# Link against the PostgreSQL library
target_link_libraries(main PRIVATE ${PostgreSQL_LIBRARIES})

