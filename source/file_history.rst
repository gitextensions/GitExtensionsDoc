.. _file-history:

File history
============

``File history`` is a separate form to view the history of a file or folder.
Since Git Extensions 4.0 this functionality is included in :ref:`browse-repository`
but can be activated by :ref:`settings-general-show-file-history-in-the-main-window`.
This form is deprecated and may be removed in future releases.

To display the single file history, right click on a file name in
:ref:`browse-repository-tabs-file-tree` or :ref:`browse-repository-tabs-diff` tab
and select ``File history`` or ``Blame``.

The single file history viewer shows all revisions of a single file or submodules.

.. image:: /images/file_history/context_menu_blame.png

Commit
------

The ``Commit`` tab contains the information about the commit, including the other files in the commit.

.. image:: /images/file_history/file_history_commit.png

Diff
----

You can view the difference report from the commit in the ``Diff`` tab.

.. image:: /images/file_history/file_history_diff.png

.. note::

   Added lines are marked with a ``+``, removed lines are marked with a ``–``.

View
----

You can view the content of the file in after each commit in the ``View`` tab.

.. image:: /images/file_history/file_history_view.png

Blame
-----

There is a blame function in the file history browser. The commit for the selected line is displayed.

.. image:: /images/file_history/file_history_blame.png

Double clicking on a code line shows the full commit introducing the change.
