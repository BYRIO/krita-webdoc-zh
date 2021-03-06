.. meta::
   :description:
        Frequently asked Krita Questions.

.. metadata-placeholder

   :authors: - Scott Petrovic
             - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Raghavendra Kamath <raghavendr.raghu@gmail.com>
             - Boudewijn Rempt <boud@valdyas.org>
             - Alvin Wong
             - Dmitry Kazakov
             - Timothée Giet
             - Tokiedian
             - Nmaghfurusman
             - RJ Quiralta
             - Tyson Tan
   :license: GNU free documentation license 1.3 or later.

.. index:: FAQ, Frequently Asked Questions
.. _faq:
.. _KritaFAQ:


#########
Krita FAQ
#########

This page contains common problems people have with Krita. Note that we assume that you are using the latest version of Krita. Please verify that to make sure.

.. contents::

General
=======

General questions

What is Krita?
--------------

This is our vision for the development of Krita:

    Krita is a free and open source cross-platform application that offers an end-to-end solution for creating digital art files from scratch. Krita is optimized for frequent, prolonged and focused use.
    Explicitly supported fields of painting are illustrations, concept art, matte painting, textures, comics and animations.
    Developed together with users, Krita is an application that supports their actual needs and workflow. Krita supports open standards and interoperates with other applications.

Is it possible to use Krita in my own language, not English?
------------------------------------------------------------

Krita should automatically use the system language. If that is not the case, please follow these steps:

#. Settings --> Switch Application Language. A small window will appear.
#. Click Primary language and select your language.
#. Click OK to close the window.
#. Restart krita and it will be displayed in your selected language!

If this doesn't work, you might have to add a fall-back language as well. This is a bug, but we haven't found the solution yet.

Does Krita have layer clip or clipping mask?
--------------------------------------------

Krita has no clipping mask, but it has a clipping feature called
inherit alpha. Let's see :ref:`this page <clipping_masks_and_alpha_inheritance>` and learn how to do
clipping in Krita!

Windows: OBS can't record the Krita OpenGL canvas
-------------------------------------------------

The possible workarounds for this is to do either of the following:

#. Turn off OpenGL in Settings --> Configure Krita --> Display.
#. Or don't use the hardware accelerated mode (game recording mode) in
   OBS, thus capturing the whole desktop instead of attempting to capture
   only Krita.

You might also be able to work around the problem by using the ANGLE renderer instead of native OpenGL.

Where are the configuration files stored?
-----------------------------------------

These are stored at the following places for the following operating
systems:

Linux
    :file:`$HOME/.config/kritarc`
Windows
    :file:`%APPDATA%\\Local\\kritarc`
MacOS X
    :file:`$HOME/Library/Preferences/kritarc`

The kritarc file is the configuration file. Krita does not store settings in the Windows registry.

Resetting Krita configuration
-----------------------------

You can reset the Krita configuration in following way:

-  For Krita 3.0 and later: Delete/rename the kritarc file, found here:

    Linux
        :file:`$HOME/.config/kritarc`
    Windows
        :file:`%APPDATA%\\Local\\kritarc`
    MacOS X
        :file:`$HOME/Library/Preferences/kritarc`

There can be two other files you might want to remove: kritaopenglrc and
kritadisplayrc.

If the configuration was causing a crash, don't delete the mentioned file, but instead rename and
send it to us in order for us to figure what caused the crash.

Where are my resources stored?
------------------------------

Linux
    :file:`$HOME/.local/share/krita/`
Windows
    :file:`user\\Appdata\\Roaming\\krita\\` or :file:`%APPDATA%\\Roaming\\krita\\`
Mac OS X
    :file:`~/Library/Application Support/Krita/`


Krita tells me it can't find some files and then closes, what should I do?
--------------------------------------------------------------------------

Causes for this could be the following:

-  It might be that your download got corrupted and is missing files (common with bad wifi and bad internet connection in general), in that case, try to find a better internet connection before trying to download again. Krita should be around 80 to 100 mb in size when downloading.
-  It might be that something went wrong during installation. Check whether your harddrive is full and reinstall Krita with at least 120 MB of empty space. If not, and the problem still occurs, there might be something odd going on with your device and it's recommended to find a computer expert to diagnose what is the problem.
-  Some unzippers don't unpack our zipfiles correctly. The native ones on windows, OSX and most linux distributions should be just fine, and we recommend using them.
-  You manually, using a file manager deleted or moved resources around, and thus Krita cannot find them anymore.

What Graphics Cards does Krita support?
---------------------------------------

Krita can use OpenGL to accelerate painting and canvas zooming, rotation and panning. Nvidia and recent Intel GPUs give the best results. Make sure your OpenGL drivers support OpenGL 3.2 as the minimum. AMD/ATI GPU’s are known to be troublesome, especially with the proprietary drivers on Linux. However, it works perfectly with the Radeon free driver on linux for supported AMD GPU. Try to get a graphics card that can support OpenGL 3.2 or above for the best results, some examples:

.. Following graphics cards have been suggested by Tyson Tan on the basis that they all support 3.2

Intel
    Intel 3rd Generation HD Graphics, IvyBridge or Bay-Trail microarchitecture, released in 2012. Commonly available products: Celeron J1x00, N2x00, Celeron (G)1xx0, Pentium J2x00, N3500, Pentium (G)2xx0, Core i3/5/7-3xx0.
AMD/ATI
    Radeon HD 2000 family, TeraScale 1 microarchitecture, Released in 2007. Commonly available products: Radeon HD 2400 PRO, Radeon HD 2600 PRO, etc.
Nvidia
    GeForce 8 family, Tesla microarchitecture, released in 2006. Commonly available products: GeForce 8400 GS, GeForce 8800 GTS, 9800 GTX, GTS 250, etc.

*For Krita 3.3 or later:* Krita on Windows can use Direct3D 11 for graphics acceleration (through ANGLE). This is enabled automatically on systems with an Intel GPU.

I can't edit text from PSD files created by Photoshop
-----------------------------------------------------

There is no text support for psd file yet. The text will appear rasterized and converted into a paint layer.

How much memory does my image take?
-----------------------------------

For simple images, its easy to calculate: you multiply width \* height \* channels \* size of the channels (so, for a 1000×1000 16 bit integer rgba image: 1000 x 1000 x 4 x 2). You multiply this by the number of layers plus two (one for the image, one for the display). If you add masks, filter layers or clone layers, it gets more complicated.

Why do I get a checkerboard pattern when I use the eraser?
----------------------------------------------------------

You’re probably used to Gimp or Photoshop. The default background or first layer in these applications doesn’t have an alpha channel by default. Thus, on their background layer, the eraser paints in the background color.

In Krita, all layers have an alpha channel, if you want to paint in the background color, you should simply do it in a layer above the first one (Layer 1), that would prevent  you from erasing the white background color, making the checkerboard visible. You get the same effect in, say, gimp, if you create new image, add an alpha channel and then use the eraser tool. Most Krita users will actually start a sketch in Krita by adding a new blank layer first before doing anything else. (the INSert key is a useful shortcut here). That doesn’t use extra memory, since a blank layer or a layer with a default color just takes one pixel worth of memory.

Windows: Can I use Krita with Sandboxie?
----------------------------------------

No, this is not recommended. Sandboxie causes stuttering and freezes due to the way it intercepts calls for resources on disk.

Can krita work with 8 bit (indexed) images?
-------------------------------------------

No. Krita has been designed from the ground up to use real colors, not indexed palettes. There are no plans to support indexed color images, although Krita can export to some indexed color image formats, such as GIF. However, it does not offer detailed control over pixel values.


How can I produce a backtrace on Windows?
-----------------------------------------

.. seealso::

    :ref:`Dr. Mingw debugger <dr_minw>`

If you experience a crash on Windows, and can reproduce the crash, the bug report will be much more valuable if you can create a backtrace. A backtrace is somewhat akin to an airplane's blackbox, in that they tell what set of instructions your computer was running when it was crashing (where the crash happened), making it very useful to figure out why the crash happened.

The :ref:`Dr. Mingw debugger <dr_minw>` is bundled with Krita. Please visit the page :ref:`Dr. Mingw debugger <dr_minw>` for instructions on getting a backtrace with it.

Where can I find older versions of Krita?
-----------------------------------------

All the older versions of Krita that are still available can be found here:

-  `Very old builds <http://download.kde.org/Attic/krita>`_

On Windows, the Krita User Interface is too small on my HiDPI screen
--------------------------------------------------------------------

If you're using Windows, you can set the display scaling to 150% or 200%, and enable the experimental HiDPI support in the configurations:

-  On the menu, select :menuselection:`Settings --> Configure Krita`
-  On General page, switch to :guilabel:`Window` tab.
-  Check :guilabel:`Enable Hi-DPI support`
-  Restart Krita

You can also change the toolbox icon size by right-clicking on the toolbox and selecting a size.


I'm using Linux and Krita crashes on start
------------------------------------------

If you also see something like “QIODevice::seek: Invalid pos: -18” on the command line, it's quite likely that at one point you had the Deepin file manager installed. That comes with some qimageio plugins that are completely and utterly broken. Krita's reference images docker scans your Pictures folder on startup. It reads the images using Qt's QImageIO class, which loads that Deepin plugin. `The issue is reported to Deepin <https://github.com/linuxdeepin/deepin-image-viewer/issues/2>`_, but the Deepin developers don't seem convinced that it makes sense to check whether there are any bytes to read, before reading the bytes.

Tablets
=======

What tablets does Krita support?
--------------------------------

Krita isn’t much fun without a pressure sensitive tablet. If the tablet has been properly configured, Krita should work out of the box. 

On Windows, you need to either install the Wintab drivers for your tablet, or enable the Windows 8 Pointer Input option in Krita's settings.

You can find a community curated list of tablets supported by krita :ref:`here <list_supported_tablets>`.

If you're looking for information about tablets like the iPad or Android tablets, look :ref:`here <krita_android>`.


What if your tablet is not recognized by Krita?
-----------------------------------------------

Linux
~~~~~

We would like to see the full output of the following commands:

#. ``lsmod``
#. ``xinput``
#. ``xinput list-props`` (id can be fetched from the item 2)
#. Get the log of the tablet events (if applicable):

   #. Open a console application (e.g. Konsole on KDE)
   #. Set the amount of scrollback to 'unlimited' (for :program:`Konsole`: :menuselection:`Settings --> Edit Current Profile --> Scrolling --> Unlimited Scrollback`)
   #. Start Krita by typing 'krita' and create any document
   #. Press :kbd:`Ctrl + Shift + T`, you will see a message box telling the logging has started
   #. Try to reproduce your problem
   #. The console is now filled with the log. Attach it to a bug report

#. Attach all this data to a bug report using public paste services like
   paste.kde.org

Windows
~~~~~~~

First check whether your tablet's driver is correctly installed. Often, a driver update, a Windows update or the installation of Razer gaming mouse driver breaks tablets.

Then check whether switching to the Windows 8 Pointer API makes a difference: :menuselection:`Settings --> Configure Krita --> Tablet`.

If you still have problems with Windows and your tablet, then we cannot help you without a tablet log.

#. Install `DebugView <http://technet.microsoft.com/en-us/sysinternals/bb896647.aspx>`_ from the official Microsoft site
#. Start :program:`DebugView`
#. Start :program:`Krita`
#. Press :kbd:`Ctrl + Shift + T`, you will see a message box telling the logging has started
#. Try to reproduce your problem
#. Go back to DebugView and save its output to a file. Attach this file
   to a bug report or paste it using services like paste.kde.org.

However, in 100\% of the cases where Windows users have reported that their tablet didn't work over the past five years, the problem has been either a buggy driver or a broken driver installation, but not a bug in Krita.
   
   
How to fix a tablet offset on multiple screen setup on Windows
--------------------------------------------------------------

If you see that your tablet pointer has an offset when working with Krita canvas, it might be highly probable that Krita got incorrect screen resolution from the system. That problem happens mostly when an external monitor is present and when either a monitor or a tablet was connected after the system boot.

You can fix this issue manually by:

#. Put your stylus away from the tablet.
#. Start Krita without using a stylus, that is using a mouse or a keyboard.
#. Press Shift key and hold it.
#. Touch a tablet with your stylus so Krita would recognize it.

You will see a special dialog asking for the real screen resolution. Choose the correct value or enter it manually and press OK.

If you have a dual monitor setup and only the top half of the screen is reachable, you might have to enter the total width of both screens plus the double height of your monitor in this field.

If this didn't work, and if you have a Wacom tablet, an offset in the canvas can be caused by a faulty Wacom preference file which is not removed or replaced by reinstalling the drivers.

To fix it, use the “Wacom Tablet Preference File Utility” to clear all the preferences. This should allow Krita to detect the correct settings automatically.

.. warning::
    This will reset your tablets configuration, thus you will need to recalibrate/reconfigure it.

*For Krita 3.3 or later:* You can try to :ref:`enable “Windows 8+ Pointer Input” <tablet_settings>`, but some features might not work with it.

Microsoft Surface Pro and N-Trig
--------------------------------

Krita 3.3.0 and later supports the Windows Pointer API (Windows Ink) natively. Your Surface Pro or other N-Trig enabled pen tablet should work out of the box with Krita after you enable Windows Ink in :menuselection:`Settings --> Configure Krita --> Tablet`.

Tablet Pro and the Surface Pro
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Unlike Wacom's Companion, the Surface line of tablets doesn't have working hardware buttons. Tablet Pro is a (non-free) utility that puts virtual buttons on screen. Krita 3.1 and avobe will have predefined shortcut profiles to work with Tablet Pro.

http://tabletpro.net/

See http://www.youtube.com/watch?v=WKXZgYqC3tI for instructions.


Weird stuff happens on Windows, like ripples, rings, squiggles or poltergeists
------------------------------------------------------------------------------

Windows comes with a lot of settings to make it work with a pen. All these settings can be annoying. This tool can help you set the settings correctly when you're using a tablet:

https://github.com/saveenr/Fix_My_Pen/releases

Toolbox
=======

Toolbox missing
---------------

You can reset the Workspace by pressing the right most button on the toolbar, the Workspace switcher, and click on a desired Workspace from the list.

Or you can right-click on any docker title bar or open space in any toolbar, and select Toolbox. It's the first option.

Also, you can check the Settings menu, it has got a lot of interesting stuff, then go to the Dockers menu and select Toolbox.

Tool icons size is too big
--------------------------

Right click the toolbox to set the size.

Krita can't get maximized
-------------------------

This happens when your dockers are placed in such a way that the window cannot be made less high. Rearrange your Workspace.

Resources
=========

Is there a way to restore a default brush that I have mistakenly overwritten with new settings to default?
----------------------------------------------------------------------------------------------------------

Yes. First go to the resource folder, which is in

Linux
    :file:`$HOME/.local/share/krita/`
Windows
    :file:`user\\Appdata\\Roaming\\krita\\` or :file:`%APPDATA%\\Roaming\\krita\\`
OSX
    :file:`~/Library/Application Support/Krita/`

You can easily do this by going into :menuselection:`Settings --> Manage Resources --> Open Resource Folder`.

Then go into the paintoppressets folder and remove the latest created
file that you made of your preset.

After that go back to the resources folder and edit the blacklist file to
remove the previous paintoppreset so Krita will load it. (Yes, it is a
bit of a convoluted system, but at the least you don't lose your
brushes)

How do I set favorite presets?
------------------------------

Right-click a brush in the brush docker and assign it a tag. Then right-click on canvas to call popup palette, click the second right-most icon on the bottom-right of the palette, now you can pick the tag which contains the brush you assigned to it.

Can Krita load Photoshop Brushes?
---------------------------------

Yes, but there are limitations. You can load ABR files by using the by using the Import button in the Predefined brush tab in the brush editor. Since Adobe hasn’t disclosed the file format specification, we depend on reverse-engineering to figure out what to load, and currently that’s limited to basic features.

Krita is slow
=============

There is a myriad of reasons why this might be. Below is a short checklist.

-  Something else is hogging the cpu.
-  You are running Windows, and have 3rdparty security software like Sandboxie or Total Defender installed
-  you are working on images that are too big for your hardware (dimensions, channel depth or number of layers)
-  you do not have canvas acceleration enabled

Please also check this page: https://phabricator.kde.org/T7199

Slow start-up
-------------

You probably have too many resources installed. Deactivate some bundles under :menuselection:`Settings --> Manage Resources`.

If you're using Windows with the portable zip file, Windows will scan all files every time you start Krita. That takes ages. Either use the installer or tell Microsoft Security Essentials to make an exception for Krita.

Slow Brushes
------------

-  Check if you accidentally turned on the stabilizer in the tool options docker.
-  Try another scaling mode like trilinear. :menuselection:`Settings --> Configure Krita --> Display`.
-  Try a lower channel depth than 16-bit.
-  For NVidia, try a 16-bit floating point color space.
-  For AMD (Krita 2.9.10 and above), turn off the vector optimizations that are broken on AMD CPUs. :menuselection:`Settings --> Configure Krita --> Performance`.
-  It's a fairly memory hungry program, so 2GB of ram is the minimum, and 4 gig is the preferable minimum.
-  Check that nothing else is hogging your CPU
-  Check that Instant Preview is enabled if you're using bigger brushes (but for very small brushes, make sure is disabled).
-  Set brush precision to 3 or auto.
-  Use a larger value for brush spacing.
-  If all of this fails, record a video and post a link and description on the Krita forum.
-  Check whether OpenGL is enabled, and if it isn't, enable it. If it is enabled, and you are on Windows, try the Angle renderer. Or disable it.

Slowdown after a been working for a while
-----------------------------------------

Once you have the slowdown, click on the image-dimensions in the status bar. It will tell you how much RAM Krita is using, if it has hit the limit, or whether it has started swapping. Swapping can slow down a program a lot, so either work on smaller images or turn up the maximum amount of ram in :menuselection:`Settings --> Configure Krita --> Performance --> Advanced Tab`.

Tools
=====

Why does the Transform Tool give a good result and then get blurry upon finalizing?
-----------------------------------------------------------------------------------

The transform tool makes a preview that you edit before computing the finalized version. As this preview is using the screen resolution rather than the image resolution, it may feel that the result is blurry compared to the preview. See https://forum.kde.org/viewtopic.php?f=139&t=127269 for more info.


License, rights and the Krita Foundation
========================================

Who owns Krita?
---------------

The Stichting Krita Foundation owns the Krita trademark. The copyright on the source code is owned by everyone who has worked on the source code.

Who and what is Kiki?
---------------------

Kiki is a cybersquirrel. She’s our mascot and has been designed by Tyson Tan. We choose a squirrel when we discovered that ‘krita’ is the Albanian word for Squirrel.

Why is Krita Free?
------------------

Krita is developed as `free software <http://www.gnu.org/>`_ within the KDE community. We believe that good tools should be available for all artists. You can also buy Krita on the Windows Store if you want to support Krita's development or want to have automatic updates to newer versions.

Can I use Krita commercially?
-----------------------------

Yes. What you create with Krita is your sole property. You own your work and can license your art however you want. Krita’s GPL license applies to Krita’s source code. Krita can be used commercially by artists for any purpose, by studios to make concept art, textures, or vfx, by game artists to work on commercial games, by scientists for research, and by students in educational institutions.

If you modify Krita itself, and distribute the result, you have to share your modifications with us. Krita’s GNU GPL license guarantees you this freedom. Nobody is ever permitted to take it away.

.. _krita_android:
.. _krita_ios:

Can I get Krita for iPad? for Android?
--------------------------------------

Not at this point in time.

Who translates Krita
--------------------

Krita is a `KDE application <http://www.kde.org/>`_ — and proud of it! That means that Krita’s translations are done by `KDE localization teams <http://i18n.kde.org/>`_. If you want to help out, join the team for your language! There is another way you can help out making Krita look good in any language, and that is join the development team and fix issues within the code that make Krita harder to translate.

Reference
=========

https://answers.launchpad.net/krita-ru/+faqs
