Branches
========

.. image:: /images/branch.png
    :align: right

Branches are used to commit changes separate from other commits. It is very common to create a branch when you 
start working on a feature and you are not sure if this feature will be finished in time for the next release. The 
image on the right illustrates a branch created on top of commit B. 

In Git branches are created very often. Creating a branch is very easy to do and it is recommended to create a branch 
very often. In fact, when you make a commit to a cloned repository you start a new branch. I will explain this in the 
pull chapter.

You can check on what branch you are working in the toolbar.

.. image:: /images/branch_name.png

Create branch
-------------

In Git Extensions there are multiple ways to create a new branch. In the image below I create a new branch from the 
context menu in the commit log. This will create a new branch on the revision that is selected.

.. image:: /images/new_branch.png

I will create a new branch called ``Refactor``. In this branch I can do whatever I want without considering others. 
In the ``Create branch`` dialog there is a checkbox you can check if you want to checkout this branch immediate after 
the branch is created.

.. image:: /images/create_branch_dialog.png

When the branch is created you will see the new branch ``Refactor`` in the commit log. If you chose to checkout this 
branch the next commit will be committed to the new branch. 

.. image:: /images/refactor_branch.png

Creating branches in Git requires only 41 bytes of space in the repository. Creating a new branch is very easy and is 
very fast. The complete work flow of Git is optimized for branching and merging.

Orphan branches
^^^^^^^^^^^^^^^
In special cases it is helpful to have orphan branches (see for example https://www.google.com/search?q=why+use+orphan+branches+in+git).
Check the "Create orphan" checkbox to create an orphan branch (``--orphan`` option in git).

The newly created branch will have no parent commits.

The option "Clear working dir and index" (``git rm -rf``) is active by default. So the working dir and index will be cleared.
If you uncheck the last option then the working dir and index will not be touched.

Checkout branch
---------------

You can switch from the current branch to another branch using the checkout command. Checkout a branch sets the current 
branch and updates all sources in the working directory. Uncommitted changes in the working directory can be overwritten, 
make sure your working directory is clean.

.. image:: /images/checkout_branch.png

Merge branches
--------------

In the image below there are two branches, ``[Refactor]`` and ``[master]``. We can merge the commits from the master branch 
into the Refactor. If we do this, the Refactor branch will be up to date with the master branch, but not the other way around. 
As long as we are working on the Refactor branch we cannot tough the master branch itself. We can merge the sources of 
master into our branch, but cannot make any change to the master branch.

.. image:: /images/merge1.png

To merge the Refactor branch into the master branch, we need to switch to the master branch first. 

.. image:: /images/merge2.png

Once we are on the master branch we can choose merge by choosing ``Merge branches`` from the ``Commands`` menu. In the merge 
dialog you can check the branch you are working on. After selected the branch to merge with, click the ``Merge`` button.

.. image:: /images/merge_dialog.png

After the merge the commit log will show the new commit containing the merge. Notice that the Refactor branch is not changed 
by this merge. If you want to continue working on the Refactor branch you can merge the Refactor branch with master. You could 
also delete the Refactor branch if it is not used anymore.

.. image:: /images/merge3.png

.. note::

    When you need to merge with on unnamed branch you can use a tag to give it a temporary name.

Rebase branch
-------------

The rebase command is the most complex command in Git. The rebase command is very similar to the merge command. Both rebase 
and merge are used to get a branch up-to-date. The main difference is that rebase can be used to keep the history linear 
contrary to merges.

.. image:: /images/rebase1.png

A rebase of Refactor on top of master will perform the following actions:

* All commits specific to the Refactor branch will be stashed in a temporary location
* The branch Refactor will be removed
* The branch Refactor will be recreated on the master branch
* All commits will be recommitted in the new Refactor branch

During a rebase merge conflicts can occur. You need to solve the merge conflicts for each commit that is rebased. The 
rebase function in Git Extensions will guide you through all steps needed for a successful rebase.

.. image:: /images/rebase_dialog.png

The image below shows the commit log after the rebase. Notice that the history is changed and is seems like the commits on 
the Refactor branch are created after the commits on the master branch.

.. image:: /images/rebase2.png

.. warning::

    Because this function rewrites history you should only use this on branches that are not published to other repositories 
    yet. When you rebase a branch that is already pushed it will be harder to pull or push to that remote. If you want to get 
    a branch up-to-date that is already published you should merge.

Delete branch
-------------

It is very common to create a lot of branches. You can delete branches when they are not needed anymore and you do not want 
to keep the work done in that branch. When you delete a branch that is not yet merged, all commits will be lost. When you 
delete a branch that is already merged with another branch, the merged commits will not be lost because they are also part 
of another branch. 

You can delete a branch using ``Delete branch`` in ``Commands`` menu. If you want to delete a branch that is not merged into 
another branch, you need to check the ``Force delete`` checkbox.

.. image:: /images/delet_branch.png
