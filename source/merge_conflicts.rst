Merge Conflicts
===============

When merging branches or commits you can get merge conflicts. Git will try to resolve these, but some conflicts
need to be resolved manually. Git Extensions will show warnings when there is a merge conflict.

.. image:: /images/merge_conflicts.png

Handle merge conflicts
----------------------

To solve merge conflicts just click on a warning or open the merge conflict dialog from the menu. A dialog will prompt
showing all conflicts. You can solve a conflict by double-click on a filename.

.. image:: /images/resolve_merge_conflicts.png

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
merge conflicts. The image below shows Perforce P4Merge a free to use merge tool. Git Extensions is packaged with KDiff3, an
open source merge tool.

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

