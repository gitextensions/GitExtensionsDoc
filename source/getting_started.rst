Getting Started
===============

This section is primarily written for Windows users. There is an extra section
about installing Git Extensions on Linux. 

Installation
------------

There is a single click installer that installs MSysGit, kdif3 and Git Extensions. The installer will detect 
if 32bit and/or 64bit versions should be installed.
The installer can be found `here <http://code.google.com/p/gitextensions/>`_.

.. figure:: /images/install/install1.png

.. figure:: /images/install/install2.png

    Git Extensions depends heavily on MSysGit. When MSysGit is not installed install this first. Kdiff3 is 
    optional, but is advised as a merge tool.

.. figure:: /images/install/install3.png

.. figure:: /images/install/install4.png

    Choose the options to install.

.. figure:: /images/install/install5.png

    Choose the SSH client to use. PuTTY is the default because it has better windows integration.

.. figure:: /images/install/install6.png

Installation (Linux)
--------------------
You can watch this video as a starting point: `Install Git Extensions on Ubuntu 11.04  <http://www.youtube.com/watch?v=zk2MMUQuW4s>`_

For further help go to https://groups.google.com/forum/?fromgroups=#!forum/gitextensions

Installation (Mac)
------------------

First we need to make sure you have latest mono version on your Mac. This section will cover installation of mono 2.10.11 over a Mac.

1) Download mono latest version, you can always check for this here http://www.go-mono.com/mono-downloads/download.html
2) After you completed the download, you will see a .dmg file. Double click it to open the package.
3) Inside the .dmg file you will have MonoFramework-{version}.pkg. Double click to start the installation process.
4) Follow the wizard until it's completion.
5) If everything went ok, you should open your terminal and check mono version::

    $ mono --version
    Mono JIT compiler version 2.10.11 (mono-2-10/2baeee2 Wed Jan 16 16:40:16 EST 2013)
    Copyright (C) 2002-2012 Novell, Inc, Xamarin, Inc and Contributors. www.mono-project.com
        TLS:           normal
        SIGSEGV:       normal
        Notification:  kqueue
        Architecture:  x86
        Disabled:      none
        Misc:          softdebug 
        LLVM:          yes(2.9svn-mono)
        GC:            Included Boehm (with typed GC)

6) Now download GitExtensions latest version from https://code.google.com/p/gitextensions/downloads/list. Remember to select the appropriate package otherwise you could have problems.
7) Browse into the folder where you extracted the package and just run mono command, like the example below::

    $ mono GitExtensions.exe 

This is the minimal setup you need in order to run GitExtensions.

Settings
--------

All settings will be verified when Git Extensions is started for the first time. If Git Extensions requires 
any settings to be changed the settings dialog will be shown. All incorrect settings will be marked red. You 
can ask Git Extensions to try to fix the setting for you by clicking on it.

.. image:: /images/settings/checklist.png

All settings that are specific to Git Extensions will be stored in a file either in the user's application data path or with the program. 
The location is dependant on the IsPortable setting in the GitExtensions.exe.config file that is with the program.
The settings that are used by Git are stored in the configuration files of Git. The global settings are stored in a file called 
``.gitconfig`` in the user directory. The local settings are stored in the .git\config file of the repository.

.. image:: /images/settings/git.png


The 'Git' tab contains the settings needed to access git repositories. The database will be accessed using external 
tools. For Windows usually msysgit or cygwin are used. Git Extensions will try to configure these settings automatically.

+-----------------------------------------+--------------------------------------------------------------------------+
|Command to run git (git.cmd or git.exe)  | Needed for Git Extensions to run Git commands. Set the full command      |
|                                         | used to run git (msysgit or cygwin).                                     |
+-----------------------------------------+--------------------------------------------------------------------------+
|Path to Linux tools                      | A few linux tools are used by Git Extensions. When msysgit is installed, |
|                                         | these tools are located in the bin directory of msysgit.                 |
+-----------------------------------------+--------------------------------------------------------------------------+

The global configuration file used by git will be put in the home directory. On some systems the home directory is not set 
or is pointed to a network drive. Git Extensions will try to detect the optimal setting for your environment. When there is 
already a global git configuration file, this location will be used. If you need to relocate the home directory for git, 
change this setting. Otherwise leave this setting on default.

.. image:: /images/settings/git_extensions.png

The ‘Git Extension’ tab contains all settings needed for Git Extension to run properly. The path to git.cmd and git.exe can 
be set here. This is only needed when these are not in the system path.

+---------------------------------------------------+----------------------------------------------------------------------------+
|Show stash count on status bar in browse window    | When you use the stash a lot, it can be useful to show the number of       |
|                                                   | stashed items on the toolbar. This option causes serious slowdowns in large|
|                                                   | repositories and is turned off by default.                                 |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Use FileSystemWatcher to check if index is changed | Using the FileSystemWatcher to check index state improves the performance  |
|                                                   | is some cases. Turn this off if you experience refresh problems in commit  |
|                                                   | log.                                                                       |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Show current working dir changes in revision graph | When enabled, two extra revisions are added to the revision graph. The     |
|                                                   | first shows the current working directory status. The second shows the     |
|                                                   | staged files. This option can cause slowdowns when browsing large          |
|                                                   | repositories.                                                              |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Limit number of commits that will be loaded in     | Git Extensions uses lazy loading to load the commit log. Lower this number |
|list at start-up.                                  | to increase the start-up speed. Increase the number for faster scrolling.  |
|                                                   | Turn of revision graph for optimal result!                                 |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Close process dialog automatically when process is | When a process is finished, clause the process dialog automatically. Leave |
|succeeded                                          | this option off if you want to see the result of processes. When a process |
|                                                   | has been failed, the dialog will keep open.When a process is finished,     |
|                                                   | clause the process dialog automatically. Leave this option off if you want |
|                                                   | to see the result of processes. When a process has been failed, the dialog |
|                                                   | will keep open.                                                            |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Show Git command line dialog when executing process| Git Extensions uses command line tools to access the git database. In some |
|                                                   | environments it might be useful to see the command line dialog when a      |
|                                                   | process is executed.                                                       |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Follow renames in file history                     | Try to follow file renames in the file history.                            |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Revision graph quicksearch timeout [ms]            | The timeout used for the quicksearch feature in the revision graph. The    |
|                                                   | quicksearch will be enabled when you start typing and the revision graph is|
|                                                   | focussed.                                                                  |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Smtp server for sending patches                    | Smtp server to use for sending patches.                                    |
+---------------------------------------------------+----------------------------------------------------------------------------+

.. image:: /images/settings/appearance.png

+---------------------------------------------------+----------------------------------------------------------------------------+
|Show relative date instead of full date            | Show relative date, e.g. 2 weeks ago, instead of full date.                |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Get author image from gravatar.com                 | Whether or not retrieve the user avatar from gravatar.                     |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Image size                                         | The display size of the user avatar.                                       |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Cache images                                       | Long duration will do less resquest but will take more time to update      |
|                                                   | envutual user's avatar changes.                                            |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Clear image cache                                  | Clear the cached avatars.                                                  |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Fonts                                              | Change the used font.                                                      |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Language                                           | Choose the language for the Git Extensions interface.                      |
+---------------------------------------------------+----------------------------------------------------------------------------+
|Dictionary for spelling checker                    | Choose the dictionary to use for the spelling checker in the commit dialog.|
+---------------------------------------------------+----------------------------------------------------------------------------+

.. image:: /images/settings/colors.png

In the color tab the following items can be set:

+-----------------------+-------------------------------------------------------------------------------------------+
|Revision graph colors  | The colors that are used in the revision graph.                                           |
+-----------------------+-------------------------------------------------------------------------------------------+
|Difference view colors | The colors that are used to mark changes.                                                 |
+-----------------------+-------------------------------------------------------------------------------------------+
|Application Icon       | The color of the application icon. This is useful for recognising various open instances. |
+-----------------------+-------------------------------------------------------------------------------------------+

.. image:: /images/settings/start_page.png

The items on the Start Page can be edited. In this tab you can add and remove categories. Per category you can either configure 
a RSS feed or add repositories. The order can be changed using the context menus in the Start Page.

.. image:: /images/settings/global_settings.png

In the ``Global settings`` tab some global Git settings can be set.

+------------------+-------------------------------------------------------------------------------------------------------+
|User name         | User name shown in commits and patches.                                                               |
+------------------+-------------------------------------------------------------------------------------------------------+
|User email        | User email shown in commits and patches.                                                              |
+------------------+-------------------------------------------------------------------------------------------------------+
|Editor            | Editor that git.exe opens (e.g. for editing commit message). This is not used by Git Extensions, only |
|                  | when you call git.exe from the command line. By default Git will use the command line text editor vi. |
+------------------+-------------------------------------------------------------------------------------------------------+
|Mergetool         | Merge tool used to solve merge conflicts. Git Extensions will search for common merge tools on your   |
|                  | system.                                                                                               |
+------------------+-------------------------------------------------------------------------------------------------------+
|Path to mergetool | Path to merge tool. Git Extensions will search for common merge tools on your system.                 |
+------------------+-------------------------------------------------------------------------------------------------------+
|Mergetool command | Command that Git uses to call the merge tool. Git Extensions will try to set this automatic when a    |
|                  | merge tool is chosen. This setting can be left empty when Git supports the mergetool (e.g. kdiff3).   |
+------------------+-------------------------------------------------------------------------------------------------------+
|DiffTool          | DiffTool that is used.                                                                                |
+------------------+-------------------------------------------------------------------------------------------------------+
|Path to DiffTool  | The path to the difftool.                                                                             |
+------------------+-------------------------------------------------------------------------------------------------------+
|DiffToolCommand   | Command that Git uses to start the DiffTool. This setting should only be filled when Git doesn't      |
|                  | support the mergetool.                                                                                |
+------------------+-------------------------------------------------------------------------------------------------------+
|Line endings      | Choose how git should handle line endings.                                                            |
+------------------+-------------------------------------------------------------------------------------------------------+
|Encoding          | Choose the encoding you want GitExtensions to use.                                                    |
+------------------+-------------------------------------------------------------------------------------------------------+

.. image:: /images/settings/ssh.png

In the tab ``SSH`` you can configure the SSH client you want Git to use. Git Extensions is optimized for PuTTY. Git Extensions 
will show command line dialogs if you do not use PuTTY and user input is required. Git Extensions can load SSH keys for PuTTY 
when needed.

Start Page
----------

The start page contains the most common tasks, recently opened repositories and favourites. The left side of the start page 
is static. The other items can be edited.

.. image:: /images/start_page.png

Repositories can be moved to favourites using the context menu. Choose edit to add new repositories to any category.

.. image:: /images/move_to_category.png

Clone existing repository
-------------------------

You can clone an existing repository using the ``Clone`` menu option. You can choose the repository type to clone to. For 
personal use you need to choose ``Personal repository``. For a central or public repository, choose ``Central repository``. A 
central repository does not have a working directory.

.. image:: /images/clone.png

The repository you want to clone could be on a network share or could be a repository that is accessed through an internet 
or intranet connection. Depending on the protocol (http or ssh) you might need to load a SSH key into PuTTY.

There are two different types of repositories you can create when making a clone. A personal repository contains the complete 
history and also contains a working copy of the source tree. A central repository is used as a public repository where 
developers push there changes they want to share with others to. A central repository contains the complete history but to not 
have a working directory like personal repositories.

Create new repository
---------------------

When you do not want to work on an existing project, you can create your own repository. Choose the menu option 
``Init new repository`` to create a new repository.

.. image:: /images/new_repository.png

You can choose to create a Personal repository or a Central repository.

A personal repository looks the same as a normal working directory but has a directory named ``.git`` on root level 
containing the version history. This is the most common repository.

Central repositories only contain the version history. Because a central repository has no working directory you cannot 
checkout a revision in a central repository. It is also impossible to merge or pull changes in a central repository. This 
repository type can be used as a public repository where developers can push changes to or pull changes from.

