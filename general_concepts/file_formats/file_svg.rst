.. meta::
   :description lang=en:
        The Scalable Vector Graphics file format in Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. _file_svg:

======
\*.svg
======

.svg, or Scalable Vector Graphics, is the most modern vector graphics interchange file format out there.

Being vector graphics, svg is very light weight. This is because it usually only stores coordinates and parameters for the maths involved with vector graphics.

It is maintained by the w3c svg working group, who also maintain other open standards that make up our modern internet.

While you can open up svg files with any text-editor to edit them, it is best to use a vector program like Inkscape. Krita 2.9 to 3.3 supports importing svg via the add shape docker. Since Krita 4.0, SVGs can be properly imported, and you can export singlevector layers via :menuselection:`Layer --> Import/Export --> Save Vector Layer as SVG...`. For 4.0, Krita will also use SVG to save vector data into it's :ref:`internal format <file_kra>`.

svg is designed for the internet, though sadly, because vector graphics are considered a bit obscure compared to raster graphics, not a lot of websites accept them yet. Hosting them on your own webhost works just fine though.
