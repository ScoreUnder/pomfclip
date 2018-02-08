pomfclip
========

pomfclip is a script for taking a screenshot and uploading it to pomf.se

It will compress the screenshot with optipng before uploading, if optipng is installed.

Based on pomfload:

* https://gist.github.com/Shizmob/7984374 (Shizmob's original version)
* https://gist.github.com/ctgrl/9036808 (ctgrl's update)
* https://gist.github.com/ScoreUnder/eb51d699cc908b789df9 (my "what is jq" version)

Upload services
---------------

See the `upload list` command

Scripts
-------

* `pomfclip` for taking screenshots and uploading. `pomfclip --service=0x0`
* `pomfload` for uploading to pomf-like sites.
* `upload` to wrap configurations for pomfload to upload to various sites. See `upload list`. Syntax is `upload SERVICE FILE1 [FILE2 ...]`

Requirements
------------

### For `upload`

* jq for json parsing

### For `pomfclip`

* A screenshot tool (scrot, shutter, etc.)
  * Bear in mind that scrot and imagemagick often leave artifacts on the resultant images
* (optional) xsel to copy the URL to the clipboard
* (optional) optipng to compress the screenshot
* (optional) something to keybind the script with
