Tag
====

Tags are used to mark a specific version. Usually a tag will not be moved anymore. The image below shows
the commit log of Git Extensions with a tag indicating version [3.00.00].

.. image:: /images/tag.png

Tags are also available in the :ref:`browse-repository-left-panel`.

Create tag
----------

In Git Extensions you can tag a revision by choosing ``Create new tag`` in the commit log context menu. A dialog
will prompt for the name of the tag. You can also choose ``Create tag`` from the ``Commands`` menu, which will show
a dialog to choose the revision and enter the tag name.

.. image:: /images/new_tag.png

Once a tag is created, it cannot be moved again. You need to delete the tag and create it again to move it.

Delete tag
----------

Tags can be deleted, read about "What should you do when you tag a wrong commit and you would want to re-tag?" here:
https://www.kernel.org/pub/software/scm/git/docs/git-tag.html#_on_re_tagging

.. image:: /images/delete_tag.png
