.. meta::
   :description:
        The reference images tool

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. index:: Tools, Reference
.. _reference_images_tool:

=====================
Reference Images Tool
=====================

.. versionadded:: 4.1

The reference images tool is a replacement for the reference images docker. You can use it to load images from your disk as reference, which can then be moved around freely on the canvas and placed wherever.
Tool Options

Add reference image
    Load a single image to display on the canvas.
Load Set
    Load a set of reference images.
Save Set
    Save a set of reference images.
Delete all reference images
    Delete all the reference images
Keep aspect ratio
    When toggled this will force the image to not get distorted.
Opacity
    Lower the opacity.
Saturation
    Desaturate the image. This is useful if you only want to focus on the light/shadow instead of getting distracted by the colors.
Storage mode
    How is the reference image stored.

    Embed to \*.kra
        Store this reference image into the kra file. This is recommended for small vital files you'd easily lose track of otherwise.
    Link to external file.
        Only link to the reference image, krita will open it from the disk everytime it loads this file. This is recommended for big files, or files that change a lot.