Modify Git history
==================

There are 2 different cases, and consequently 2 ways to do it with git when we want to modify the history:

- Modify the last commit of the current branch with doing an ``amend``
- Modify an older commit with doing an ``interactive rebase``

Note: There are 2 things to understand when working with the history with git:

- As git only creates immutable commits (sealed by the sha1), "modifying" a commit is in fact creating a new more or less similar commit.
- Consequently, the entire history of children following the changed commit will be different.

So, except if the history has not been already pushed, or if you have good reasons, it is a bad practice to change the history
because you will mess the history of other developers.

Modify the last commit
----------------------

The easiest way to modify the history is to modify the last commit made by doing what is called an ``amend``.
To do that, open the commit windows and check the option "Amend commit".
If the commit message text area was empty, it is now filled with the message of the last commit.
You could now just update the commit message and commit or also add some more changes in the staging area to
add them to the commit.

.. image:: /images/history/amend_commit.png

Modify an older commit
----------------------

To modify an older commit than the last one of the current branch, we must use the ``interactive rebase``.

Doing an interactive rebase
^^^^^^^^^^^^^^^^^^^^^^^^^^^

First, you should create a commit containing the changes you want to add to a previous commit
(or know an existing commit that contains this changes).

Then use the `rebase` feature in interactive mode on a base commit older than the one that you want to modify.

.. image:: /images/history/rebase_interactive.png

Check the option `interactive` and click on `Rebase` to launch the process.

.. image:: /images/history/rebase_interactive_option.png

You will be prompted by a text editor displaying all the commits that will be rebased

You could have a look to this _documentation: https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History to better understand all the possibilities offered.

The options offered are :

- reorder the lines to reorder the commits,
- delete a line to throw away a commit and the changes introduced by the commit,
- write `r` or `reword` in front of a commit to rewrite the commit message,
- write `f` or `fixup` in front of a commit to meld the commit with the previous commit and with keeping the commit message of the first commit,
- write `s` or `squash` in front of a commit to meld the commit with the previous commit and with rewriting the commit message.

Often, we will use interactive rebase to move the line and squash or fixup commits to modify the history.

Once we did the changes, save and close the editor to let git do the rebase.

Using autosquash rebase feature
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There is an option to facilitate the use of the ``interactive rebase`` when you know, at the moment of doing a
commit that the changes introduced by this commit should have been made in an older commit (the case of a `fixup` or `squash`).

In this case, you should create a commit containing the changes you want to add to a previous commit and use the `Advanced` menu to:

- create a `fixup` commit
- create a `squash` commit

Right click on the commit in the history, you know that you want to "modify".

And choose the suitable option...

.. image:: /images/history/rebase_interactive_fixup_commit.png

GitExtensions will open the commit window with an already filled commit message containing the needed information to find the commit to "modify".

.. image:: /images/history/rebase_interactive_option.png

Do not change the commit message and commit all the changes needed.

Then process to the interactive rebase, like describe in the previous paragraph but with enabling the option `Autosquash`.

.. image:: /images/history/rebase_interactive_autosquash.png

Launch the rebase by clicking on `Rebase`.

The interactive rebase will process the same way but with a major difference!
When enabling the `Autosquash` option, git will automatically reorder the commits lines and write the good actions in front of the commits
when it will open the text editor. You normally have just to close the editor (except if you want to do additional changes).
And let git do the rebase.


