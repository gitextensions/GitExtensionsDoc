.. _merge_conflicts:

Merge Conflicts
===============

When merging or rebasing branches or commits you can get conflicts. Git will try to resolve these, but some conflicts
need to be resolved manually. Git Extensions will show warnings when there is a merge conflict in the status bar in the bottom right corner.

.. image:: /images/merge_conflicts.png

Handle merge conflicts
----------------------

To solve merge conflicts just click on a warning or open the ``Solve merge conflicts...`` dialog from the Commands menu. A dialog will prompt
showing all conflicts.

.. image:: /images/resolve_merge_conflicts.png

The context menu shows the actions to resolve the conflicts. Double-click on a filename will start the mergetool.

.. image:: /images/resolve_merge_conflicts_menu.png


There are three kinds of conflicts:

+---------------------------------------+-------------------------------+
|File deleted and changed               | Use modified or deleted file? |
+---------------------------------------+-------------------------------+
|File deleted and created               | Use created or deleted file?  |
+---------------------------------------+-------------------------------+
|File changed both locally and remotely | Start merge tool.             |
+---------------------------------------+-------------------------------+


If the file is deleted in one commit and changed in another commit, a dialog will ask to keep the modified file or delete
the file. When there is a conflicting change the merge tool will be started. You can configure the tool you want to use for
merge conflicts. The image below shows Perforce P4Merge, a merge tool free to use for small teams.

In the merge tool you will see four versions of the same file:

+--------+----------------------------------------------------------------+
|Base    | The latest version of the file that exist in both repositories |
+--------+----------------------------------------------------------------+
|Local   | The latest local version of the file                           |
+--------+----------------------------------------------------------------+
|Remote  | The latest remote version of the file                          |
+--------+----------------------------------------------------------------+
|Merged  | The result of the merge                                        |
+--------+----------------------------------------------------------------+

.. caution::

    When you are in the middle of a merge the file named local represents your file. When you are in the middle of a rebase the
    file named remote represents your file. This can be confusing, so double check if you are in doubt.

.. image:: /images/perforce_p4merge.png

