Getting Started
===============

Installation
------------

This section only covers Git Extensions installation, you will need to have Git for Windows installed: https://git-scm.com/download/win

The Git Extensions installer can be found on `GitHub <https://github.com/gitextensions/gitextensions/releases/latest>`_.

.. figure:: /images/install/welcome.png

    Start installation.

.. figure:: /images/install/scope.png

    Installation scope.

.. figure:: /images/install/destination.png

    Destination folder.

.. figure:: /images/install/options.png

    Choose the options to install.

.. figure:: /images/install/ssh.png

    Choose the SSH client to use. PuTTY is the default because it has better Windows integration, but Pageant must be running.

.. image:: /images/install/ready.png

Portable
--------

Git Extensions is also distributed as a portable .zip file, that only require unpacking. Some features like Windows shell integration and Visual Studio integration is not available with this package.

Settings
--------

Git must be installed prior to starting Git Extensions:
.. image:: /images/install/git_missing.png

First selection is language (depends on the installed languages):
.. image:: /images/install/language.png

All settings will be verified when Git Extensions is started for the first time. If Git Extensions requires
any settings to be changed, the Settings dialog will be shown. All incorrect settings will be marked in red (for instance if the Git version is unsupported) and orange for not recommended setting (like that Git version is older than recommended).
You can ask Git Extensions to try to fix the setting for you by clicking on it.
When installing Git Extensions for the first time,
you will normally be required to configure your username and email address.

The settings dialog can be invoked at any time by selecting ``Settings`` from the ``Tools`` menu option.

.. image:: /images/settings/settings.png

For further information see :ref:`settings`.

.. _start-page:

Start Page
----------

The start page contains the most common tasks, recently opened repositories and favourites. Favourite repositories can be added, grouped under Category headings in the right panel.

.. image:: /images/start_page.png

Recent Repositories can be moved to favourites using the repository context menu. Choose ``Categories / Add new`` to create a new category
and add the repository to it, or you can add the repository to an existing category (e.g. 'Currents' as shown below).

.. image:: /images/move_to_category.png

To open an existing repository, simply click the link to the repository, or
select Open repository (from where you can select a repository to open from your local file system).

To create a new repository, one of the following options under Common Actions can be selected.

Create new repository
---------------------

When you do not want to work on an existing project, you can create your own repository using this option.

.. image:: /images/new_repository.png

Select a directory where the repository is to be created. You can choose to create a Personal repository or a Central repository.

A personal repository looks the same as a normal working directory but has a directory named ``.git`` at the root level
containing the version history. This is the most common repository.

Central repositories only contain the version history. Because a central repository has no working directory you cannot
checkout a revision in a central repository. It is also impossible to merge or pull changes in a central repository. This
repository type can be used as a public repository where developers can push changes to or pull changes from.

Open repository
----------------

Opens a Git repo already existing on the file system.

.. image:: /images/open_repo.png
 
Clone repository
----------------

You can clone an existing repository using this option. 

.. image:: /images/clone.png

The repository you want to clone could be on a network share or could be a repository that is accessed through an internet
or intranet connection. Depending on the protocol (http or ssh) you might need to load a SSH key into PuTTY. You also need to specify where
the cloned repository will be created and the initial branch that is checked out. If the cloned repository contains submodules, then these
can be initialised using their default settings if required.

There are two different types of repositories you can create when making a clone. A personal repository contains the complete
history and also contains a working copy of the source tree. A central (bare) repository is used as a public repository where
developers push the changes they want to share with others to. A central repository contains the complete history but does not
have a working directory like personal repositories.

Clone Github repository
-----------------------

This option allows you to

1) Fork a repository on GitHub so it is created in your personal space on GitHub.
2) Clone any repositories on your personal space on GitHub so that it becomes a local repository on your machine.

You can see your own personal repositories on GitHub, and also search for repositories using the ``Search for repositories`` tab.

.. image:: /images/github_clone.png
