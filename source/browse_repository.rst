.. _browse-repository:

Browse Repository
=================

You can browse a repository by starting Git Extensions and select the repository to open. The main window contains
the commit log. You could also open the ‘Browse’ window from the shell extensions and from the Visual Studio IDE.

View commit log
---------------

The full commit history can be browsed. There is a graph that shows branches and merges. You can show the difference
between any two revisions by selecting them using ctrl-click.

.. image:: /images/commit_diff_view.png

In the context menu of the commit log you can enable or disable the revision graph. You can also choose to only show the
current branch instead of showing all branches. The other options will be discussed later.

.. image:: /images/commit_contextual_menu.png

Search or filter the commit history
-----------------------------------

You can find text in the commit messages or jump to a specific commit in the current commit history shown in Git
Extensions. You can also filter the commit history so that fewer commits are shown.

Quick search in history
^^^^^^^^^^^^^^^^^^^^^^^

You can find a commit in the commit history that is shown in Git Extensions by searching for text in the commit message,
branch label or tag. This is a quick search function. Simply click into the commit history to give that pane focus and
start typing. Git Extensions will show your search term in the top left corner and will immediately jump to the next
commit with matching text. You can search for the next or previous commit with matching text using ``Alt-Down Arrow`` or
``Alt-Up Arrow``.

In ``Settings``, ``Git Extensions`` you can change the timeout for typing the text for the quick search.

Go to a specific commit
^^^^^^^^^^^^^^^^^^^^^^^

You can jump to a particular commit in the commit history if you know the SHA, tag or branch. In fact you can use any
expression valid for git-rev-parse. Select ``Navigate``, ``Go to commit`` or press ``Ctrl-Shift-G`` to open the ``Go
to commit`` window. Enter an SHA or other term to be passed to git-rev-parse into the box at the top and click ``Go``,
or select a branch or tag from one of the two combo boxes below.

Filter history
^^^^^^^^^^^^^^

The history can be filtered using regular expressions and basic filter terms. Filtering will reduce the number of commits
that are shown in the Git Extensions commit history. The quick filter in the toolbar filters by the commit message, the
author and/or the committer.

.. image:: /images/quick_filter.png

In the context menu of the commit log you can open the advanced filter dialog. The advanced filter dialog allows you to
filter for more specific commits. To remove the filter either remove the filter in the toolbar and press enter or remove the
filter in the advanced filter dialog.

.. image:: /images/advance_filter_dialog.png

Single file history
-------------------

To display the single file history, right click on a file name in the ``File tree`` or in the ``Diff`` tab and select ``File history``.

.. image:: /images/context_menu_blame.png

The single file history viewer shows all revisions of a single file. You can view the content of the file in after each
commit in the ``View`` tab.

.. image:: /images/file_history.png

You can view the difference report from the commit in the ``Diff`` tab.

.. note::
    Added lines are marked with a ``+``, removed lines are marked with a ``–``.

.. image:: /images/file_history_diff.png

Blame
-----

There is a blame function in the file history browser. It shows the last person editing a single line.

.. image:: /images/blame.png

Double clicking on a code line shows the full commit introducing the change.
