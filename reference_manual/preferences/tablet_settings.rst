.. meta::
   :description:
        Configuring the tablet in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
             - Alvin Wong
   :license: GNU free documentation license 1.3 or later.

.. index:: Preferences, Settings, Tablet, Pressure Curve
.. _tablet_settings:

===============
Tablet Settings
===============

.. image:: /images/en/Krita_Preferences_Tablet_Settings.png

Tablet 
    Input Pressure Global Curve : This is the global curve setting that your tablet will use in Krita. The settings here will make your tablet feel soft or hard globally.
For Krita 3.3 or later:Tablet Input API
    on Windows 8 or above only

    WinTab
        Use the WinTab API to receive tablet pen input. This is the API being used before Krita 3.3. This option is recommended for most Wacom tablets.
    Windows 8+ Pointer Input
        Use the Pointer Input messages to receive tablet pen input. This option depends on Windows Ink support from the tablet driver. This is a relatively new addition so it's still considered to be experimental, but it should work well enough for painting. You should try this if you are using an N-Trig device (e.g. recent Microsoft Surface devices) or if your tablet does not work well with WinTab.


Tablet Tester
-------------

.. versionadded:: 4.1

This is a special feature for debugging tablet input. When you click on it, it will open a window with two sections. The left section is the **Drawing Area** and the right the **Text Output**.

If you draw over the Drawing Area, you will see a line appear. If your tablet is working it should be both a red and blue line.

The red line represents mouse events. Mouse events are the most basic event that Krita can pick up. However, mouse events have crude coordinates and have no pressure sensitivity.

The blue line represents the tablet events. The tablet events only show up when Krita can access your tablet. These have more precise coordinates and access to sensors like pressure sensitivity.

.. important::

    If you have no blue line when drawing on the lefthand drawing area, Krita cannot access your tablet. Check out the :ref:`page on drawing tablets <drawing_tablets>` for suggestions on what is causing this.

When you draw a line, the output on the right will show all sorts of text output. This text output can be attached to a help request or a bug report to figure out what is going on.

External Links
--------------

`David Revoy wrote an indepth guide on using this feature to maximum advantage. <http://www.davidrevoy.com/article182/calibrating-wacom-stylus-pressure-on-krita>`_
