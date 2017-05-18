# cmake/projects/Example/hunter.cmake

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    doctest
    VERSION
    "1.2.0"
    URL
    "https://github.com/onqtam/doctest/archive/1.2.0.tar.gz"
    SHA1
    53f87a422c7cc842d9b3e06d5a7eb7e35307e6ac
)

hunter_cmake_args(doctest CMAKE_ARGS
    DOCTEST_WITH_TESTS=OFF
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(doctest)
hunter_download(PACKAGE_NAME doctest)
