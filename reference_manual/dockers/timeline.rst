.. meta::
   :description:
        Overview of the timeline docker.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Dmitry Kazakov
             - Emmet O'Neill
   :license: GNU free documentation license 1.3 or later.

.. index:: Animation, Timeline, Frame
.. _timeline_docker:

===============
Timeline Docker
===============

The **Timeline Docker** works in tandem with the :ref:`animation_docker` at the heart of :program:`Krita`'s animation tools. While the Animation Docker provides access to the fundamental controls for playing back and editing animations, the Timeline Docker contains the layered frames and specific timings that define your animation. In other words, the Timeline Docker is the digital equivalent to a traditional animator's "dope sheet".

.. image:: /images/en/Timeline_docker.png
   :align: center

Legend:
-------

**A. Layer List --** This area contains some subset of the layers of your current document. The currently active layer is always shown and can be "pinned" to the timeline using the :guilabel:`Show in Timeline` menu action. Also, Layers that are created via the Timeline or added using the :guilabel:`Add Existing Layer` submenu are automatically pinned to the timeline. Each layer has properties that can also be toggled here (visible, locked, show onion skins, etc.). 

    * **Active Layer**
        A highlighted row in the table show the currently active layer. One can change which layer is active by clicking on the layer's name within the left header. It is *not* possible to change active layer by clicking inside the table in order to not disturb the user when scrubbing and editing frame positions on the timeline.

**B. Frame Table --** The Frame Table is a large grid of cells which can either hold a single frame or be empty. Each row of the Frame Table represents an *animation layer* and each column represents a *frame timing*. Just like the Layer List, the active layer is highlighted across the entire Frame Table. It's important to understand that frame timings are not based on units of time like seconds, but are based on frames which can then be played back at any speed, depending on the :ref:`animation_docker`'s *frame rate* and *play speed* settings. 

	Frames can be moved around the timeline by simply left-clicking and dragging from one frame to another slot, even across layers. Furthermore, holding :kbd:`ctrl` while moving creates a copy. Right-clicking anywhere in the Frame Table will bring up a helpful context menu for adding, removing, copying, and pasting frames or adjusting timing with holds.

    * **Current Selection:**
        Frames highlighted in orange represent a selection or multiple selections, which can be created by mouse or keyboard. While multiple frames are selected, right-clicking anywhere in the Frame Table will bring up a context menu that will allow for adding or removing frames or holds within the currently selection. Finally, it is also possible to have multiple non-contiguous/separate selections if needed.
 
        *WARNING:* Painting always happens only in the *active frame* (represented by a small dot), which is not necessarily part of your current selection.

    * **Keys, Blanks, and Holds:**
        The Timeline Docker now shows us even more useful information about both what is there as well as what is not. **Key frames** which contain drawings are still displayed as *filled blocks* within a cell, while **blank** or empty key frames are shown as a *hollow outline*. In Krita, every drawn frame is automatically held until the next frame; these **holds** are now clearly shown with a *colored line* across all held frames. The color of frames can be set per-frame by the animator using the right-click menu, and is a matter of personal workflow. 

**C. Frame Timing Header --** The Frame Timing Header is a ruler at the top of the Frame Table. This header is divided into small notched sections which are based on the current *frame rate* (set in the :ref:`animation_docker`). Integer multiples of the frame rate have a subtle double-line mark, while smaller subdivisions have small single-line marks. Each major notch is marked with a helpful *frame number*.

    * **Cached Frames:**
        The Frame Timing Header also shows important information about which frames are currently *cached*. When something is said to be "cached", that means that it is stored in your device's working memory (RAM) for extra fast access. Cached frames are shown by the header with a small light-gray rectangle in each column. While this information isn't always critical for us artists, it's helpful to know that Krita is working behind the curtains to cache our animation frames for the smoothest possible experience when scrubbing through or playing back your animation.

**D. Current Time Scrubber --** A highlighted column in the Frame Table which controls the current frame time and, as such, what is currently displayed in the viewport.

    * **Active Frame:** 
       A frame of the *active layer* at the *current time* position. The active frame is always marked with a small circle inside. All drawing, painting, and image editing operations happen on this frame only!
 
       *WARNING:* Don't mix the active frame up with the current selection!

**E. Layer Menu --** A small menu for manipulating animation layers. You can create new layers, add or remove existing ones, and you can set 'Show in Timeline' here to pin the active layer to the Timeline. (This menu also shows up when right-clicking on layers inside of the Layer List.)

**F. Audio Menu:** Another small menu for animating along with audio sources. This is where you can open or close audio sources and control output volume/muting.

**G. Zoom Handle:** This allows you to zoom in and out on the Frame Table, centered around the current frame time. Click-dragging starting on the zoom handle controls the zoom level.

Usage:
------

How to use the Timeline Docker is not immediately obvious because :program:`Krita` doesn't automatically create a key frame out of your initial drawing. In fact, *until you make a key frame on a layer*, Krita assumes that there's no animation going on at all on that layer and it will keep the image static over the whole animation.

So, to make our first *animated layer*, we need to make a key frame!

|mouseright| any square on the timeline docker and select :guilabel:`Create Blank Frame`. A blank frame (one that you haven't yet drawn anything in) appears as a *hollow outline* instead of a solid box, making that frame active and drawing on the canvas will make it appear as a *solid, colored rectangle*.

To keep a layer visible in the Timeline Docker regardless of which layer is selected, select the layer in the Layers Docker so it shows up in the docker, then |mouseright| it within the Timeline Docker's Layer List and select :guilabel:`Show in Timeline`. This way you can choose which layers are important and which are only minor.

You can drag and drop the frame around to a different empty frame slot.

To add a single new frame, either right-click on an empty frame slot and select :guilabel:`Create Blank Frame` to create a fresh blank frame, or select :guilabel:`Create Duplicate Frame` to create a new copy of the previous frame. 

You can also change the color of frames so that you can easily identify important frames or distinguish between different sections of your animation. The current color selection is remembered for new frames so that you can easily make a set of colored frames and then switch to another color.

It's also possible to add multiple key frames by right-clicking inside the Frame Table and selecting :guilabel:`Keyframes>Insert Multiple Keyframes`. With this option you can specify a number of frames to add with the option of built in timing for quickly creating a series of 1s, 2s, 3s, etc. These settings are saved between uses.

Instead of the Frame Table, right-clicking within the Frame Timing Header gives you access to a few more options which allow you to add or remove entire columns of frames or holds at a time. For example, selecting :guilabel:`Keyframe Columns>Insert Keyframe Column Left` will add new frames to each layer that's currently visible in the Timeline Docker.

.. image:: /images/en/Timeline_insertkeys.png
   :align: center

:program:`Krita` only tracks key frame changes. This is unlike :program:`Flash` where you have to manually indicate how long a key frame will hold. Instead, :program:`Krita` just assumes that the space between key frame 1 and key frame 2 is supposed to be filled with key frame 1. Frames that are held in this way (a.k.a. "holds") are displayed as a continuous line in the Frame Table.

To delete frames, |mouseright| the frame and press :guilabel:`Remove Keyframes`. This will delete all selected frames. Similarly, selecting :guilabel:`Remove Frames and Pull` will delete the selected frames and pull or shift all subsequent frames back/left as much as possible.

To manually play your animation back and forward using your mouse, a concept called *scrubbing*, you click-drag within the Frame Timing Header.

GUI Actions:
------------

#. **Layer List**

    * |mouseleft| : Select active layer. 
    * |mouseright| : Layers Menu (add/remove/show layers, etc.).

#. **Frame Timing Header**

    * |mouseleft| : Move to time and select frame of the active layer.
    * |mouseleft| :kbd:`drag` : Scrub through time and select frame of the active layer.
    * |mouseright| : Frame Columns Menu (insert/remove/copy/paste columns and hold columns).

#. **Frames Table: all**
    * |mouseleft| : Selects a single frame or slot and switches time, but *does not switch active layer*.
    * :kbd:`space` + |mouseleft| : Pan.
    * :kbd:`space` + |mouseright| : Zoom.

#. **Frames Table (On Empty Slot).**

    * |mouseright| : Frames menu (insert/copy/paste frames and insert/remove holds).
    * |mouseleft| + :kbd:`drag` : Select multiple frames and switch time to the last selected, but *does not switch active layer*.
    * :kbd:`shift` + |mouseleft| : Select all frames between the active and the clicked frame.
    * :kbd:`ctrl` + |mouseleft| : Select individual frames together. :kbd:`click+drag` them into place.

#. **Frames Table (On Existing Frame)**

    * |mouseright| : Frames menu (remove/copy/paste frames and insert/remove holds).
    * |mouseleft| + :kbd:`drag` : *Move* a frame or multiple frames.
    * :kbd:`ctrl` + |mouseleft| :kbd:`drag` : Copy a frame or multiple frames.
    * :kbd:`alt` + :kbd:`drag` : Move selected frame(s) and *all* the frames to the right of it. (This is useful for when you need to clear up some space in your animation, but don't want to select all the frame to the right of a particular frame!)
