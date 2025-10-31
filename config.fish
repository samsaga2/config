if status is-interactive
    # Commands to run in interactive sessions can go here
end


set -x Qt6_DIR ~/Qt/6.10.0/gcc_64
set -x CMAKE_PREFIX_PATH $Qt6_DIR/lib/cmake/Qt6
set -x PATH $Qt6_DIR/bin:$PATH
set -x QTFRAMEWORK_BYPASS_LICENSE_CHEC
set -x HALCONROOT opt/MVTec/HALCON-25.05-Progres
