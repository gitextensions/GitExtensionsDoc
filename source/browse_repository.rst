.. _browse-repository:

Browse Repository
=================

You can browse a repository by starting Git Extensions and select the repository to open. The main window contains
the revision graph (commit log). You could also open the ‘Browse’ window from :ref:`windows-explorer` and from :ref:`visual_studio`.

The Browse window contains of several parts:

* `Main toolbar`_
* `Revision graph`_
* `Tabs`_
* `Sidepanel`_

The `Sidepanel`_, `Tabs`_ and the toolbar can be hidden, as well as showing the `Commit`_ tab as a panel in the revision graph.

.. _browse-main-toolbar:

Main toolbar
------------

The main toolbar in Browse contains contains menus for other commands like
:ref:`commit`, :ref:`stash` and :ref:`maintenance`.

.. _browse-revision-graph:

Revision graph
--------------

The full commit history can be browsed. There is a graph that shows branches and merges. You can show the difference
between any two revisions by selecting them using ctrl-click.

.. image:: /images/commit_diff_view.png

The context menu for a commit can both execute Git commands and change the appearance for the form.

.. image:: /images/commit_contextual_menu.png

Search
^^^^^^

You can find text in the commit messages or jump to a specific commit in the current commit history shown in Git
Extensions.

Quick search in history
"""""""""""""""""""""""

You can find a commit in the commit history that is shown in Git Extensions by searching for text in the commit message,
branch label or tag. This is a quick search function. Simply click into the commit history to give that pane focus and
start typing. Git Extensions will show your search term in the top left corner and will immediately jump to the next
commit with matching text. You can search for the next or previous commit with matching text using ``Alt-Down Arrow`` or
``Alt-Up Arrow``.

In ``Settings``, ``Git Extensions`` you can change the timeout for typing the text for the quick search.

Navigation
^^^^^^^^^^
Go to a specific commit
"""""""""""""""""""""""

You can jump to a particular commit in the commit history if you know the SHA, tag or branch. In fact you can use any
expression valid for git-rev-parse. Select ``Navigate``, ``Go to commit`` or press ``Ctrl-Shift-G`` to open the ``Go
to commit`` window. Enter an SHA or other term to be passed to git-rev-parse into the box at the top and click ``Go``,
or select a branch or tag from one of the two combo boxes below.

Filter
^^^^^^

You can also filter the commit history so that fewer commits are shown.

Filter history
""""""""""""""

The history can be filtered using regular expressions and basic filter terms. Filtering will reduce the number of commits
that are shown in the Git Extensions commit history. The quick filter in the toolbar filters by the commit message, the
author and/or the committer.

.. image:: /images/quick_filter.png

.. _filter-file:

In the context menu of the commit log you can open the advanced filter dialog. The advanced filter dialog allows you to
filter for more specific commits. To remove the filter either remove the filter in the toolbar and press enter or remove the
filter in the advanced filter dialog.

.. image:: /images/advance_filter_dialog-menu.png

When a filter is set, the icon for the advanced filter is changed and you see the current filter as a tooltip for the button.

.. image:: /images/advance_filter_dialog.png

.. _browse-reflog:

Reflog
""""""

By default, Git will not show any commits that are not reachable and do not have any references, such as a branch or a tag. Such commits will be purged when Git runs maintenance.
By enabling ``Reflog`` via the toolbar button or in the ``View`` menu these commits will be shown too.

Tabs
----

:ref:`settings-tabs`

Commit
^^^^^^

Commit information and message as well as branch and tag information for the selected commit.
This tab can be moved to the revision grid.

.. _browse-tabs-diff:

Diff
^^^^

See also 
:ref:`settings-diff-viewer-show-file-differences-for-all-parents-in-browse-dialog` and
:ref:`settings-diff-viewer-show-all-available-difftools`

The file viewer will by default show the diff, but may also show Blame for the selected file.

File tree
^^^^^^^^^

Show the file tree for the commit. By default this shows Blame for a file.

GPG
^^^

Show the GPG key for signed commits.

Console
^^^^^^^

Show Git terminal.

Build report
^^^^^^^^^^^^

Optional, only shown if the build server plugin is configured for the repo and if it has found a build for the selected commit.
:ref:`settings-tabs-show-build-result-page`

.. _browse-side-panel:

Sidepanel
---------

Show local and remote branches, git remotes, tags and submodules.