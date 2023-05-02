find_package(hdf5 CONFIG REQUIRED)
if(NOT TARGET hdf5::hdf5 AND (TARGET hdf5::hdf5-static OR TARGET hdf5::hdf5-shared))
    add_library(hdf5::hdf5 INTERFACE IMPORTED)
    if(TARGET hdf5::hdf5-shared)
        target_link_libraries(hdf5::hdf5 INTERFACE hdf5::hdf5-shared)
    elseif(TARGET hdf5::hdf5-static)
        target_link_libraries(hdf5::hdf5 INTERFACE hdf5::hdf5-static)
    endif()
endif()

if(NOT TARGET hdf5::hdf5_hl AND (TARGET hdf5::hdf5_hl-static OR TARGET hdf5::hdf5_hl-shared))
    add_library(hdf5::hdf5_hl INTERFACE IMPORTED)
    if(TARGET hdf5::hdf5_hl-shared)
        target_link_libraries(hdf5::hdf5_hl INTERFACE hdf5::hdf5_hl-shared)
    elseif(TARGET hdf5::hdf5_hl-static)
        target_link_libraries(hdf5::hdf5_hl INTERFACE hdf5::hdf5_hl-static)
    endif()
endif()

set(HDF5_IS_PARALLEL "${HDF5_ENABLE_PARALLEL}" CACHE BOOL "" FORCE)
set(HDF5_FOUND ON CACHE BOOL "" FORCE)
set(hdf5_FOUND ON CACHE BOOL "" FORCE)