.. meta::
   :description:
        The JPEG file format as exported by Krita.

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
   :license: GNU free documentation license 1.3 or later.

.. index:: jpeg, jpg, *.jpg
.. _file_jpg:
.. _file_jpeg:

======
\*.jpg
======

.jpg, .jpeg or .jpeg2000 are a family of file-formats designed to encode photographs.

Photographs have the problem that they have a lot of little gradients, which means that you cannot index the file like you can with :ref:`file_gif` and expect the result to look good. What jpeg instead does is that it converts the file to a perceptual color space(:ref:`YCrCb <model_ycrcb>`), and then compresses the channels that encode the colors, while keeping the channel that holds information about the relative lightness uncompressed. This works really well because human eye-sight is not as sensitive to colorfulness as it is to relative lightness. Jpeg also uses other :ref:`lossy <lossy_compression>` compression techniques, like using cosine waves to describe image contrasts.

However, it does mean that jpeg should be used in certain cases. For images with a lot of gradients, like full scale paintings, jpeg performs better than :ref:`file_png` and :ref:`file_gif`.

But for images with a lot of sharp contrasts, like text and comic book styles, png is a much better choice despite a larger file size. For grayscale images, png and gif will definitely be more efficient.

Because jpeg uses lossy compression, it is not advised to save over the same jpeg multiple times. The lossy compression will cause the file to reduce in quality each time you save it. This is a fundamental problem with lossy compression methods. Instead use a lossless file format, or a working file format while you are working on the image.
