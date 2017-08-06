## Before everything else

### 1. Get on the mailing-list

You may send an email to *emacs-devel*, but you are not guaranteed that all replies to the mailing list will include you, the original sender.

Therefore to ensure you get all replies, you should sign up for emacs-devel mailing-list yourself. You can do that here: https://lists.gnu.org/mailman/listinfo/emacs-devel

### 2. Get the emacs build dependencies

This varies by OS and distro, but for anything Debian-based the following should probably do:

````
sudo apt install build-essential
sudo apt build-dep emacs25
````

### 3. Get the actual emacs source

This is easy, but may take some time.

````bash
cd $HOME
git clone git://git.savannah.gnu.org/emacs.git
cd emacs
````

## Per patch/commit prepared to emacs-devel

For each commit you have

### 1. Find your commits

Github makes this easy. Go to the [contributors page](https://github.com/josteink/emacs-oob-reboot/graphs/contributors), and there click the "# commits" link under your username and you should see only your commits.

### 2. Find the relevant emacs source

For instance in the following commit, we want have a simple `setq` and key-bindings change for `dired`: https://github.com/josteink/emacs-oob-reboot/commit/17688f8fd47f632f4e1cb91b8fc513c85a782b22

Try to just find the relevant source using `git grep`, or similar techniques:

````bash
cd $HOME
cd emacs
git grep "wdired-use-dired-vertical-movement" # the setq from the patch
````

This gives the following output:

````
isp/ChangeLog.12:      (wdired-use-dired-vertical-movement): Rename from
lisp/ChangeLog.13:      * wdired.el (wdired-use-dired-vertical-movement): Doc fix.
lisp/wdired.el:(defcustom wdired-use-dired-vertical-movement nil
lisp/wdired.el:See `wdired-use-dired-vertical-movement'.  Optional prefix ARG
lisp/wdired.el:  (if (or (eq wdired-use-dired-vertical-movement t)
lisp/wdired.el:   (and wdired-use-dired-vertical-movement
lisp/wdired.el:See `wdired-use-dired-vertical-movement'.  Optional prefix ARG
lisp/wdired.el:  (if (or (eq wdired-use-dired-vertical-movement t)
lisp/wdired.el:   (and wdired-use-dired-vertical-movement
````

So we see this `defcusom` is defined in `lisp/wdired.el`.

### 3. Make your changes

Create a clean, isolated branch right off the master branch. Give it an appropriate name (for your own sake):

````
git checkout master
git checkout -b dired_defaults
````

### 4. Test your changes.

Building Emacs may sounds like a big thing. but it's not really. First build may be slow, but after that it's pretty smooth.

If you have your build-environment set up correctly, the following should be all you need to do build Emacs:

````bash
cd $HOME/emacs
./autogen.sh
./configure
make -j 20 -l 20
````

(Copied from [EmacsWiki](https://www.emacswiki.org/emacs/BuildingEmacs))

Test that your change works as expected. Make sure to start a clean session without any other distro or user-provided settings:

````
./src/emacs -Q 
````

### 5. Commit and prepare the patch.

Commit your changes, and try to include [a good commit message](https://alistapart.com/article/the-art-of-the-commit).

````
git commit -m "A good commit message"
````

Now [create a patch-file for that commit](https://stackoverflow.com/questions/6658313/generate-a-git-patch-for-a-specific-commit#6658352):

````
git format-patch -1 HEAD
````

### 6. Submit the patch

Make sure to have a clear and consise email subject, and to include a good and consise explanation of the patch and your argument to how it improves the default experience.

Feel free to link back to this repo, to establish a context/project around the patch being sent.

And *do* remember to attach your patch-file.

Send this all to: emacs-devel@gnu.org. They are old-fashioned and prefer plain-text to HTML email, so you may want to use that (but I've yet to hear anyone get flamed over "inappropriate" email formats).

Let other contributor know, by adding a post to the [Submitted patches](https://github.com/josteink/emacs-oob-reboot/issues/46) issue.
