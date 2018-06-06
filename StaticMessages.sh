#!/usr/bin/env bash

FILENAME="krita-docs"
MULTI_POT=true

# Dummy implementation of the function which just exports a single file.
function export_pot_file # First parameter will be the path of the directory with the pot files, includes $FILENAME
{
    echo "Creating POT files"
	potfile=$1
	make gettext
    echo "Moving KritaFAQ.pot file to $potfile"
	mv _build/gettext/KritaFAQ.pot $potfile
	echo "Removing gettext folder."
	rm -rf _build/gettext
}

function export_pot_multi # First parameter will be the path of the directory with the pot files, $FILENAME becomes directory name
{
    echo "Creating POT files"
	potfile=$1
	make gettext
    # Remove the pages that should not be translated.
    echo "Removing untranslatable pages."
    rm -rf _build/gettext/untranslatable_pages.pot
    echo "Moving the pot files to $potfile"
	mv _build/gettext $potfile
	echo "Removing gettext folder."
	rm -rf _build/gettext
}

function import_po_files # First parameter will be a path that will be a directory to the 
{
	podir=$1
    mkdir locale
    # These are the language codes that sphinx supports.
    for lang in bn ca cs da de es et eu fa fi fr he hr hu id it ja ko lt lv mk nb_NO ne nl pl pt_BR pt_PT ru si sk sv tr uk_UA vi zh_CN zh_TW
    do
        echo "Checking for $podir/$lang."
        if [ -d "$podir/$lang" ]; then
            mkdir locale/$lang/LC_MESSAGES
            mv $podir/$lang locale/$lang/LC_MESSAGES
            echo "Copied contents to to locale/$lang/LC_MESSAGES."
        fi
    done
}
