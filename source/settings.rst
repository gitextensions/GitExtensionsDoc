.. _settings:

Settings
========

The settings dialog can be invoked at any time by selecting ``Settings`` from the ``Tools`` menu option.

.. image:: /images/settings/settings.png

The following buttons are always available on any page of the Settings dialog. Sometimes the ``Cancel``
button has no effect for the page - this will be noted on the page in the area next to the buttons.

.. list-table::
  :widths: 31 108
  :header-rows: 1

  * - Button
    - Description
  * - ``OK``
    - Save any entered changes made in *any* settings page and close the Settings dialog.
  * - ``Cancel``
    - Any entered changes in *any* settings page are *not* saved. The Settings dialog is closed.
  * - ``Apply``
    - Any entered changes in *any* settings page are saved.

Settings that are specific to Git Extensions and apply globally will be stored in a file called ``GitExtensions.settings``
either in the user's application data path or with the program.
The location is dependent on the IsPortable setting in the ``GitExtensions.exe.config`` file that is with the program.
Settings that are specific to Git Extensions but apply to only the current repository will be stored in a file of the same
name, ``GitExtensions.settings``, but in either the root folder of the repository or the ``.git`` folder of the repository,
depending on whether or not they are distributed with that repository.

.. settingspage:: Git Extensions

  This page is a visual overview of the minimal settings that Git Extensions requires to work properly. Any items highlighted in red should
  be configured by clicking on the highlighted item.

  This page contains the following settings and buttons.

  .. setting:: Check settings at startup

    Forces Git Extensions to re-check the minimal set of required settings the next time Git Extensions is started.
    If all settings are 'green' this will be automatically unchecked.

  .. settingbutton:: Save and rescan

    Saves any setting changes made and re-checks the settings to see if the minimal requirements are now met.

  .. settingspage:: General

  This page contains general settings for Git Extensions.

  .. settingsgroup:: Performance

    .. setting:: Show number of changed files on commit button
      :id: changes-no

      When enabled, the number of pending commits are shown on the toolbar as a figure in parentheses on the Commit button.
      Git Extensions must be stopped and restarted to activate changes to this option.
      Turn this off if you experience slowdowns.

    .. setting:: Show number of changed files for artificial commits

      If artificial commits are enabled in the revision graph, show the pending commits as well as a tool tip with a summary of changes.

    .. setting:: Show current working directory changes as an artificial commit.
      :id: working-dir-changes

      When enabled, two artificial revisions are added to the revision graph.
      The first shows the worktree (current working directory) status. The second shows the commit index (staged).

    .. setting:: Use FileSystemWatcher to check if index is changed
      :id: filesystemwatcher

      Monitor if the Git index is changed due to changes outside of Git Extensions, if so show this in the Refresh button in Browse.

    .. setting:: Show stash count on status bar in browse window
      :id: stash-count

      When you use the stash a lot, it can be useful to show the number of stashed items on the toolbar.
      This option causes serious slowdowns in large repositories and is turned off by default.

    .. setting:: Show submodule status in browse window
      :id: stash-count

      Show the status for submodules (as well as supermodules) in the dropdown menu in Browse. The status is updated if :ref:`settings-git-extensions-performance-show-number-of-changed-files-for-artificial-commits` is enabled and the number of artificial commits is updated. (Changes in supermodules is not monitored).
      This option causes serious slowdowns in large repositories and is turned off by default.

    .. setting:: Check for uncommitted changes in checkout branch dialog
      :id: uncommitted-changes

      Git Extensions will not allow you to checkout a branch if you have uncommitted changes on the current branch.
      If you select this option, Git Extensions will display a dialog where you can decide
      what to do with uncommitted changes before swapping branches.

    .. setting:: Limit number of commits that will be loaded at start-up
      :id: commits-limit

      This number specifies the maximum number of commits that Git Extensions will load when it is started.
      These commits are shown in the Revision Graph window. To see more commits,
      then this setting will need to be adjusted and Git Extensions restarted.

  .. settingsgroup:: Behaviour

    .. setting:: Close Process dialog when process succeeds
      :id: close-process-dlg

      When a process is finished, close the process dialog automatically.
      Leave this option off if you want to see the result of processes.
      When a process has failed, the dialog will automatically remain open.

    .. setting:: Show console window when executing git process
      :id: show-console

      Git Extensions uses command line tools to access the git repository.
      In some environments it might be useful to see the command line dialog when a process is executed.
      An option on the command line dialog window displayed allows this setting to be turned off.

    .. setting:: Use patience diff algorithm
      :id: patience-diff

      Use the Git ‘patience diff’ algorithm instead of the default.
      This algorithm is useful in situations where two files have diverged significantly and the default algorithm
      may become ‘misaligned’, resulting in a totally unusable conflict file.

    .. setting:: Include untracked files in stash
      :id: stash-untracked

      If checked, when a stash is performed as a result of any action except a manual stash request,
      e.g. checking out a new branch and requesting a stash then any files not tracked by git will also be saved to the stash.

    .. setting:: Follow renames in file history (experimental)
      :id: follow-renames

      Try to follow file renames in the file history.

    .. setting:: Follow exact renames and copies only
      :id: follow-exact-renames

      Follow file renames and copies for which similarity index is 100%. That is when a file
      is renamed or copied and is committed with no changes made to its content.

    .. setting:: Open last working dir on startup
      :id: open-last-repo

      When starting Git Extensions, open the last used repository (bypassing the Dashboard).

    .. setting:: Default clone destination
      :id: default-clone-dst

      Git Extensions will pre-fill destination directory input with value of this setting on any form used to perform repository clone.

    .. setting:: Revision grid quick search timeout [ms]
      :id: quick-search-timeout

      The timeout (milliseconds) used for the quick search feature in the revision graph.
      The quick search will be enabled when you start typing and the revision graph has the focus.

  .. settingsgroup:: Email settings for sending patches
    :id: patches-email

    .. setting:: SMTP server name
      :id: server-name

      SMTP server to use for sending patches.

    .. setting:: Port

      SMTP port number to use.

    .. setting:: Use SSL/TLS
      :id: ssl-tls

      Check this box if the SMTP server uses SSL or TLS.

  .. settingspage:: Appearance

    This page contains settings that affect the appearance of the application.

    .. settingsgroup:: General

      .. setting:: Show relative date instead of full date
        :id: relative-date

        Show relative date, e.g. 2 weeks ago, instead of full date.
        Displayed on the ``commit`` tab on the main Revision Graph window.

      .. setting:: Show current branch in Visual Studio
        :id: show-current-branch-vs

        Determines whether or not the currently checked out branch is displayed on
        the Git Extensions toolbar within Visual Studio.

      .. setting:: Auto scale user interface when high DPI is used
        :id: auto-scale

        Automatically resize controls and their contents according to the current system resolution of the display, measured in dots per inch (DPI).

      .. setting:: Truncate long filenames
        :id: truncate-long-filenames

        This setting affects the display of filenames in a component of a window
        e.g. in the Diff tab of the Revision Graph window. The options that can be
        selected are:

        - ``None`` - no truncation occurs; a horizontal scroll bar is used to see the whole filename.
        - ``Compact`` - no horizontal scroll bar. Filenames are truncated at both start and end to fit into the width of the display component.
        - ``Trimstart`` - no horizontal scroll bar. Filenames are truncated at the start only.
        - ``FileNameOnly`` - the path is always removed, leaving only the name of the file, even if there is space for the path.

      .. setting:: Sort by author date
        :id: sort-author-date

        This setting causes commits to be sorted by author date (rather than commit date) in the revision grid. Sorting by author date may delay rendering of the revision graph.

    .. settingsgroup:: Author images
      :id: author-images
      
      .. setting:: Show author's avatar column in the commit graph
        :id: show-avatar-commit-graph

        If checked, avatar images are downloaded for commit authors and shown in the revision grid.

      .. setting:: Show author's avatar in the commit info view
        :id: show-avatar-commit-info

        If checked, avatar images are downloaded for commit authors and shown in the commit info view.

      .. setting:: Avatar provider
        :id: avatar-provider

        The avatar provider setting determines the source from which avatar images are requested.

        - ``Default`` - The default avatar provider loads a user defined avatar images, depending on the email address, from GitHub or Gravatar.
          If no user defined image could be found, a fallback images is used.
        - ``None`` - If selected, no user-defined images are loaded and the fallback is evaluated immediately.
        - ``Custom`` - An advanced mode that allows you to set one or more custom avatar provider services (e.g. Libravatar) by providing URL
          templates.

          URL Template Syntax
            The URL template syntax consists of regular URLs to avatar images, that can be enriched with variables, which are substituted before
            evaluation. Those variables are encoded using curly brackets ``{}`` and can be used like this: ``https://example.avatar.service/u/{email}/avatar.png``.
            If a request fails (http 400 and 500 errors) or does not provide a valid image, the next URL is used. More URLs can be specified by chaining them
            together with semicolons (";") like so: ``http://provider1.com/{sha1}.png;http://provider2.com/{sha1}.png``. If all custom URLs fail to provide
            an avatar image, the applications internal fallback mechanism will provide one for that user.

            The variable names are case insensitive. If a variable is not found (for example because of typo or it does not exist), it is substituted
            with an empty string, so the resulting URL never contains the curly brackets.

            The following variables are currently supported:

            - ``name`` - The name of the commit author (git config ``user.name``). Special characters are URL encoded.
            - ``email`` - The email address of the commit author (git config ``user.email``). Special characters are URL encoded.
            - ``md5`` - A lowercase hex representation of the MD5 hash of the normalized (all characters lowercase)
              email address (without URL encoding). This hash is compatible with Gravatar and thus compatible with a lot of similar services.
            - ``sha1`` - Like the ``md5`` variable but with SHA1 as hash algorithm.
            - ``sha256`` - Like the ``md5`` variable but with SHA256 as hash algorithm.
            - ``imagesize`` - Represents the requested avatar size in pixels.

            A complete working configuration might look something like this:
            ``https://www.libravatar.org/avatar/{md5}?s={imageSize}&default=404;https://avatar.tobi.sh/{md5}?size={imageSize}``

      .. setting:: Fallback generated avatar style
        :id: avatar-fallback

        The configured fallback determines how authors without a user-defined avatar are presented. Besides ``Author Initials`` all other options are
        provided by Gravatar. Details about their fallback modes can be found here https://en.gravatar.com/site/implement/images/ in the section "Default Image".
        ``Author Initials`` are generated by the application internally and require no network connection to be displayed.

      .. setting:: Cache images (days)
        :id: avatar-cache

        The number of days to elapse before the avatar image source is checked for any changes to an authors image.

      .. settingbutton:: Clear image cache

        Clear the cached avatars.

    .. settingsgroup:: Language

      .. setting:: Language (restart required)
        :id: language

        Choose the language for the Git Extensions interface.

      .. setting:: Dictionary for spelling checker
        :id: dictionary

        Choose the dictionary to use for the spelling checker in the Commit dialog.

    .. settingspage:: Colors

      This page contains settings to define the colors used in the application.

      .. settingsgroup:: Revision graph

        .. setting:: Multicolor branches

          Displays branch commits in different colors if checked.
          If unchecked, all branches are shown in the same color.
          This color can be selected.

        .. setting:: Draw alternate background

          Alternate background colour for revision rows.

        .. setting:: Draw non relatives graph gray

          Show commit history in gray for branches not related to the current branch.

        .. setting:: Draw non relatives text gray

          Show commit text in gray for branches not related to the current branch.

        .. setting:: Highlight authored revisions

          Highlight revisions committed by the same author as the selected revision.

        .. setting:: Color authored revisions

          Color to highlight authored revisions.

        .. setting:: Color tag

          Color to show tags in.

        .. setting:: Color branch

          Color to show branch names in.

        .. setting:: Color remote branch

          Color to show remote branch names in.

        .. setting:: Color other label

          Color to show other labels in.

      .. settingsgroup:: Difference View

        .. setting:: Color removed line

          Highlight color for lines that have been removed.

        .. setting:: Color added line

          Highlight color for lines that have been added.

        .. setting:: Color removed line highlighting

          Highlight color for characters that have been removed in lines.

        .. setting:: Color added line highlighting

          Highlight color for characters that have been added in lines.

        .. setting:: Color section

          Highlight color for a section.

    .. settingspage:: Fonts

      .. settingsgroup:: Fonts

        .. setting:: Code font

          The font used for the display of file contents.

        .. setting:: Application font
          :id: app-font

          The font used on Git Extensions windows and dialogs.

        .. setting:: Commit font

          The font used for entering a commit message in the Commit dialog.

        .. setting:: Monospace font

          The font used for the commit id in the revision graph.

  .. settingspage:: Revision Links

    You can configure here how to convert parts of a revision data into clickable links. These links will be located under the commit message on the ``Commit``
    tab in the ``Related links`` section.

    .. image:: /images/settings/related_links_location.png

    The most common case is to convert an issue number given as a part of commit message into a link to the coresponding issue-tracker page.
    The screenshot below shows an example configuration for GitHub issues.

    You could add this quite generic
    `GitExtensions.settings <https://github.com/gitextensions/GitExtensionsDoc/blob/master/source/files/settings/GitExtensions.settings>`
    file to the root of your repository.

    .. image:: /images/settings/revision_links.png

    .. setting:: Categories

    Lists all the currently defined Categories. Click the ``Add`` button to
    add a new empty Category. The default name is 'new'.  To remove a Category
    select it and click the ``Remove`` button.

    .. setting:: Name

    This is the Category name used to match the same categories defined on
    different levels of the Settings.

  .. setting:: Enabled

    Indicates whether the Category is enabled or not. Disabled categories are
    skipped while creating links.

  .. settingsgroup:: Remote data

    It is possible to use data from remote's URL to build a link. This way, links can be defined globally for all repositories sharing the same URL schema.

    .. setting:: Use remotes

      Regex to filter which remotes to use. Leave blank to create links not depending on remotes.
      If full names of remotes are given then matching remotes are sorted by its position in the given Regex.

    .. setting:: Only use the first match
      :id: only-use-first-match

      Check if you want to create links only for the first matching remote.

    .. setting:: Search in

      Define whether to search in ``URL``, ``Push URL`` or both.

  .. settingsgroup:: Revision data

    .. setting:: Search in

      Define which parts of the revision should be searched for matches.

      :id: search-pattern
    .. setting:: Search pattern

      Regular expression used for matching text in the chosen revision parts.
      Each matched fragment will be used to create a new link. More than one
      fragment can be used in a single link by using a capturing group.
      Matches from the Remote data group go before matches from the Revision data group.
      A capturing group value can be passed to a link by using zero-based indexed
      placeholders in a link format definition e.g. {0}.

    .. setting:: Nested pattern

      ``Nested pattern`` can be used when only a part of the text matched by the :ref:`settings-git-extensions-revision-data-search-pattern`
      should be used to format a link. When the ``Nested pattern`` is empty,
      matches found by the :ref:`settings-git-extensions-revision-data-search-pattern` are used to create links.

    .. setting:: Links: Caption/URI
      :id: revision-links

      List of links to be created from a single match. Each link consists of
      the ``Caption`` to be displayed and the ``URI`` to be opened when the link
      is clicked on. In addition to the standard zero-based indexed placeholders,
      the ``%COMMIT_HASH%`` placeholder can be used to put the commit's hash into
      the link. For example: ``https://github.com/gitextensions/gitextensions/commit/%COMMIT_HASH%``

  .. settingspage:: Build server integration

    This page allows you to configure the integration with build servers. This allows the build status of each commit
    to be displayed directly in the revision log, as well as providing a tab for direct access to the Build Server
    build report for the selected commit.

    .. setting:: Enable build server integration

      Check to globally enable/disable the integration functionality.

    .. setting:: Build server type

        Select an integration target.

    .. settingsgroup:: AppVeyor

      .. setting:: Account name

        AppVeyor account name. You don't have to enter it if the projects you want to query for build status are public.

      .. setting:: API token

        AppVeyor API token. Requiered if the :ref:`settings-git-extensions-build-server-integration-appveyor-account-name` is entered.
        See https://ci.appveyor.com/api-token

      .. setting:: Project(s) name(s)

        Projects names separated with '|', e.g. `gitextensions/gitextensions|jbialobr/gitextensions`

      .. setting:: Display tests results in build status summary for every build result

        Include tests results in the build status summary for every build result.

    .. settingsgroup:: Azure DevOps and Team Foundation Server (since TFS2015)

      .. setting:: Project URL

        Enter the URL of the server (and port, if applicable).

      .. setting:: Build definition name

        Limit the builds if desired.

      .. setting:: Rest API token

        Read token for the build server.

    .. settingsgroup:: Jenkins

      .. setting:: Jenkins server URL

        Enter the URL of the server (and port, if applicable).

      .. setting:: Project name

        Enter the name of the project which tracks this repository in Jenkins. Separate project names with "|". Multi-branch pipeline projects are supported by adding "?m" to the project name.

      .. setting:: Ignore build for branch

        The plugin will normally display the last build for a certain commit. If Jenkins starts several builds for one commit, it is possible to ignore the non interesting builds if all builds are not interesting.

    .. settingsgroup:: TeamCity

      .. setting:: TeamCity server URL

        Enter the URL of the server (and port, if applicable).

      .. setting:: Project name

        Enter the name of the project which tracks this repository in TeamCity. Multiple project names can be entered separated by the | character.

      .. setting:: Build Id Filter

        Enter a regexp filter for which build results you want to retrieve in the case that your build project creates multiple builds. For example, if your project includes both devBuild and docBuild you may wish to apply a filter of “devBuild” to retrieve the results from only the program build.

    .. settingsgroup:: Team Foundation Server

      For TFS prior to 2015.

      .. setting:: Tfs server (Name or URL)

        Enter the URL of the server (and port, if applicable).

      .. setting:: Team collection name

      .. setting:: Project name

        Enter the name of the project which tracks this repository in Tfs.

      .. setting:: Build definition name

        Use first found if left empty.

  .. settingspage:: Scripts

    This page allows you to configure specific commands to run before/after Git actions or to add a new command to the User Menu.
    The top half of the page summarises all of the scripts currently defined. If a script is selected from the summary, the bottom
    half of the page will allow modifications to the script definition.

    A hotkey can also be assigned to execute a specific script. See :ref:`settings-git-extensions-hotkeys`.

    .. settingbutton:: Add

      Adds a new script. Complete the details in the bottom half of the screen.

    .. settingbutton:: Remove

      Removes a script.

    .. settingbutton:: Up/Down Arrows

      Changes order of scripts.

    .. setting:: Scripts
 
      .. setting:: Name

        The name of the script.

      .. setting:: Enabled

        If checked, the script is active and will be performed at the appropriate time (as determined by the On Event setting).

      .. setting:: Command

        Enter the command to be run. This can be any command that your system can run e.g. an executable program,
        a .bat script, a Python command, etc. Use the ``Browse`` button to find the command to run.

        There are some special prefixes which change the way the script is executed:

        * ``plugin:<plugin-name>``: Where ``<plugin-name>`` is the name of a *plugin* (refer :ref:`settings-plugins`).
          If a plugin with that name is found, it is run.
        * ``navigateTo:<script-path>``: Where ``<script-path>`` is the path to a file containing the script to run.
          That script is expected to return a commit hash as the first line of its output. The UI will navigate to that commit once the script completes.

      .. setting:: Arguments

        Enter any arguments to be passed to the command that is run.
        The ``Help`` button displays items that will be resolved by Git Extensions before
        executing the command e.g. {cBranch} will resolve to the currently checked out branch,
        {UserInput} will display a popup where you can enter data to be passed to the command when it is run.

      .. setting:: Execute on event

        Select when this command will be executed, either before/after certain Git commands, or displayed on the User Menu bar.
        Since the git pull command includes a fetch, before/after fetch events are triggered on pure fetches as well as on pulls. For the pull command the script execution order ist BeforePull - BeforeFetch - git pull - AfterFetch - AfterPull.

      .. setting:: Icon

        Select an icon to be displayed in a menu item when the script is marked to be shown in the user menu bar.

    .. setting:: Script Behavior

      .. setting:: Ask confirmation

        If checked, then a popup window is displayed just before the script is run to confirm whether or not the script is to be run.
        Note that this popup is *not* displayed when the script is added as a command to the User Menu (On Event setting is ShowInUserMenuBar).

      .. setting:: Run in background

        If checked, the script will run in the background and Git Extensions will return to your control without waiting for the script to finish.

      .. setting:: Is PowerShell script

        If checked, the command is started through a powershell.exe process.
        If the :ref:`settings-git-extensions-scripts-name-run-in-background` is checked, the powershell console is closed after finishing. If not,
        the powershell console is left for the user to close it manually.

    .. setting:: Script Context

      .. setting:: Show in RevisionGrid

        If checked, the script is added to the context menu that is displayed when right-clicking on a line in the Revision Graph page.

  .. settingspage:: Hotkeys

    This page allows you to define keyboard shortcuts to actions when specific pages of Git Extensions are displayed.
    The HotKeyable Items identifies a page within Git Extensions. Selecting a Hotkeyable Item displays the list of
    commands on that page that can have a hotkey associated with them.

    The Hotkeyable Items consist of the following pages

    1) Commit: the page displayed when a Commit is requested via the ``Commit`` User Menu button or the ``Commands/Commit`` menu option.
    2) Browse: the Revision Graph page (the page displayed after a repository is selected from the dashboard (Start Page)).
    3) RevisionGrid: the list of commits in Browse and other forms.
    4) FileViewer: the page displayed when viewing the contents of a file.
    5) FormMergeConflicts: the page displayed when merge conflicts are detected that need correcting.
    6) BrowseDiff: Diff tab in Browse.
    7) RevisionFileTree: The FileTree tab in Browse.
    8) Scripts: shows scripts defined in Git Extensions and allows shortcuts to be assigned. Refer :ref:`settings-git-extensions-scripts`.

    .. setting:: Hotkey

      After selecting a Hotkeyable Item and the Command, the current keyboard shortcut associated with the command is displayed here.
      To alter this shortcut, click in the box where the current hotkey is shown and press the new keyboard combination.

      .. settingbutton:: Apply

        Click to apply the new keyboard combination to the currently selected Command.

      .. settingbutton:: Clear

        Sets the keyboard shortcut for the currently selected Command to 'None'.

    .. settingbutton:: Reset all Hotkeys to defaults

      Resets all keyboard shortcuts to the defaults (i.e. the values when Git Extensions was first installed).

  .. settingspage:: Shell Extension

    When installed, Git Extensions adds items to the context menu when a file/folder is right-clicked within Windows Explorer. One of these items
    is ``Git Extensions`` from which a further (cascaded) menu can be opened. This settings page determines which items will appear on that cascaded
    menu and which will appear in the main context menu. Items that are checked will appear in the cascaded menu.

    To the right side of the list of check boxes is a preview that shows you how the Git Extensions menu items will be arranged with
    your current choices.

    By default, what is displayed in the context menu also depends on what item is right-clicked in Windows Explorer; a file or a folder
    (and whether the folder is a Git repository or not). If you want Git Extensions to always include all of its context menu items,
    check the box ``Always show all commands``.

  .. settingspage:: Advanced

    This page allows advanced settings to be modified.
    Refer :ref:`settings-git-extensions-advanced-confirmations`.

    .. settingsgroup:: Checkout

      .. setting:: Always show checkout dialog

        Always show the Checkout Branch dialog when swapping branches.
        This dialog is normally only shown when uncommitted changes exist on the current branch

      .. setting:: Use last chosen "local changes" action as default action.
        :id: local-changes

        This setting works in conjunction with the 'Git Extensions/Check for uncommitted changes in checkout branch dialog' setting.
        If the 'Check for uncommitted changes' setting is checked, then the Checkout Branch dialog is shown only if this setting is unchecked.
        If this setting is checked, then no dialog is shown and the last chosen action is used.

    .. settingsgroup:: General

      .. setting:: Don’t show help images

        In the Pull, Merge and Rebase dialogs, images are displayed by default to explain what happens
        with the branches and their commits and the meaning of LOCAL, BASE and REMOTE (for resolving merge conflicts)
        in different merge or rebase scenarios. If checked, these Help images will not be displayed.

      .. setting:: Always show advanced options

        In the Push, Merge and Rebase dialogs, advanced options are hidden by default and shown only after you click a link or checkbox.
        If this setting is checked then these options are always shown on those dialogs.

      .. setting:: Use Console Emulator for console output in command dialogs

        Using Console Emulator for console output in command dialogs may be useful the running
        command requires an user input, e.g. push, pull using ssh, confirming gc.

      .. setting:: Auto normalise branch name

        Controls whether branch name should be automatically normalised as per git branch
        naming rules. If enabled, any illegal symbols will be replaced with the replacement symbol of your choice.

    .. settingsgroup:: Commit

      .. setting:: Push forced with lease when Commit & Push action is performed with Amend option checked

        In the Commit dialog, users can commit and push changes with one click. However, if changes are meant to amend
        an already pushed commit, a standard push action will be rejected by the remote server. If this option is
        enabled, a push action with ``--force-with-lease`` switch will be performed instead. The ``--force-with-lease``
        switch will be added only when the ``Amend`` option is checked.

    .. settingsgroup:: Updates

      .. setting:: Check for updates weekly

        Check for newer version every week.

      .. setting:: Check for release candidate versions

        Include release candidate versions when checking for a newer version.

    .. settingspage:: Confirmations

      This page allows you to turn off certain confirmation popup windows.

      .. settingsgroup:: Don’t ask to confirm to

        .. setting:: Amend last commit

          If checked, do not display the popup warning about
          the rewriting of history when you have elected to amend the last committed change.

        .. setting:: Commit when no branch is currently checked out

          When committing changes and there is no branch currently being checked out, then
          GitExtensions warns you and proposes to checkout or create a branch. Enable this
          option to continue working with no warning.

        .. setting:: Apply stashed changes after successful pull

          In the Pull dialog, if ``Auto stash`` is checked, then any changes will be stashed before the pull is performed.
          Any stashed changes are then re-applied after the pull is complete.
          If this setting is checked, the stashed changes are applied with no confirmation popup.

        .. setting:: Apply stashed changes after successful checkout

          In the Checkout Branch dialog, if ``Stash`` is checked, then any changes will be stashed before the branch is checked out.
          If this setting is checked, then the stashed changes will be automatically re-applied
          after successful checkout of the branch with no confirmation popup.

        .. setting:: Drop stash

          Popup when dropping a stash.

        .. setting:: Add a tracking reference for newly pushed branch

          When you push a local branch to a remote and it doesn’t have a tracking reference,
          you are asked to confirm whether you want to add such a reference. If this setting is checked,
          a tracking reference will always be added if it does not exist.

        .. setting:: Push a new branch for the remote

          When pushing a new branch that does not exist on the remote repository,
          a confirmation popup will normally be displayed. If this setting is checked,
          then the new branch will be pushed with no confirmation popup.

        .. setting:: Update submodules on checkout

          When you check out a branch from a repository that has submodules,
          you will be asked to update the submodules. If this setting is checked,
          the submodules will be updated without asking.

        .. setting:: Resolve conflicts

          If enabled, then when conflicts are detected GitExtensions will start the Resolve conflicts dialog
          automatically without any prompt.

        .. setting:: Commit changes after conflicts have been resolved

          Enable this option to start the Commit dialog automatically after all conflicts have been resolved.

        .. setting:: Confirm for the second time to abort a merge

          When aborting a merge, rebase or other operation that caused conflicts to be resolved,
          an user is warned about the consequences of aborting and asked if he/she wants to continue.
          If the user chooses to continue the aborting operation, then he/she is asked for the second time
          if he/she is sure that he/she wants to abort. Enable this option to skip this second confirmation.

        .. setting:: Rebase on top of selected commit

          Rebase context menu command popup in revision graph.

        .. setting:: Undo last commit

          Browse Command popup.

        .. setting:: Fetch and prune all

          Browse fetch/prune popup.

        .. setting:: Switch Worktree

          Switch worktree popup.
		  
  .. settingspage:: Detailed

    This page allows detailed settings to be modified.

    .. settingsgroup:: Push window

      .. setting:: Get remote branches directly from the remote

        Git caches locally remote data. This data is updated each time a fetch operation is performed.
        For a better performance GitExtensions uses the locally cached remote data to fill out controls
        on the Push dialog. Enable this option if you want GitExtensions to use remote data recieved
        directly from the remote server.

    .. settingsgroup:: Merge window

      .. setting:: Add log messages

        If enabled, then in addition to branch names, git will populate the log message with one-line descriptions
        from at most the given number actual commits that are being merged.
        See https://git-scm.com/docs/git-merge#Documentation/git-merge.txt---logltngt

    .. settingspage:: Browse repository window

      .. settingsgroup:: Console emulator

        .. setting:: Show the Console tab

          Show the Console tab in the :ref:`browse-repository` window.

          .. setting:: Console style

            Choose one of the predefined ConEmu schemes. See http://conemu.github.io/en/SettingsColors.html.

          .. setting:: Shell to run

            Choose one of the predefined terminals.

          .. setting:: Font size

            Console font size.

        .. setting:: Show GPG information

          Show tab for GPG information if available.

    .. settingspage:: Commit dialog

      This page contains settings for the Git Extensions :ref:`commit` dialog. Note that the dialog itself has further options.

      .. settingsgroup:: Behaviour

        .. setting:: Provide auto-completion in commit dialog

          Enables auto-completion in commit dialog message box. Auto-completion words
          are taken from the changed files shown by the commit dialog. For each file type
          there can be configured a regular expression that decides which words should be
          considered as candidates for auto-completion. The default regular expressions included
          with Git Extensions can be found here: https://github.com/gitextensions/gitextensions/blob/master/GitExtensions/AutoCompleteRegexes.txt
          You can override the default regular expressions by creating an AutoCompleteRegexes.txt file in
          the Git Extensions installation directory.

        .. setting:: Show errors when staging files
          :id: staging-errors

          If an error occurs when files are staged (in the Commit dialog),
          then the process dialog showing the results of the git command is shown if this setting is checked.

        .. setting:: Ensure the second line of commit message is empty
          :id: empty-second-line

          Enforces the second line of a commit message to be blank.

        .. setting:: Compose commit messages in Commit dialog
          :id: compose-message

          If this is unchecked, then commit messages cannot be entered in the commit dialog.
          When the ``Commit`` button is clicked, a new editor window is opened where the commit message can be entered.

        .. setting:: Number of previous messages in commit dialog
          :id: prev-messages

          The number of commit messages, from the top of the current branch,
          that will be made available from the ``Commit message`` combo box on the Commit dialog.

        .. setting:: Remember 'Amend commit' checkbox on commit form close
          :id: remember-amend

          Remembers the state of the 'Amend commit' checkbox when the 'Commit dialog' is being closed.
          The remembered state will be restored on the next 'Commit dialog' creation.
          The 'Amend commit' checkbox is being unchecked after each commit.
          So, when the 'Commit dialog' is being closed automatically after commiting changes,
          the 'Amend commit' checkbox is going to be unchecked first and its state will be saved after that.
          Therefore the checked state is remembered only if the 'Commit dialog' is being closed
          by an user without commiting changes.

        .. setting:: Show additional buttons in commit button area
          :id: additional-buttons

          Tick the boxes in this sub-group for any of the additional buttons that you wish
          to have available below the commit button. These buttons are considered additional
          to basic functionality and have consequences if you should click them accidentally,
          including resetting unrecorded work.

    .. settingspage:: Diff Viewer

      .. setting:: Remember the 'Ignore whitespaces' preference

        Remember in the GitExtensions settings the latest chosen value of the 'Ignore whitespaces' preference.
        Use the remembered value the next time GitExtensions is opened.

      .. setting:: Remember the 'Show nonprinting characters' preference

        Remember in the GitExtensions settings the latest chosen value of the 'Show nonprinting characters' preference.
        Use the remembered value the next time GitExtensions is opened.

      .. setting:: Remember the 'Show entire file' preference

        Remember in the GitExtensions settings the latest chosen value of the 'Show entire file' preference.
        Use the remembered value the next time GitExtensions is opened.

      .. setting:: Remember the 'Number of context lines' preference

        Remember in the GitExtensions settings the latest chosen value of the 'Number of context lines' preference.
        Use the remembered value the next time GitExtensions is opened.

      .. setting:: Omit uninteresting changes from combined diff

        Includes git `--cc` switch when generating a diff. See https://git-scm.com/docs/git-diff-tree#Documentation/git-diff-tree.txt---cc

      .. setting:: Open Submodule Diff in separate window

        If enabled then double clicking on a submodule in the Diff file list opens a new instance of
        GitExtensions with the submodule as the selected repository. If disabled, the File history
        window is opened for the double clicked submodule.

      .. setting:: Show file differences for all parents in browse dialog

        Enable this option to see diff against each of the revision parents, combined diff including.

      .. setting:: Vertical ruler position

        Position for ruler in TextEditor controls. Set to 0 to disable.
        (This should be moved to the TextEditor context menu.)

  .. settingspage:: SSH

  This page allows you to configure the SSH client you want Git to use. Git Extensions is optimized for PuTTY. Git Extensions
  will show command line dialogs if you do not use PuTTY and user input is required (unless you have configured SSH to use authentication
  with key instead of password). Git Extensions can load SSH keys for PuTTY when needed.

  .. settingsgroup:: Specify which ssh client to use

    .. setting:: PuTTY

      Use PuTTY as SSH client.

    .. setting:: OpenSSH

      Use OpenSSH as SSH client.

    .. setting:: Other ssh client

      Use another SSH client. Enter the path to the SSH client you wish to use.

  .. settingsgroup:: Configure PuTTY

    .. setting:: Path to plink.exe

      Enter the path to the plink.exe executable.

    .. setting:: Path to puttygen

      Enter the path to the puttygen.exe executable.

    .. setting:: Path to pageant

      Enter the path to the pageant.exe executable.

    .. setting:: Automatically start authentication

      If an SSH key has been configured, then when accessing a remote repository the key will automatically be used by the SSH client if this is checked.

.. settingspage:: Git

  The settings that are used by Git are stored in the configuration files of Git. The global settings are stored in the file called
  ``.gitconfig`` in the user directory. The local settings are stored in the ``.git\config`` file of the repository.

  .. settingspage:: Paths

    This page contains the settings needed to access git repositories. The repositories will be accessed using external
    tools. For Windows usually "Git for Windows" is used. Git Extensions will try to configure these settings automatically.

    .. settingsgroup:: Git

      .. setting:: Command used to run git (git.cmd or git.exe)
        :id: git-cmd

        Needed for Git Extensions to run Git commands. Set the full command used
        to run git ("Git for Windows"). Use the ``Browse`` button to
        find the executable on your file system. (Cygwin Git may work but is not officially supported.)

      .. setting:: Path to Linux tools (sh).
        :id: sh-path

        A few Linux tools are used by Git Extensions. When Git for Windows is
        installed, these tools are located in the bin directory of Git for
        Windows. Use the ``Browse`` button to find the directory on your file
        system. Leave empty when it is in the path.

    .. settingsgroup:: Environment

      .. settingbutton:: Change HOME

        This button opens a dialog where the HOME directory can be changed.

        The global configuration file used by git will be put in the HOME directory. On some systems the home directory is not set
        or is pointed to a network drive. Git Extensions will try to detect the optimal setting for your environment. When there is
        already a global git configuration file, this location will be used. If you need to relocate the home directory for git,
        click the ``Change HOME`` button to change this setting. Otherwise leave this setting as the default.

  .. settingspage:: Config

    This page contains some of the settings of Git that are used by and therefore can be changed from within Git Extensions.

    If you change a Git setting from the Git command line using ``git config`` then the same change in setting can be seen inside
    Git Extensions. If you change a Git setting from inside Git Extensions then that change can be seen using ``git config --get``.

    Git configuration can be global or local configuration. Global configuration applies to all repositories. Local configuration overrides
    the global configuration for the current repository.

    .. setting:: User name

      User name shown in commits and patches.

    .. setting:: User email

      User email shown in commits and patches.

    .. setting:: Editor

      Editor that git.exe opens (e.g. for editing commit message).
      This is not used by Git Extensions, only when you call git.exe from the command line.
      By default Git will use the built in editor.

    .. setting:: Mergetool

      Merge tool used to solve merge conflicts. Git Extensions will search for common merge tools on your system.

    .. setting:: Path to mergetool

      Path to merge tool. Git Extensions will search for common merge tools on your system.

    .. setting:: Mergetool command

      Command that Git uses to start the merge tool. Git Extensions will try to set this automatically when a merge tool is chosen.
      This setting can be left empty when Git supports the mergetool (e.g. kdiff3).

    .. setting:: Keep backup (.orig) after merge
      :id: keep-backup

      Check to save the state of the original file before modifying to solve merge conflicts. Refer to Git configuration setting ```mergetool.keepBackup```.

    .. setting:: Difftool

      Diff tool that is used to show differences between source files. Git Extensions will search for common diff tools on your system.

    .. setting:: Path to difftool

      The path to the diff tool. Git Extensions will search for common diff tools on your system.

    .. setting:: DiffTool command

      Command that Git uses to start the diff tool. This setting should only be filled in when Git doesn’t support the diff tool.

  .. setting:: Path to commit template

    A path to a file whose contents are used to pre-populate the commit message in the commit dialog.

  .. settingsgroup:: Line endings

    .. setting:: Checkout/commit radio buttons

      Choose how git should handle line endings when checking out and checking in files.
      Refer to https://help.github.com/articles/dealing-with-line-endings/#platform-all

  .. setting:: Files content encoding

    The default encoding for files content.

  .. settingspage:: Advanced

  Various settings for Git.

.. settingspage:: Plugins

  Plugins provide extra functionality for Git Extensions. Please refer to :ref:`plugins`.
