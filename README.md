pomfclip
========

pomfclip is a script for taking a screenshot and uploading it to pomf.se

It will compress the screenshot with optipng before uploading, if optipng is installed.

Based on pomfload:

* https://gist.github.com/Shizmob/7984374 (Shizmob's original version)
* https://gist.github.com/ctgrl/9036808 (ctgrl's update)
* https://gist.github.com/ScoreUnder/eb51d699cc908b789df9 (my "what is jq" version)

Requirements
------------

* scrot OR shutter OR gnome-screenshot to take a screenshot
* node.js for json parsing
* (optional) xclip to copy the URL to the clipboard
* (optional) optipng to compress the screenshot
* (optional) something to keybind the script with
