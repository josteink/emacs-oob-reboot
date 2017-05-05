# emacs-oob-reboot

This is a project which aims to revitalize Emacs by providing core-friendly changes for an improved out-of-the-box experience.

**You can help, and you don't need to know a single bit of C!** But how? Read one!

# background

For Emacs to remain healthy sustainable for another 40+ years, we need to keep a critical mass of users and developers. To ensure this, we need to attract new users.

"Everyone" in the Emacs-verse seems to agree Emacs is the world's most powerful editor, yet other editors are seeing much higher adaptation than Emacs.

Emacs, despite all its power, does not impress out of the box. A user will need to know that:

1. it can be customized, and
2. find all these customization to turn it into a more productive environment.

While this isn't a problem for "senior" Emacs-users which are already customized left and right, this probably hinders adaptation by new users.

After a brief discussion with [phillord](https://github.com/phillord/) and other's on #Emacs on Freenode, we agreed that to better attract new user, Emacs could benefit from an improved out of the box experience.

# the "historical" response

The standard reply to this issue has long been that it's *good* for a user to go through such a process, that a user *should* in fact do so, so they can find out how they can make *their Emacs* more productive *for them*. And if a user can't be bothered to do that, he probably won't "get" Emacs anyway, so no loss to us.

But is this really a productive attitude?

Looking at pretty much all other editors out which are seeing increased adaptation, they have a few things in common:

* A polished look and feel,  out of the box
* A reasonable and useful set of default settings, out of the box
* Core features and packages installed, out of the box

Seemingly the default "out of the box"-configuration seems to matter.

# the goal and the means

Basically, in 2017, the best the 1995 has to offer does *not* cut it as a default-experience. It's time we make some improvements.

The aim for this project is *not* to mimick a big "starter"-kit like [prelude](https://github.com/bbatsov/prelude), but instead try to improve the out of the box experience by making small, core-friendly changes, so that these changes have a chance to be merged back mainline.

Such changes may for instance consist of:

* new values for existing `defconst`, `defvar` and `setq`-statements
* by default installing/bundling packages from ELPA
* useful default-behaviours implemented through default mode-hooks
* any combination of those
* etc

# ways to help this project

There are numerous ways you can help this project:

1. Evaluate it's current state. Does it work? Are any of the changes overly opiniated? Let us know!
2. Monitor issues and PRs. Help review them.
3. Submitting changes.
4. Spread the word: Anywhere. To anyone you think can contribute! The more eyes this project has, the more chances we have of getting useful improvements, and reaching a good consensus on the changes we propose.

Feel free to sign up as a contributor. [A special issue has been reserved for this very purpose.](https://github.com/josteink/emacs-oob-reboot/issues/1)

# evaluating the current setup

To evaluate the current setup you'll need to launch Emacs in a special way.

Do so by issuing the following commands:

````bash
git clone https://github.com/josteink/emacs-oob-reboot
cd emacs-oob-reboot
emacs -Q -l ./init.el
````

You are now running our "improved" Emacs default experience.

# submitting improvements

Submitting improvements should be easy:

1. Go scan *your* `.emacs`-file and find your essential customizations which you think should be a default.
2. Fork this repo.
3. Follow the existing conventions, and add your changes. 
4. Submit a PR. In this PR you should try to make each customization/improvement an atomic commit, and maybe even a PR on its own. This will assist review.

# anything else?

Did I forget anything? File an issue, file a PR. It's github. You know the rules :)
