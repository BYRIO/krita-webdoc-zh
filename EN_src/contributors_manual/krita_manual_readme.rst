.. meta::
   :description:
        Contributor's Readme for the Krita Manual

.. metadata-placeholder

   :authors: - Wolthera van Hövell tot Westerflier <griffinvalley@gmail.com>
             - Micheal Abrahams

   :license: GNU free documentation license 1.3 or later.

.. _krita_manual_contributors_guide:

===============================
Krita Manual Contribution Guide
===============================

Welcome to our new documentation!

We've moved from userbase.kde.org to docs.krita.org, then we moved from Mediawiki to Sphinx. This latter change is because Sphinx allows us to handle translations much better than mediawiki can.

The manual will include:

A reference manual for Krita
    This one is probably what everyone is expecting when they type in docs.krita.org. Dry, basic, 'what does this button do' type of information.
General concept tutorials.
    We've found over the past two years that for certain types of users, a reference manual, even with some examples, just isn't enough. The manual should also provide fast and concise explanations for things, and provide a basic workflow for preparing an image for the web.

    We also have found that certain concepts, such as color management and layer handling are far more advanced in Krita than the average artist is used to. Krita is free and many of its users will not have formal training in digital artwork. So there is no pre-existing artist-focused knowledge on how to use color management or filter layers.

    In addition there are systems that are unique to Krita, for example the brush system, the transform masks, the alpha inheritance and the perspective assistants. Finally, there are users who aren't familiar with even standard painting workflows, and are not flexible enough to understand how to port a tutorial for Sai or Photoshop to Krita.
A list of known tutorials and video tutorials
    Apparently, one of the great things about Krita's team is how we connect with artists and acknowledge that they're doing cool stuff. The same should count for tutorials, especially because there are ways of using Krita and ways of approaching painting that are unique and we should encourage people to share their knowledge.
Contributor's Manual
    Krita is (free) open source software, which makes us effectively a community project, with dozens of volunteers pitching in to make it better. This, of course, requires we keep track of manuals and howto's for new volunteers to come in and help us. The various places we've done this have been rather spread out, and are often under maintained. The contributor's manual is an attempt to solidify all the information. It is therefore very technical in places.
krita.org tutorials
    There have been a bunch of tutorials on the krita.org and the krita-foundation.tumblr.com, the former focusing on explaining how to use a new feature and the later stimulated by user request.
FAQ
    This one is already online and a merger of the different FAQs that we had. It's currently being translated and we hope to keep this one the primary one to update.

For first timers
----------------

Unlike Mediawiki, Sphinx works more like how we write code for Krita.

First things first, you will want to talk to us! For this you can either go to the `IRC on krita.org (#krita on freenode.org) <https://krita.org/en/irc/>`_, or, more importantly, make an account at `identity.kde.org <https://identity.kde.org/>`_. The account you make at identity can be used to both access the forum as well as the `phabricator`_, where we organise Krita development.

If you have no idea where to begin, make a Kde identity account and make a post on `the forum <https://forum.kde.org/viewforum.php?f=136>`_.

Sphinx works by writing simple text files with reStructuredText mark up, and then it takes those text files and turns them into the manual. We keep track of changes in the manual by putting them into a version control system called :program:`Git`.

.. _making_changes_sphinx:

Making changes
~~~~~~~~~~~~~~

Because we use Git, there's only a few people who can put things into the version control system, so if you want to make changes you will need to put it up for review.

If you are not familiar with Git
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Get the source text from the `repository`_.

    Save a copy of the text as it existed originally.

2. Modify it.
3. Tools to check whether your modifications work.

    You can use the `Online Sphinx Editor <https://livesphinx.herokuapp.com/>`_ to check if your changes don't break 

4. Bundle up the items into a zip.

    Put all the files you changed into a zip file. This also includes the images if you're changing them.
    Try to keep the filenames the same, that's easier for us to copy over.
5. Upload the zip on phabricator.

    1. First, go to phabricator.kde.org and log in with you identity account.
    2. Go to the `Manual Project Workboard`_ and there create a new task.
    3. Explain what you did and use drag and drop to move the zip file to the input textbox. That should upload it. We will also need the email address you associate with your kde identity account.
    4. Then, if the changes are accepted, someone with commit access will unpack those files into the manual folder and push the differences using the mail address.

If you are familiar with Git
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Get the source from the `repository`_ using :program:`Git` clone
2. Make changes
3. Build locally (optional)
4. Generate a git diff.

   Go to the source directory in your terminal and write ``git diff > ../mydiff.diff`` this will make a diff file in the folder above.

5. Create a review request on phabricator

   1. Login into `phabricator`_ with your identity account.
   2. Go to differential.
   3. Upper-right --> "Star" menu --> Create Review Request.
   4. Upload the diff you made, select the correct repository(``websites-docs-krita-org``, easier to find with ``Krita.org Documentation Website``, *make sure you do not select docs-kde-org!*).
   5. Confirm the file is correct.
   6. Then in the next screen:

        1. Add in Title/Short Summary.
        2. Tell us what you changed in the summary.
        3. (Optional) put your email in the comment if you want attribution.
        4. Phabricator has a system that automatically tags the review request with the Krita Manual team.

General philosophy
------------------

This is for determining what is an appropriate writing style. A writing style, whether we consider its practical or aesthetic qualities, is usually underpinned by a goal or general philosophy. What do we want to achieve with the manual, and for whom is the manual meant?

Demographics and target audience(s)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We cannot talk about a demographic in the sense that we know all Krita users are 55 year old men. Krita is used by a hugely different amount of people, and we are actually kind of proud that we have such a varied userbase.

Despite that, we know a couple of things about our users:

* They are artists. This is explicitly the type of users that we target.

    * Therefore, we know they prefer pretty pictures.
    * They are visual.
    * They are trying to achieve pretty pictures.

Therefore, the implicit goal of each page would be to get the feature used for pretty pictures.

Other than that, we've observed the following groups:

* High-school and college students trying out drawing software for illustrations. These usually have some previous experience with drawing software, like Painttool Sai or Photoshop, but need to be introduced to possibilities in :program:`Krita`. This group's strength is that they share a lot of information with each other like tips and tricks and tutorials.
* Professionals, people who earn their money with digital drawing software. The strength of this group is that they have a lot of know-how and are willing to donate to improve the program. These come in two types:

    * Non technical professionals. These are people who do not really grasp the more mathematical bits of a piece of software, but have developed solid workflows over the years and work with software using their finely honed instincts. These tend to be illustrators, painters and people working with print.
    * Technical professionals. These are people who use :program:`Krita` as part of a pipeline, and care about the precise maths and pixel pushing. These tend to be people working in the games and VFX industry, but occasionally there's a scientist in there as well.

* Adult and elderly hobbyists. This group doesn't know much about computers, and they always seem to get snagged on that one little step missing from a tutorial. Their strength as a group is that they adapt unconventional workflows from real life that the student wouldn't know about and the professional has no time for and create cool stuff with that, as well as that they have a tempering effect on the first group in the larger community.

From these four groups...

* there's only one that is technical. Which is why we need the concept pages, so that we can create a solid base to write our manual texts on top of.
* three of them likely have previous experience with software and may need migration guides and be told how.
* two of them need to know how to get Krita to cooperate with other software.
* two of them have no clue what they are doing and may need to be guided through the most basic of steps.

From that we can get the following rules:

General Writing
~~~~~~~~~~~~~~~

Use American English if possible.
    We use American English in the manual, in accordance to Krita's UI being American English by default.
Keep the language polite, but do not use academic language.
    As a community, we want to be welcoming to the users, so we try to avoid language that is unwelcoming. Swearing is already not condoned by KDE, but going to the far other end, an academic style where neither writer nor reader is acknowledged might give the idea that the text is far more complex than necessary, and thus scare away users.
Avoid using gifs (open for debate)
    The reason is that people with epilepsy may be affected by fast moving images. Similarly, gifs can sometimes carry too much of the burden of explanation. If you can't help but use gifs, at the least notify the reader of this in the introduction of the page.
Keep it translation compatible
    This consists of using svg for infographics, and using the appropriate markup for given text.

Regarding photos and paintings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* I would like to discourage photos and traditional paintings in the manual if they are not illustrating a concept. The reason is that it is very silly and a little dishonest to show Rembrand's work inside the Krita GUI, when we have so many modern works that were made in Krita. All of the pepper&carrot artwork was made in Krita and the original files are available, so when you do not have an image handy, start there. Photos should be avoided because Krita is a painting program. Too many photos can give the impression Krita is trying to be a solution for photo retouching, which really isn't the focus.
* Of course, we still want to show certain concepts in play in photos and master paintings, such as glossing or indirect light. In this case, add a caption that mentions the name of the painting or the painter, or mention it's a photograph.
* Photos can still be used for photobashing and the like, but only if it's obviously used in the context of photobashing.

Regarding images in general
~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Avoid text in the images and use the caption instead. You can do this with the figure directive.
* If you do need to use text, make either an SVG, so the text inside can be manipulated easier, or try to minimize the amount of text.
* Try to make your images high quality/cute. Let's give people the idea that they are using a program for drawing!
* Remember that the manual is licensed under GDPL 1.3, so images submitted will be licensed under that. In the case of CC-By-Sa/CC-By ensure that the file gets attributed appropriately through a figure caption. Needless to say, don't submit images that cannot be licensed under either license.

Protocol
--------

So here we line out all the boring workflows.

Tagging and Branches
~~~~~~~~~~~~~~~~~~~~

Adding and removing text will be done in the ``draft`` branch.

Proofreading results for old pages will be considered as bugfixes and thus will go into the ``master`` branch and merged into the ``draft`` branch as necessary.

Before the ``draft`` branch is merged for a given release:
* the master branch will be tagged with the old version.
* The draft branch is first double checked that it has updated version number and updated epub cover.

The ``draft`` branch will not be merged until the day before a release to keep the pages in tact for long enough.

Each release will have a version of the epub uploaded as part of the release process.
.. Where do we get the POT files from? Even the translated versions?

Removing Pages
~~~~~~~~~~~~~~

If a feature is removed in a certain version, the corresponding pages.

1. Will first be marked deprecated.

    This can be done as so::

        .. deprecated:: version number

            Text to indicate what the user should do without this feature.

2. Will be linked on a page called 'deprecated'
3. If the next version rolls around all the pages linked in the deprecated section will be removed.

Adding Pages
~~~~~~~~~~~~

1. Ensure that it is located in the right place.
2. Follow the :ref:`krita_markup_conventions` to ensure the page is formatted correctly.
3. Add the page to the TOC.
4. If the feature is new, add in versionadded::

    .. versionadded:: version number

        optional something or the other.

As with images, don't add text that you do not have permission to add. This means that text is either written by you, or you have permission to port it from the original author. The manual is GDPL 1.3+ so the text will be relicensed under that.


Changing Pages
~~~~~~~~~~~~~~

If you fully rewrite a page, as opposed to proofreading it, the resulting page should be reviewed.

If you change a page because a feature has changed, and you have commit access, the change can be pushed without review(unless you feel more comfortable with a review), but you should add::

    .. versionchanged:: version number

        This and that changed.

In all cases, check if you want to add yourself to the author field in the metadata section on top.

Using deprecated, versionadded and versionchanged with the version number allows us to easily search the manual for these terms with grep:

.. code:: bash

    grep -d recurse versionadded * --exclude-dir={_build,locale}

Faulty pages
~~~~~~~~~~~~

If a page slips through the cracks, either...

* Make a review request per the :ref:`making_changes_sphinx` section.
* Make a task at the `Manual Project Workboard`_.
* Make a bug at `bugzilla`_ under the project Krita in the section 'documentation'.

Proofreading
~~~~~~~~~~~~

There's two types of proofreading that needs to be done.

The most important one is **reviewing changes people make**. You can do this on phabricator in two ways:

1. Reviewing patches in differential.

    Reviewing patches is done in differential. Patch reviewing is usually done by programmers to find mistakes in each other's code, but because programming code is text based just like regular text, we can use patch reviewing to check against typos as well!

    A patch, or diff, is an amount of changes done in a document(added, removed) put into a machine readable file. When someone submits a review request(on system like gitlab or github this is a merge or pull request), people who maintain the original files will have to look them over and can make comments about things needing to change. This allows them to comment on things like typos, over-complicated writing but also things that are incorrect. After a patch has been accepted it can be pushed into the version control system.

2. Auditing changes in the manual.

    Auditing changes happens after the fact. You can audit a change by going to the commit message (from the repository page, go to history and then click on an entry), where you will be able to make comments on the changes made.

In both cases, the interface consists of the difference being shown, with on the left the old version, and on the right the new version. Lines that have been added will be marked in green while lines that have been removed will be marked with red. You can click a line to add an 'inline' comment. Usually, when reviewing you go over the whole set of changes making comments where needed. To submit the inline comments, go to the bottom here you can add a general comment. When you submit the general comment all the inline comments will be submitted along side of it.

The second major way the manual needs to be proofread is **over the whole file**. Many of the pages have only been checked for correctness but not for style and grammar.

For this you will need to follow the :ref:`making_changes_sphinx` section, so that you can have full access to the pages and edit them.

Translating
~~~~~~~~~~~

We are still trying to hash out a translation workflow. Please bear with us.

.. Things that need to be decided: where do the POT files go, how do we decide which pages should not be translated, etc.

Other
-----

For restructured text conventions, check :ref:`krita_markup_conventions`.

.. Website shorthands. Sphinx/reStructuredText prefers it if you use shorthands when repeating websites.

.. _phabricator : https://phabricator.kde.org
.. _Manual Project Workboard : https://phabricator.kde.org/project/view/135/
.. _repository : https://phabricator.kde.org/source/websites-docs-krita-org/
.. _bugzilla : https://bugs.kde.org/
