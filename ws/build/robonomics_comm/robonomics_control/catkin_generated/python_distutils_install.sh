#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_control"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/parallels/energyhack_2018/ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/parallels/energyhack_2018/ws/install/lib/python2.7/dist-packages:/home/parallels/energyhack_2018/ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/parallels/energyhack_2018/ws/build" \
    "/usr/bin/python2" \
    "/home/parallels/energyhack_2018/ws/src/robonomics_comm/robonomics_control/setup.py" \
    build --build-base "/home/parallels/energyhack_2018/ws/build/robonomics_comm/robonomics_control" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/parallels/energyhack_2018/ws/install" --install-scripts="/home/parallels/energyhack_2018/ws/install/bin"
