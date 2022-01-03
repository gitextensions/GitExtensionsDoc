.. _file-history:

File history
============

``File tree`` is a separate form to view the history of a file or folder.
Since Git Extensions 4.0 this functionality is included in :ref:`browse-repository`,
see specifically :ref:`filter-file`.
This form is deprecated and may be removed in future releases.

To display the single file history, right click on a file name in the :ref:`browse-repository` ``File tree`` or in the ``Diff`` tab and select ``File history`` or ``Blame``.
The single file history viewer shows all revisions of a single file or submodules.

.. image:: /images/context_menu_blame.png

Commit
------

The ``Commit`` tab contains the information about the commit, including the other files in the commit.

.. image:: /images/file_history_commit.png

Diff
----

You can view the difference report from the commit in the ``Diff`` tab.

.. note::
    Added lines are marked with a ``+``, removed lines are marked with a ``–``.

.. image:: /images/file_history_diff.png

View
----

You can view the content of the file in after each commit in the ``View`` tab.

.. image:: /images/file_history_view.png

Blame
-----

There is a blame function in the file history browser. The commit for the selected line is displayed.

.. image:: /images/file_history_blame.png

Double clicking on a code line shows the full commit introducing the change.
