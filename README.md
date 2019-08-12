# (EN) TWRP Recovery for smartphone Samsung J3 2017 (SM-J330F) Android 9 Pie.

# (RU) TWRP Recovery для смартфона Samsung J3 2017 (SM-J330F) Android 9 Pie.

# (ES) TWRP Recovery para teléfono inteligente Samsung J3 2017 (SM-J330F) Android 9 Pie.


# Recovery assembly manual:

1. We go into the terminal and enter:

cd ~ && sudo apt install git axel -y && git clone https://github.com/akhilnarang/scripts && cd scripts && sudo bash setup/android_build_env.sh && sudo bash setup/install_android_sdk.bash

Java JDK installation:

sudo apt-get install openjdk-8-jdk

We return to the home directory

cd

2. Download minimal Omni sources:

Create an Omni folder:

mkdir ~/omni

We go into it:

cd ~/omni

Initialize the source repository:

repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

Download the source:

repo sync --force-sync -j16

We return to the home directory:

cd

3. Download device recovery tree:

Go to the Omni folder:

cd ~/omni

Clone the repository:

git clone https://github.com/kosoymiki/TWRP_j3y17lte.git device/samsung/j3y17lte

We return to the home directory:

cd

4. Download recovery sources:

Delete the folder along the path omni/bootable/recovery

Go to the bootable folder:

cd ~/omni/bootable

Clone the repository:

git clone https://github.com/omnirom/android_bootable_recovery.git -b android-9.0

Rename folder:

mv android_bootable_recovery recovery

We return to the home directory:

cd

5. Recovery assembly:

Go to the Omni folder:

cd ~/omni

Enter the commands:

. build/envsetup.sh

lunch

A dialog box appears here, select the number with the name omni_j3y17lte-eng.

Enter:

export ALLOW_MISSING_DEPENDENCIES=true

We start assembly:

make -j# recoveryimage 

# - the number of processor cores of your computer.

We take the finished recovery along the path omni/out/target/product/




