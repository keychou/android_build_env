LOCAL_PATH=$(cd `dirname $0`; pwd)
echo "LOCAL_PATH="$LOCAL_PATH

#copy 70-persistent-net.rules to /etc/udev/rules.d/ if no permissions to adb devices
echo "copy $LOCAL_PATH/70-persistent-net.rules to /etc/udev/rules.d/"
sudo cp -rf $LOCAL_PATH/70-persistent-net.rules /etc/udev/rules.d/
echo "           "
echo "copy and append following configs to ~/.bashrc if needed"
echo "*******************************************************************************"
echo "export ANDROID_BUILD_ENV_PATH=$LOCAL_PATH"
echo "export ANDROID_PLATFORM_TOOLS=\$ANDROID_BUILD_ENV_PATH/runtime/platform-tools"
echo "export PATH=\$ANDROID_BUILD_ENV_PATH/bin:\$ANDROID_PLATFORM_TOOLS:\$PATH"
echo "*******************************************************************************"
