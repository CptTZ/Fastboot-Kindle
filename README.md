Fastboot For Kindle
===
Kindle Fastboot刷机救砖工具。   
An effective tool to unbrick your Kindle(Hope you will never use it).  
************
This is a version of Android's "fastboot" for the Kindle 4, Kindle Touch and Kindle PaperWhite. It will NOT work with Android phones.  
I have tested it with my Kindle PaperWhile 2(4G WiFi Model).  
No Windows version available at this time.

# How to Compile this tool
Remember to install gcc first.   
To build it on OS X, run 'make'.    
To build it on Linux, run 'make linux'.    

# How to Enter Fastboot
1. Having the Serial Console ready(minicom in Linux, 115200 8N1).  
2. Get your kindle into UBoot Mode (Check http://www.mobileread.com/forums or just press 'Enter' repeatedly), then type `bist`.  
3. In 'bist' mode, type `fastboot`, then you can read something like 'Fastboot enabled' in your serial console. Meanwhile, your serial console won't accept any input for now.  
4. run `dmesg | tail` on your computer, you will see info like 'Amazon, Kindle', that means your device in now in Fastboot mode.  

# How to use this tool
**Remember to run this tool as ROOT.**  
I'm using my KPW2 for an example, images downloaded from https://ixtab.tk/kindle-touch-images/PW2/ 
Just execute the following commands(Don't just copy, alter the commands when necessary, **make sure there is a dot and splash before fastboot, or you will be running Google's Android fastboot utility.**)  
1. `sudo ./fastboot flash system mmcblk0p1.img`.  
2. `sudo ./fastboot flash kernel main_kernel.img`.  
3. `sudo ./fastboot flash diags mmcblk0p2.img`.    
4. `sudo ./fastboot flash diags_kernel diags_kernel.img`.  
5. `sudo ./fastboot setvar bootmode diags`.   
6. `sudo ./fastboot reboot`.   
After reboot, your device should be in Diag mode, then you can proceed.
********
> 中文版我懒得写了，欢迎补充或交流。   
> Please feed back when it works.
