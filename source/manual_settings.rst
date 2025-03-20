Manual Settings
===============

There are settings for niche features, which cannot be set using the GUI.

They can manually be added to the settings file ``%APPDATA%\GitExtensions\GitExtensions\GitExtensions.settings``.

Syntax
------

::

  <item>
    <key>
      <string>SETTING_KEY</string>
    </key>
    <value>
      <string>SETTING_VALUE</string>
    </value>
  </item>

Settings
--------

======================================= ========================= ========================================================================================================= =========
Setting Key                             Values                    Description                                                                                               Reference
======================================= ========================= ========================================================================================================= =========
Detailed.MessageEditorWordWrap          True, False               enables word wrap in commit message editor (side effect: "Ding" sound on inapplicable arrow keys)         https://github.com/gitextensions/gitextensions/pull/12267
======================================= ========================= ========================================================================================================= =========
