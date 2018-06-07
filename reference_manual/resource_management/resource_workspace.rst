.. meta::
   :description:
        Managing workspaces and sessions in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Scott Petrovic
   :license: GNU free documentation license 1.3 or later.

.. index:: Resources, ! Workspaces, ! Sessions
.. _resource_workspaces:

==========
Workspaces
==========

Workspaces are basically saved configurations of dockers.  Each workspace saves how the dockers are grouped and where they are placed on the screen.  They allow you to easily move between workflows without having to manual reconfigure your setup each time.  They can be as simple or as complex as you want.  

Workspaces can only be accessed via the toolbar or :menuselection:`Window --> Workspaces` There's no docker for them.  You can save workspaces, in which your current configuration is saved. You can also import them(from a \*.kws file), or delete them(which black lists them).

Workspaces can technically be tagged, but outside of the resource manager this is not possible.

Sessions
--------

When you work with multiple screens, a single window with a single workspace won't be enough. For multi monitor setups we instead can use sessions. Sessions allow us to store multiple windows, their positions, the monitor they were on and the documents that were open on them.

You can access sessions from the workspace dropdown in the top toolbar, and from :menuselection:`File --> Sessions`

Primary Workspace Follows Focus
    This treats the workspace in the first window as the 'primary' workspace, and when you switch focus, it will switch the secondary windows to that primary workspace. This is useful when the secondary workspace is a very sparse workspace with few dockers, and the primary is one with a lot of different dockers.
Show Active Image In All Windows
    This will synchronise the currently viewed image in all windows. Without it, different windows can open seperate views for an image via :menuselection:`Window --> New View --> document.kra`.
