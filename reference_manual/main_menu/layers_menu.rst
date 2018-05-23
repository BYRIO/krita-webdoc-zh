.. meta::
   :description:
        The layers menu in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. index:: Layers, Cut Layer, Copy Layer, Paste Layer, Convert, Import, Export, Transform, Metadata, Histogram, Flatten, Layer Style
.. _layers_menu:

======
Layers
======

These are the topmenu options are related to Layer Management, check out that page first, if you haven't.

Cut Layer(3.0+)
    Cuts the whole layer rather than just the pixels.
Copy Layer(3.0+)
    Copy the whole layer rather than just the pixels.
Paste Layer(3.0+)
    Pastes the whole layer if any of the top two actions have been taken.
New
    Organizes the following actions:

    Paint Layer
        Add a new paint layer
    New layer from visible(3.0.2+)
        Add a new layer with the visible pixels.
    Duplicate Layer or Mask
        Duplicates the layer.
    Cut Selection to New Layer
        Single action for cut+paste
    Copy Selection to New Layer
        Single action for copy+paste

Import/Export
    Organizes the following actions:

    Save Layer or Mask
        Saves the Layer or Mask as a separate image.
    Save Group Layers
        Saves the top-level group layers as single-layer images.
    Import Layer
        Import an image as a layer into the current file.
    Import as...
        Import an image as a specific layer type. The following layer types are supported:
                
            * Paint layer
            * Transparency Mask
            * Filter Mask
            * Selection Mask

Convert
    Organizes the following actions:

    Convert a layer to...

        Convert to Paint Layer
            Convert a mask or vector layer to a paint layer.
        Transparency Mask
            Convert a layer to a transparency mask. The image will be converted to grayscale first, and these grayscale values are used to drive the transparency.
        Filter Mask
            Convert a layer to a filter mask. The image will be converted to grayscale first, and these grayscale values are used to drive the filter effect area.
        Selection Mask
            Convert a layer to a selection mask. The image will be converted to grayscale first, and these grayscale values are used to drive the selected area.
        Convert Group to Animated Layer
            This takes the images in the group layer and makes them into frames of an animated layer.
        Convert Layer Color Space
            This only converts the color space of the layer, not the image.

Select(3.0+):
    Organizes the following actions:

    All layers
        Select all layers.
    Visible Layers
        Select all visible layers.
    Invisible Layers
        Select all invisible layers, useful for cleaning up a sketch.
    Locked Layers
        Select all locked layers.
    Unlocked Layers
        Select all unlocked layers.

Group
    Organizes the following actions:

    Quick Group(3.0+)
        Adds all selected layers to a group.
    Quick Clipping Group(3.0+)
        Adds all selected layers to a group and adds a alpha-inherited layer above it.
    Quick Ungroup
        Ungroups the activated layer.

Transform
    Organizes the following actions:

    Mirror Layer Horizontally
        Mirror the layer horizontally using the image center.
    Mirror Layer Vertically
        Mirror the layer vertically using the image center.
    Rotate
        Rotate the layer around the image center.
    Scale Layer
        Scale the layer by the given amounts using the given interpolation filter.
    Shear Layer
        Shear the layer pixels by the given X and Y angles.
    Offset Layer
        Offset the layer pixels by a given amount.

Split...
    Organizes the following actions:

    Split Alpha
        Split the image transparency into a mask. This is useful when you wish to edit the transparency seperately.
    Split Layer
        Split the layer into given color fields.
    Clones Array
        A complex bit of functionality to generate clone-layers for quick sprite making.

Edit Metadata
    Each layer can have it's own meta-data.
Histogram
    Shows a histogram.
Merge With Layer Below
    Merge a layer down.
Flatten Layer
    Flatten a Group Layer or flatten the masks into any other layer.
Rasterize Layer
    For making vectors into raster layers.
Flatten Image
    Flatten all layers into one.
Merge Selected Layers
    Merge the layers that were selected with multi-selection in the Layer Docker.
Layerstyle(2.9.5+)
    Set the PS-style layerstyle
