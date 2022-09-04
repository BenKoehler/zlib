function(link_zlib target MOD)
    target_link_libraries(${target} ${MOD} ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/zlib/lib/libz.so)
    target_include_directories(${target} SYSTEM ${MOD} ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/zlib/include)
endfunction()
