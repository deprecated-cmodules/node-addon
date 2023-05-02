# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/range
    REF boost-1.82.0
    SHA512 64fc40af785c29ee358ad1b9a1c140cfb4e58648fac07a3151f6b1a13586642dcb11226a8409ccdcfe9555fa7b2fc0ee485b0f717282690f77125a115d60ad4b
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})