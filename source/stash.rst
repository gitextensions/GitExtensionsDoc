.. _stash:

Stash
=====

If there are local changes that you do not want to commit yet and not want to throw away either, you can temporarily stash
them. This is useful when working on a feature and you need to start working on something else for a few hours. You can
stash changes away and then reapply them to your working dir again later. Stashes are typically used for very short periods.

.. image:: /images/stash_dialog.png

The stash is especially useful when pulling remote changes into a dirty working directory.
If you want to store information more permanently, you should create a branch.

Revision graph
--------------

You can create multiple stashes if needed. The 10 latest stashes are shown in the commit log with the text ``[stash]``,
all stashes if reflog is visible (see :ref:`maintenance`).

.. image:: /images/commit_log_stash.png

Left panel
----------

Stashes are also available in the :ref:`browse-repository-left-panel`.
To see stashes hidden in the revision grid, double click the stash.
