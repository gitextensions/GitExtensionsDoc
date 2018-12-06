Patches
=======

Every commit contains a change-set, a commit date, the committer name, the commit message and a cryptograph SHA1
hash. Local commits can be published by pushing it to a remote repository. To be able to push you need to have sufficient
rights and you need to have access to the remote repository. When you cannot push directly you can create patches.
Patches can be e-mailed to someone with access to the repository. Each patch contains an entire commit including the commit
message and the SHA1.

.. image:: /images/patche.png

Create patch
------------

Format a single patch or patch series using the format patch dialog. You need to select the newest commit first and then
select the oldest commit using ctrl-click. You can also select an interrupted patch series, but this is not recommended
because the files will not be numbered.

.. image:: /images/patche_dialog.png

When the patches are created successfully the following dialog will appear.

.. image:: /images/patche_dialog_result.png

Apply patches
-------------

It is possible to apply a single patch file or all patches in a directory. When there are merge conflicts applying the patch
you need to resolve them before you can continue. Git Extensions will help you applying all patches by marking the next
recommended step.

.. image:: /images/apply_patche.png
