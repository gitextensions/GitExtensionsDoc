Browse Repository
=================

You can browse a repository by starting Git Extensions and selecting the repository to open from the :ref:`start-page`. The 
Commit Log window is then displayed, which is the main window in Git Extensions. 
You can also open this window from the shell extensions and from the Visual Studio IDE.

Commit Log Window
-----------------

The Commit Log window consists of a standard Windows Menu Bar, a Toolbar and the main window, which is split into two parts

* the commit history and graph that shows branches and merges
* three Tabs: Commit, File tree and Diff that display information about the currently highlighted commit(s) in the commit history

The commit history shows every commit to the repository (or the number of commits specified by the :ref:`settings-git-extensions`
Setting that limits the number of commits, whichever is the lower).

.. image:: /images/commit_diff_view.png

Toolbar
^^^^^^^

The Toolbar consists of a number of buttons and text fields as described below. The items on the Toolbar and their positions are fixed and are
not user-configurable. 
 
.. image:: /images/code_repo/arrow_refresh.png 
   :height: 24px
   :width: 24px
   :align: left

.. image:: /images/code_repo/arrow_refresh_dirty.png 
   :height: 24px
   :width: 24px
   
**Refresh, Refresh (Repository is 'dirty')** 

	This is the first button on the toolbar and you will see one of the above icons. Its function is to force Git Extensions to look at the Git repository and
	refresh itself based on any commits, index changes etc. that have been done outside of the Git Extensions GUI (e.g. via the command line).

	.. note:: the 'dirty' icon will only be shown for index changes if you have enabled the :ref:`settings-git-extensions` 'Use FileSystemWatcher' setting.

	Alternatives to this button:
	
	* pressing the :kbd:`F5` key
	* selecting :menuselection:`File --> Refresh` from the Menu Bar.

.. image:: /images/code_repo/7.png 
   :height: 24px
   :width: 24px
   :align: left
	
**Go to superproject**   TODO
	
	Refer to the :doc:`submodules` chapter for further information.

.. image:: /images/tb_button_repos.png 
   :height: 24px
   :width: 165px
   :align: left
	
**Change working directory**
	
	This button displays the repository that Git Extensions is currently working with. Clicking on this button will display a dropdown menu where you can
	
	* swap to recent repositories you have accessed
	* open the *Open local repository* dialog to search for a local repository
	* configure this dropdown menu
	
	Alternatives to this button:
	
	* pressing the :kbd:`Ctrl+O` key combination to open the *Open local repository* dialog
	* selecting :menuselection:`File --> Open` from the Menu Bar to open the *Open local repository* dialog
	* selecting :menuselection:`File --> Close` from the Menu Bar to close this repository and return you to the :ref:`start-page` where a new repository can be selected
	* selecting :menuselection:`File --> Recent Repositories` from the Menu Bar where a list of recent repositories will be presented
	
	Configuring this dropdown menu will present you with the following configuration options:
	
	+-------------+-------------------------------------+----------------------------------------------------------------------------+
	|Group        | Setting                             | Description                                                                |
	+=============+=====================================+============================================================================+
	|             |Maximum number of most recent        | Sets the maximum number of recent repositories.                            |
	|             |repositories                         |                                                                            |
	|             +-------------------------------------+----------------------------------------------------------------------------+
	|             |Sort most recent repositories        | Sorts entries in Most recent repositories combobox in alphabetic order.    |
	|             |alphabetically                       |                                                                            |
	|             +-------------------------------------+----------------------------------------------------------------------------+
	|             |Sort less recent repositories        | Sorts entries in Less recent repositories combobox in alphabetic order.    |
	|             |alphabetically                       |                                                                            |
	+-------------+-------------------------------------+----------------------------------------------------------------------------+
	|Shortening   |Do not shorten                       | Do not shorten the repository path as shown on the toolbar button.         |
	|strategy     |                                     |                                                                            |
	|             +-------------------------------------+----------------------------------------------------------------------------+
	|             |The most significant directory       | Displays the last entry in the path on the toolbar button. This will be the|
	|             |                                     | repository name.                                                           |
	|             +-------------------------------------+----------------------------------------------------------------------------+
	|             |Replace middle part with dots        | Shows the first and last parts of the repository path, with the middle bit |
	|             |                                     | replaced with dots.                                                        |
	+-------------+-------------------------------------+----------------------------------------------------------------------------+
	|             |Combobox minimum width               | Allows you to specify the width of the part of this dialog that shows the  |
	|             |                                     | Most/Less recent repositories comboboxes. Specifying 0 means this dialog   |
	|             |                                     | box will expand horizontally to the largest of the repository paths.       |
	+-------------+-------------------------------------+----------------------------------------------------------------------------+

	If you select a repository in either the Most or Less recent repositories combobox, you can right-click to display a context menu
	with the following options:
	
	+---------------------------------------------------+----------------------------------------------------------------------------+
	| Option                                            | Description                                                                |
	+===================================================+============================================================================+
	|Anchor to most recent repositories                 | Moves the repository to the Most recent repositories combobox.             |
	+---------------------------------------------------+----------------------------------------------------------------------------+
	|Anchor to less recent repositories                 | Moves the repository to the Less recent repositories combobox.             |
	+---------------------------------------------------+----------------------------------------------------------------------------+
	|Remove anchor                                      | If this repository is selected (i.e. highlighted), it un-selects it.       |
	+---------------------------------------------------+----------------------------------------------------------------------------+
	|Remove from recent repositories                    | Removes this repository from the combobox.                                 |
	+---------------------------------------------------+----------------------------------------------------------------------------+

.. image:: /images/tb_button_branch.png
   :height: 24px
   :width: 90px
   :align: left
	
**Change current branch**	

	This button displays the currently checked out branch. Clicking on this button will display a dropdown menu where you can
	
	* select a new branch to switch to from the displayed list of branches that exist on your local repository.
	* open the *Checkout branch* dialog 

	Alternatives to this button:
	
	* pressing the :kbd:`Ctrl+.` key combination to open the *Checkout branch* dialog
	* selecting :menuselection:`Commands --> Checkout branch` from the Menu Bar to open the *Checkout branch* dialog 
	* access the context menu by right-clicking a commit that is in a branch, then selecting :menuselection:`Checkout branch -->`. 
	  The list of branches that commit is in will be displayed and you can select one to checkout.
	
	Refer to the :doc:`branches` chapter for further information.

.. image:: /images/code_repo/stash.png
   :height: 24px
   :width: 24px
   :align: left
	
**Stash changes**	

	This button allows you to work with the Stash. Note that this button also has a dropdown menu that operates independently from the button. If you click
	on the button it will open a dialog where the Stash can be manipulated. If you open the dropdown menu you can

	* stash current working directory changes
	* pop a saved stash ie restore working directory to contents of the stash
	* open the *Stash* dialog
		
	.. note:: If you have enabled the :ref:`settings-git-extensions` 'Show stash count on status bar' setting then the number of saved stashes 
			  will be displayed next to this button. 

	Alternatives to this button:
	
	* selecting :menuselection:`Commands --> Stash changes` from the Menu Bar to open the *Stash* dialog 
	
	Refer to the :doc:`commit` chapter for further information.

.. image:: /images/tb_button_commit.png
   :height: 24px
   :width: 75px
   :align: left

.. image:: /images/tb_button_commits.png
   :height: 24px
   :width: 90px
   
**Commit, Commit (pending commit)** 

	This button will open the *Commit* dialog where any uncommitted changes can be committed to the repository. The first button is displayed when there are no 
	uncommitted changes in the working directory. The second button style indicates there are uncommitted changes and the number of those changes.

	.. note:: the number of uncommitted changes is only displayed if you have enabled the :ref:`settings-git-extensions`
			  'Show repository status in browse dialog' setting.

	Alternatives to this button:
	
	* pressing the :kbd:`Ctrl+Space` key combination to open the *Commit* dialog
	* selecting :menuselection:`Commands --> Commit` from the Menu Bar to open the *Commit* dialog 


	Refer to the :doc:`commit` chapter for further information.

.. image:: /images/code_repo/4.png
   :height: 24px
   :width: 24px
   :align: left

.. image:: /images/code_repo/PullMerge.png
   :height: 24px
   :width: 24px

.. image:: /images/code_repo/PullRebase.png
   :height: 24px
   :width: 24px
   
.. image:: /images/code_repo/PullFetch.png
   :height: 24px
   :width: 24px
   
.. image:: /images/code_repo/PullFetchAll.png
   :height: 24px
   :width: 24px

**Open pull dialog, Pull - merge, Pull - rebase, Pull - fetch, Pull - fetch all**   

	This button allows you to retrieve changes from a remote repository and apply them to your local repository. When Git Extensions is first installed,
	the default button displayed on the toolbar is **Open pull dialog** which will display the *Pull* dialog when clicked. This default can be changed.
	This button also has a dropdown menu that operates independently from the button, and when opening it you are able to
	
	* **Merge** Fetch changes from a remote repository and merge into your local branch. Before this button is clicked, you must have checked out
	  the local branch you are pulling to, and that local branch must be the local tracking branch for the remote repository. 
	* **Rebase** Fetch changes from a remote repository and rebase any local branch changes on top of the remote branch changes. As above, the local
	  branch must be checked out and be a local tracking branch.
	* **Fetch** Fetch all changes from a remote repository to your local repository, updating the remote references. If the currently checked out branch
	  is a remote tracking branch, then the fetch is done from that remote. If the checked out branch is not a remote tracking branch, then the fetch
	  is done from the remote called origin (if it exists).
	* **Pull** Opens the *Pull* dialog
	* **Fetch all** Fetch all changes from *all* remote repositories defined in your local repository. All remote references are updated.

	.. note:: Selecting one of the above options (except the Pull option), either from the dropdown menu or when it is the default button on the toolbar, 
	   causes immediate execution of the command. There is no confirmation dialog.
	
	.. warning:: Selecting **Rebase** may rewrite history on your local repository. This is not recommended if you have already published that history
	   elsewhere.
	   
	When selecting an option from the dropdown menu, selecting an item above the divider (i.e. Merge, Rebase or Fetch) will result in the selection becoming
	the new default button on the toolbar. 
	
	The **don't set as default** menu item is a checkbox that only applies to the items below the divider (i.e. Pull and Fetch all). It behaves as follows:
	
	* if checked, clicking Pull or Fetch all will *not* result in them becoming the default on the toolbar.
	* if unchecked, clicking Pull or Fetch all *will* result in the selection becoming the default on the toolbar.
	
	Alternatives to this button:
	
	* pressing the :kbd:`Ctrl+Down` key combination 
	* selecting :menuselection:`Commands --> Pull` from the Menu Bar to open the *Pull* dialog 
	
	Refer to the :doc:`remote_feature` chapter for further information.
	
.. image:: /images/code_repo/3.png
   :height: 24px
   :width: 24px
   :align: left
	
**Push changes**

	This button will open the *Push* dialog where changes on your local repository can be sent to a remote repository.  

	Alternatives to this button:
	
	* pressing the :kbd:`Ctrl+Up` key combination 
	* selecting :menuselection:`Commands --> Push` from the Menu Bar to open the *Push* dialog 

	Refer to the :doc:`remote_feature` chapter for further information.
	
.. image:: /images/code_repo/bash.png
   :height: 24px
   :width: 24px
   :align: left
	
**Git bash**		

	This button will open a bash window. In Linux, a bash shell is roughly equivalent to the Windows DOS Command shell. The bash shell allows you to enter
	git commands directly. For example::

		Welcome to Git (version 1.8.3-preview20130601)


		Run 'git help git' to display the help index.
		Run 'git help <command>' to display help for specific commands.

		user@VBOX-XP ~/My Documents/GitExtensionsDoc (fix/Chapter3)
		$ git branch -v
		  TestDocBuild 0839935 Updated version to 2.46
		* fix/Chapter3 3d606e7 working on main window
		  latest       0839935 Updated version to 2.46
		  master       6c40f7a Merge branch 'latest'

		user@VBOX-XP ~/My Documents/GitExtensionsDoc (fix/Chapter3)
		$	

	Alternatives to this button:
	
	* pressing the :kbd:`Ctrl+G` key combination 
	* selecting :menuselection:`Git --> Git bash` from the Menu Bar 

.. image:: /images/code_repo/71.png
   :height: 24px
   :width: 24px
   :align: left
	
**Settings**	

	This button will open the settings dialog window.
	
	Alternatives to this button:
	
	* selecting :menuselection:`Settings --> Settings` from the Menu Bar 

	Refer to :ref:`settings` for further information.

.. image:: /images/tb_button_branch_filter.png
   :height: 24px
   :width: 240px
   :align: left
   
**Branches filter**

	This filter consists of a text box and associated dropdown list and a 'gear' icon. It is used to filter the commit history display so that commits that are part
	of the selected branch are the only ones displayed.
	You can either
	
	* type a branch name in the check box or,
	* select a branch name from the dropdown list
	
	The branch name entries displayed in the dropdown list are also affected by the item(s) selected from the dropdown menu associated with the 'gear' icon.  You
	can select local and/or remote branches.

	.. note:: The commit history display is *not* updated until you press the ``Enter`` key, regardless of whether you type in a branch name or select one from the 
	   dropdown menu.
	   
	Refer to :ref:`searching_and_filtering` for further information.

.. image:: /images/tb_button_filter.png
   :height: 24px
   :width: 185px
   :align: left
   
**Filter**

	This filter consists of a text box and associated 'gear' icon. It is used to filter the commit history display for the matching text entered in the 
	checkbox. The dropdown associated with 'gear' icon determines what component of the commit is searched.

	.. note:: The commit history display is *not* updated until you press the ``Enter`` key.

	Refer to :ref:`searching_and_filtering` for further information.
	
.. image:: /images/code_repo/SplitViewLayout.png
   :height: 24px
   :width: 24px
   :align: left

**Toggle split view layout**	

	This button toggles between displaying a split screen view or only displaying the commit history and graph full screen.

	Alternatives to this button:
	
	* clicking on and dragging the divider between the two views - this will adjust the size of each view 
	
Commit History and Graph
^^^^^^^^^^^^^^^^^^^^^^^^	

** TODO **
   
Commit Tab
^^^^^^^^^^	
The commit tab contains information about the commit that is currently selected in the commit history.

cover - image and context menu 
- author info
- commit message
- Signed off by
- Contained in: branches and tag
- context menu 

File Tree Tab
^^^^^^^^^^^^^

** TODO **

Diff Tab
^^^^^^^^	

** TODO **

===== existing doco =======

The full commit history can be browsed. There is a graph that shows branches and merges. You can show the difference 
between two revision by selection them using ctrl-click.

In the context menu of the commit log you can enable or disable the revision graph. You can also choose to only show the 
current branch instead of showing all branches. The other options will be discussed later.

.. image:: /images/commit_contextual_menu.png

.. _searching_and_filtering:

Searching and Filtering
-----------------------

The history can be searched using regular expressions are basic search terms. The quick filter in the toolbar searches in 
the commit message, the author and the committer.

.. image:: /images/quick_filter.png

In the context menu of the commit log you can open the advanced filter dialog. The advanced filter dialog allows you to 
search for more specific commits. To remove the filter either remove the filter in the toolbar and press enter or remove the 
filter in the advanced filter dialog.

.. image:: /images/advance_filter_dialog.png

Singe file history
------------------

To display the single file history, right click on a file name in the ``File tree`` or in the ``Diff`` tab and select ``blame``.

.. image:: /images/context_menu_blame.png

The single file history viewer shows all revisions of a single file. You can view the content of the file in after each 
commit in the ``View`` tab.

.. image:: /images/file_history.png

You can view the difference report from the commit in the ``Diff`` tab. 

.. note::
    Added lines are marked with a ``+``, removed lines are marked with a ``–``.

.. image:: /images/file_history_diff.png

Blame
-----

There is a blame function in the file history browser. It shows the last person editing a single line. 

.. image:: /images/blame.png

Double clicking on a code line shows the full commit introducing the change.
