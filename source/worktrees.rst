.. _worktrees:

Worktrees
=========

Git Extensions support Git worktrees: Multiple checked out working directories can share local branches.
For more information see the Git documentation: https://git-scm.com/docs/git-worktree

.. image:: /images/worktree_context_menu.png

.. settingsgroup:: Note for WSL

Note that Git creates worktrees with a full "native" path,
the worktree is only usable with the Git executable creating the path.

The path in the worktree file must be changed to a relative path if the worktree is to be used in both
Windows and WSL.
