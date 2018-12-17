LOCAL_PATH=$(cd `dirname $0`; pwd)
echo "LOCAL_PATH="$LOCAL_PATH

#--------copy 70-persistent-net.rules to /etc/udev/rules.d/ if no permissions to adb devices
#echo "copy $LOCAL_PATH/70-persistent-net.rules to /etc/udev/rules.d/"
sudo cp -rf $LOCAL_PATH/70-persistent-net.rules /etc/udev/rules.d/

#--------create soft link for aapt
sudo ln -s $LOCAL_PATH/runtime/build-tools/27.0.3/aapt /usr/bin/aapt
sudo ln -s $LOCAL_PATH/runtime/platform-tools/adb /usr/bin/adb
sudo ln -s $LOCAL_PATH/runtime/platform-tools/fastboot /usr/bin/fastboot

echo "           "
echo "copy and append following configs to /etc/profile OR ~/.bashrc if needed"
echo "*******************************************************************************"
echo "export ANDROID_BUILD_ENV_PATH=$LOCAL_PATH"
echo "export ANDROID_PLATFORM_TOOLS=\$ANDROID_BUILD_ENV_PATH/runtime/platform-tools"
echo "export ANDROID_BUILD_TOOLS=\$ANDROID_BUILD_ENV_PATH/runtime/build-tools/27.0.3"
echo "export PATH=\$PATH:\$ANDROID_BUILD_ENV_PATH/bin:\$ANDROID_BUILD_TOOLS:\$ANDROID_PLATFORM_TOOLS"

#set default out dir when build android source code
#echo "export OUT_DIR_COMMON_BASE=output"
#---fix compile error of android7.1.2 on ubuntu18.04
echo "export LC_ALL=C"
echo "*******************************************************************************"
