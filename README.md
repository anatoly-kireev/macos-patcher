# macOS Patcher
macOS Patcher is a command line tool for running macOS Sierra, macOS High Sierra, macOS Mojave, and macOS Catalina on unsupported Macs

# Catalina Unus
Catalina Unus is a command line tool for running macOS Catalina on one HFS or APFS volume. It's integrated into macOS Patcher so you if you have a Mac supported by it, you can use it by running sudo ./macOS\ Patcher.sh -unus.

It's highly recommended to backup your Mac, do a clean install, and migrate the data during setup, cause Catalina Unus has trouble with Catalina's data migration process.

# Supported Macs

## MacBooks
- MacBook4,1
- MacBook5,1
- MacBook5,2
- MacBook6,1
- MacBook7,1

## MacBook Airs
- MacBookAir2,1
- MacBookAir3,1
- MacBookAir3,2
- MacBookAir4,1
- MacBookAir4,2

## MacBook Pros
- MacBookPro4,1
- MacBookPro5,1
- MacBookPro5,2
- MacBookPro5,3
- MacBookPro5,4
- MacBookPro5,5
- MacBookPro6,1
- MacBookPro6,2
- MacBookPro7,1
- MacBookPro8,1
- MacBookPro8,2
- MacBookPro8,3

## iMacs
- iMac7,1
- iMac8,1
- iMac9,1
- iMac10,1
- iMac10,2
- iMac11,1
- iMac11,2
- iMac11,3
- iMac12,1
- iMac12,2

## Mac minis
- Macmini3,1
- Macmini4,1
- Macmini5,1
- Macmini5,2
- Macmini5,3

## Mac Pros
- MacPro3,1
- MacPro4,1

## Xserves
- Xserve2,1
- Xserve3,1

# Brightness Slider and NoSleep

If you have a MacBook4,1, you might notice two little applications have been installed along with macOS Patcher's other patches. They help solve specific issues on the MacBook4,1 and should be opened and configured after patching. NoSleep is open source and can be found on GitHub. Brightness Slider is made by ACT Productions and can be found on the Mac App Store.

# Graphics acceleration

If you have a MacBook4,1, your Mac won't support graphics acceleration with this patcher. This means brightness control and sleep won't work (see above) and applications that rely on your graphics card will perform slower or will simply not work.

# Usage

## Create Installer Drive

### Step 1

Download the latest version of the patcher from the GitHub releases page.

### Step 2

Open Disk Utility and select your installer drive, then click Erase.

### Step 3

Select Mac OS Extended Journaled and click Erase.

### Step 4

Unzip the download and open Terminal. Type chmod +x and drag the script file to Terminal, then hit enter. Then type sudo, drag the script file to Terminal, and hit enter.

### Step 5

Drag your installer app to Terminal. Then select your installer drive from the list and copy and paste the number.

## Erase System Drive

These Steps are optional. A clean install is recommended but not required. It's recommended to make a Time Machine backup before erasing your system drive.

### Step 1

Open the Utilities menu and click Disk Utility. Select your system drive and click Erase.

### Step 2

Select Mac OS Extended Journaled or APFS and click Erase. Don't select APFS if your Mac doesn't support APFS.

## Install the OS

### Step 1

Boot from your installer drive by holding down the option key when booting and selecting your installer drive from the menu. Then select your language from the list.

### Step 2

Close Disk Utility if you used it to erase your system drive, then click Continue.

### Step 3

Select your system drive, the drive to install the OS on, and click Continue.

Wait 35-45 minutes and click Reboot when the installation is complete. Then boot into your installer drive using the previous instructions.

## Patch the OS

This is the important part. This is the part where you install the patcher files onto your system. If you miss this part or forget it then your system won't boot.

### Step 1

Open the Utilities menu and click Terminal. Type patch and hit enter. Make sure to select the model your drive will be used with. Then select your system drive from the list and copy and paste the number.

Wait 5-10 minutes and reboot when the patch tool has finished patching your system drive. Then boot into your system drive and setup the OS.

## Restore the OS

If you've switched to a new Mac or just want to remove the patcher files from your system, you can run the restore tool from your installer drive.

### Step 1

Boot from your installer drive by holding down the option key when booting and selecting your installer drive from the menu. Then select your language from the list.

### Step 2

Open the Utilities menu and click Terminal. Type restore and hit enter. Make sure to select the model you selected when you last patched. Then select your system drive from the list and copy and paste the number.

### Step 3

You can choose to remove all system patches or the APFS system patch if you have it installed. Don't remove the APFS system patch if your Mac doesn't support APFS.

Wait 5-10 minutes if you selected to remove all system patches, then reinstall the OS. If you selected to remove the APFS system patch, then you don't need to reinstall the OS, and you can boot back into your system drive afterwards