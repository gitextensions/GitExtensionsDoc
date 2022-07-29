.. _branches:

Branches
========

.. image:: /images/branch.png
    :align: right

Branches are used to commit changes separate from other commits. It is very common to create a new branch when you
start working on a feature to keep the work done on that feature separate from other work. When the feature is
complete the branch can be merged or rebased as you choose such that the commits for the feature either remain as a
parallel branch or appear as a continuous single line of development as if the branch had never existed in the first
place. The image on the right illustrates a branch created on top of commit B.

You can see the name of your current branch in a combo box in the toolbar. You can switch to another branch by
choosing from the combo box list. In the commit log the current branch has an arrow head to the left of its name. If
you are not currently on a branch because you have checked out a specific commit but not any particular branch then
Git Extensions will show ``(no branch)`` in place of a branch name in the toolbar. This is called "Detached HEAD
mode". In Git you can refer to your current branch or commit by the special reference ``HEAD`` in place of the
branch name or commit reference.

.. image:: /images/branch_toolbar.png

Create branch
-------------

In Git Extensions there are multiple ways to create a new branch. In the image below I create a new branch from the
context menu in the commit log. This will create a new branch on the revision that is selected.

.. image:: /images/new_branch.png

I will create a new branch called ``feature/refactor``. In this branch I can do whatever I want without affecting others.
The default in Git Extensions is to check out a new branch after it is created. If you want to create a new branch
but remain on your current branch, uncheck the ``Checkout after create`` checkbox in the ``Create branch`` dialog.

.. image:: /images/create_branch_dialog.png

When the branch is created you will see the new branch ``feature/refactor`` in the commit log. If you chose to checkout this
branch the next commit will be committed to the new branch.

.. image:: /images/refactor_branch.png

Creating branches in Git requires only 41 bytes of space in the repository. Creating a new branch is very easy and
fast. The complete work flow of Git is optimized for branching and merging.

Orphan branches
^^^^^^^^^^^^^^^
In special cases it is helpful to have orphan branches (see for example https://www.google.com/search?q=why+use+orphan+branches+in+git).
Check the "Create orphan" checkbox to create an orphan branch (``--orphan`` option in git).

The newly created branch will have no parent commits.

The option "Clear working dir and index" (``git rm -rf``) is active by default. So the working dir and index will be cleared.
If you uncheck the last option then the working dir and index will not be touched.

Checkout branch
---------------

You can switch from the current branch to another branch using the checkout command. Checking out a branch sets the current
branch and updates all of the source files in the working directory. Uncommitted changes in the working directory can be
overwritten so it is best practice to make sure your working directory is clean by either committing or stashing any current
changes before checking out a branch. If you do not clean your working directory then, in the ``Checkout branch`` dialog, you
can choose between four options for your local uncommitted changes:

+------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``Don't change`` | Local changes will be retained if there are not conflicting changes from the branch you are checking out.                                                                 |
+------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``Merge``        | Performs a three-way merge between your current branch, your local changes and the branch you are checking out.                                                           |
+------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``Stash``        | Your local changes are stashed and the new branch is checked out. You can retrieve your changes on the new branch with stash-pop.                                         |
+------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``Reset``        | Your local changes are discarded and the new branch is checked out. Use caution with this option as Git has no record of uncommitted changes so they cannot be retrieved. |
+------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. image:: /images/checkout_branch.png

Merge branches
--------------

In the image below there are two branches, ``[feature/refactor]`` and ``[master]``. We can merge the commits from the master branch
into the feature/refactor branch. If we do this, the feature/refactor branch will be up to date with the master branch, but not the other way around.
As long as we are working on the feature/refactor branch we cannot touch the master branch itself. We can merge the sources of
master into our branch, but cannot make any change to the master branch.

.. image:: /images/merge1.png

To merge the feature/refactor branch into the master branch, we first need to switch to the master branch.

.. image:: /images/merge2.png

Once we are on the master branch, select the feature/refactor branch and select merge. Alternatively choose ``Merge branches`` from the ``Commands`` menu and select the feature/refactor branch. 

.. image:: /images/merge_context_menu.png

In the merge dialog you can verify which branch you are working on. Select the branch to merge with then click the ``Merge`` button.

.. image:: /images/merge_dialog.png

After the merge the commit log will show the new commit containing the merge. Notice that the feature/refactor branch is not changed
by this merge. If you want to continue working on the feature/refactor branch you can merge the feature/refactor branch with master. You can
instead delete the feature/refactor branch if it is not used anymore.

.. image:: /images/merge3.png

.. note::

    When you need to merge with an unnamed branch you can use a tag to give it a temporary name.

.. note::

  During a merge conflicts can occur. See :ref:`merge_conflicts` for more information.

Rebase branch
-------------

The rebase command is the most complex command in Git. The rebase command is very similar to the merge command. Both rebase
and merge are used to get a branch up-to-date. The main difference is that rebase can be used to keep the history linear
contrary to merges.

.. image:: /images/rebase1.png

Select the commit where you want to to rebase the current branch.

.. image:: /images/merge_context_menu.png

A rebase of feature/refactor on top of master will perform the following actions:

* All commits specific to the feature/refactor branch will be stashed in a temporary location
* The branch feature/refactor will be removed
* The branch feature/refactor will be recreated on the master branch
* All commits will be recommitted in the new feature/refactor branch

.. note::

  During a rebase merge conflicts can occur. You need to solve the merge conflicts for each commit that is rebased. The
  rebase function in Git Extensions will guide you through all steps needed for a successful rebase. See :ref:`merge_conflicts` for more information.

.. image:: /images/rebase_dialog.png

The image below shows the commit log after the rebase. Notice that the history is changed and it seems like the commits on
the feature/refactor branch are created after the commits on the master branch.

.. image:: /images/rebase2.png

.. warning::

    Because this function rewrites history you should only use this on branches that are not published to other repositories
    yet. When you rebase a branch that is already pushed it will be harder to pull or push to that remote. If you want to get
    a branch up-to-date that is already published you should merge.

Interactive rebase
------------------

It is possible to modify the order, merge commits etc when committing.

See :ref:`modify_history` for more information.

Squash
------

Git has no native squash operation, it can be done with various combinations of rebase and reset.
This is described in the `Git Extensions wiki <https://github.com/gitextensions/gitextensions/wiki/How-To%3A-Squash-and-Rebase-your-changes#squash>`_.

See :ref:`modify_history` and `Git documentation <https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History>`_ for more information.

Delete branch
-------------

Since it is common to create many branches, it is often necessary to delete branches. Most commonly you will need to delete
branches on which work has finished and their contents are merged into master or your main branch. You can also delete
unmerged branches when they are not needed anymore and you do not want to keep the work done in that branch.

When you delete a branch that is not yet merged, all of the commits that are in only the deleted branch will be lost.
When you delete a branch that is already merged with another branch, the merged commits will not be lost because they are
also part of another branch.

You can delete a branch using ``Delete branch`` from the ``Commands`` menu. If you want to delete a branch that is not merged into
your current branch (``HEAD`` in Git), you need to check the ``Force delete`` checkbox.

.. image:: /images/delete_branch.png
