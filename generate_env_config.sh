LOCAL_PATH=$(cd `dirname $0`; pwd)
echo "LOCAL_PATH="$LOCAL_PATH

echo "copy and append following configs to ~/.bashrc"
echo "*******************************************************************************"
echo "export ANDROID_BUILD_ENV_PATH=$LOCAL_PATH"
echo "export ANDROID_PLATFORM_TOOLS=\$ANDROID_BUILD_ENV_PATH/runtime/platform-tools"
echo "export PATH=\$ANDROID_BUILD_ENV_PATH/bin:\$ANDROID_PLATFORM_TOOLS:\$PATH"
echo "*******************************************************************************"
