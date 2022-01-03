.. _installation:

Installation
============

Windows installer
-----------------

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

.. image:: /images/install/ready.png

Portable
--------

Git Extensions is also distributed as a portable .zip file, that only require unpacking to a new directory (migrate settings files and theme manually).
Some features like :ref:`windows-explorer` is not available with this package.

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
