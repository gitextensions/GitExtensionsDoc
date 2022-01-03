.. _plugins:

Plugins
==========

Git Extensions has a possibility to add functionality in external plugins. Some are distributed with the main program.

Most plugins has settings in :ref:`settings`. Most plugins also have UI forms accessible from the main menu in :ref:`browse-repository`.

This list is incomplete.

Bundled
-------

.. settingspage:: Auto compile SubModules

    This plugin proposes (confirmation required) that you automatically build submodules after they are updated via the GitExtensions Update submodules command.

    .. setting:: Enabled

      Enter true to enable the plugin, or false to disable.

    .. setting:: Path to msbuild.exe

      Enter the path to the msbuild.exe executable.

    .. setting:: msbuild.exe arguments

      Enter any arguments to msbuild.

.. settingspage:: Bitbucket Server

    For repositories is hosted on Atlassian Bitbucket Server, the plugin cannot be used for bitbucket.org.
    For more information see: https://www.atlassian.com/software/bitbucket/server

    This plugin will enable you to view and create pull requests for Bitbucket.

    .. setting:: Bitbucket Username

      The username required to access Bitbucket.

    .. setting:: Bitbucket Password

      The password required to access Bitbucket.

    .. setting:: Specify the base URL to Bitbucket

      The URL from which you will access Bitbucket.

    .. setting:: Disable SSL verification

      Check this option if you do not require SSL verification to access Bitbucket Server.

.. settingspage:: Create local tracking branches

    This plugin will create local tracking branches for all branches on a remote repository.
    The remote repository is specified when the plugin is run.

.. settingspage:: Delete obsolete branches

    This plugin allows you to delete obsolete branches i.e. those branches
    that are fully merged to another branch.
    It will display a list of obsolete branches for review before deletion.

    .. setting:: Delete obsolete branches older than (days)

      Select branches created greater than the specified number of days ago.

    .. setting:: Branch where all branches should be merged

      The name of the branch where a branch must have been merged into to be considered obsolete.

.. settingspage:: Find large files

    Finds large files in the repository and allows you to delete them.

    .. setting:: Find large files bigger than (Mb)

      Specify what size is considered a 'large' file.

.. settingspage:: GitHub

    This plugin will create an OAuth token so that some common GitHub actions can be integrated with Git Extensions.

    For more information see: https://github.com/

    .. setting:: OAuth Token

      The token generated and retrieved from GitHub.

.. settingspage:: GitFlow

This plugin permit to manage your _branching model: http://nvie.com/posts/a-successful-git-branching-model/ with _GitFlow: https://github.com/nvie/gitflow in GitExtension

You should have GitFlow installed to use this plugin.

The GitFlow plugin permit to :
- init gitflow in your git repository
- create your feature, hotfix, release or support branch
- manage (pull, publish or finish) your existing gitflow branches

.. settingspage:: Gource

    Gource is a software version control visualization tool.

    For more information see: http://gource.io/

    .. setting:: Path to "gource"

      Enter the path to the gource software.

    .. setting:: Arguments

      Enter any arguments to gource.

.. settingspage:: Impact Graph

    This plugin shows in a graphical format the number of commits and counts of changed
    lines in the repository performed by each person who has committed a change.

.. settingspage:: Periodic background fetch

    This plugin keeps your remote tracking branches up-to-date automatically by fetching periodically.

    .. setting:: Arguments of git command to run

      Enter the git command and its arguments into the edit box.
      The default command is ``fetch --all``, which will fetch all branches from all remotes.
      You can modify the command if you would prefer, for example, to fetch only a specific remote, e.g. ``fetch upstream``.

    .. setting:: Fetch every (seconds)

      Enter the number of seconds to wait between each fetch. Enter 0 to disable this plugin.

    .. setting:: Refresh view after fetch

      If checked, the commit log and branch labels will be refreshed after the fetch.
      If you are browsing the commit log and comparing revisions you may wish
      to disable the refresh to avoid unexpected changes to the commit log.

    .. setting:: Fetch all submodules

      If checked, also perform ``git fetch --all`` recursively on all configured
      submodules as part of the periodic background fetch.

.. settingspage:: Proxy Switcher

    This plugin can set/unset the value for the http.proxy git config file key as per the settings entered here.

    .. setting:: Username

      The user name needed to access the proxy.

    .. setting:: Password

      The password attached to the username.

    .. setting:: HttpProxy

      Proxy Server URL.

    .. setting:: HttpProxyPort

      Proxy Server port number.

.. settingspage:: Release Notes Generator

    This plugin will generate 'release notes'.
    This involves summarising all commits between the specified from and to commit expressions
    when the plugin is started. This output can be copied to the clipboard in various formats.

.. settingspage:: Statistics

    This plugin provides various statistics (and a pie chart) about the current Git repository.
    For example, number of commits by author, lines of code per language.

    .. setting:: Code files

      Specifies extensions of files that are considered code files.

    .. setting:: Directories to ignore (EndsWith)

      Ignore these directories when calculating statistics.

    .. setting:: Ignore submodules

      Ignore submodules when calculating statistics (true/false).

Third party extensions
----------------------

.. settingspage:: Gerrit Code Review

    The Gerrit plugin provides integration with Gerrit for GitExtensions.
    This plugin has been based on the git-review tool.

    For more information see: https://www.gerritcodereview.com/

.. settingspage:: Jira Commit Hint

  .. image:: /images/plugins/jira_commit_hint.png

Provides hints for Atlassian Jira issues in the commit form.
For example, you can configure Key - Summary message for all your in progress tasks.

    .. setting:: Jira hint plugin enabled

      Whether plugin enabled or not.

    .. setting:: Jira URL

      Link to your Jira server.

    .. setting:: Jira user

      Your username.

    .. setting:: Jira password

      Your password.

    .. setting:: JQL Query

      Query to Jira, results of which you want to show in "Commit Templates" in Commit Form. For more information see: https://confluence.atlassian.com/jiracoreserver073/advanced-searching-861257209.html

    .. setting:: Jira fields

      Key words that you can use in Message Template.

    .. setting:: Message Template

      Result format to insert into message text box after some line from "Commit Templates" selected.
