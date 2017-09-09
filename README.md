# Emacs - out of the box - reboot

This is a project which aims to revitalize Emacs by providing core-friendly changes for an improved out-of-the-box experience.

**You can help, and you don't need to know a single bit of C!** But how? Read one!

# Background

For Emacs to remain healthy sustainable for another 40+ years, I think we'll need to keep a critical mass of users and developers. How do we attract new users?

"Everyone" in the Emacs-verse seems to agree Emacs is the world's most powerful text-editor, yet these less powerful text-editors are seeing much higher adoption than Emacs.

Emacs, despite all its power, doesn't impress out of the box.

New users do not know:

1. It can be extensively customized.
2. Where to find all packages and customization to turn it into a more productive environment.

While this isn't a problem for "senior" Emacs-users which are already customized left and right, this probably hinders adoption by new users.

After a brief discussion with [phillord](https://github.com/phillord/) and others on #Emacs on Freenode, we felt that to  attract new users, Emacs would benefit from an improved out of the box experience.

# The "historical" response

The standard response to this issue has long been that it's *good* for a user to go through such a process, that a user *should* in fact learn the hard way, so they can find out how they can make *their* Emacs more productive *for them*. And if a user can't be bothered to do that, she probably won't "get" Emacs anyway, so no loss.

I think it's about time we say this isn't a productive attitude.

Looking at pretty much all other editors out which are seeing increased adoption, they have a few things in common out the box:

* A polished look and feel.
* A reasonable and useful set of default settings.
* Core features and packages installed.
* Well supported third party package system.

Default "out of the box"-experience matters.

# The goal and the means

Basically, in 2017, the best the 1977 has to offer does *not* cut it as a default-experience. It's time we make some improvements.

The aim for this project is *not* to mimick a big "starter"-kit like [prelude](https://github.com/bbatsov/prelude), but instead try to improve the out of the box experience by making small, core-friendly changes, so that these changes have a chance to be merged back.

Some examples:

* New values for existing `defconst`, `defvar` and `setq`-statements
* Default installed packages from ELPA and MELPA
* Useful default-behaviours implemented through mode-hooks

# Ways to help this project

There are numerous ways you can help this project:

1. Evaluate it's current state. Does it work? Are any of the changes overly opiniated? Let us know!
2. Monitor issues and PRs. Help review them.
3. Submitting changes.
4. Spread the word: Anywhere. To anyone you think can contribute! The more eyes this project has, the more chances we have of getting useful improvements, and reaching a good consensus on the changes we propose.

Feel free to sign up as a contributor. [A special issue has been reserved for this very purpose.](https://github.com/josteink/emacs-oob-reboot/issues/1)

# Evaluating the current setup

To evaluate the current setup you'll need to launch Emacs in the following way.

````bash
git clone https://github.com/josteink/emacs-oob-reboot
cd emacs-oob-reboot
emacs -Q -l ./init.el
````

# Submitting improvements

1. Study *your* Emacs config and find your essential customizations which you think should be default.
2. Fork this repo.
3. Follow the existing conventions, and add your changes. See
   [CONTRIBUTING.org](./CONTRIBUTING.org).
4. Submit a PR. In this PR you should try to make each customization/improvement an atomic commit, and maybe even a PR on its own. This will assist review.

# Anything else?

Did I forget anything? File an issue, file a PR. It's github. You know the rules :)
