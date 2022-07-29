.. _stash:

Stash
=====

If there are local changes that you do not want to commit yet and not want to throw away either, you can temporarily stash
them. This is useful when working on a feature and you need to start working on something else for a few hours. You can
stash changes away and then reapply them to your working dir again later. Stashes are typically used for very short periods.

.. image:: /images/stash_dialog.png

Revision graph
--------------
You can create multiple stashes if needed. The latest stash is shown in the commit log with the text ``[stash]``, all stashes if reflog is visible (see :ref:`maintenance`).

.. image:: /images/commit_log_stash.png

The stash is especially useful when pulling remote changes into a dirty working directory.
If you want to store information more permanently, you should create a branch.
