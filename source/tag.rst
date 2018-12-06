Tag
====

Tags are used to mark a specific version. Usually a tag will not be moved anymore. The image below shows
the commit log of Git Extensions with two tags indicating version [1.08] and [1.06].

.. image:: /images/tag.png

Create tag
----------

In Git Extensions you can tag a revision by choosing ``Create new tag`` in the commit log context menu. A dialog
will prompt for the name of the tag. You can also choose ``Create tag`` from the ``Commands`` menu, which will show
a dialog to choose the revision and enter the tag name.

.. image:: /images/new_tag.png

Once a tag is created, it cannot be moved again. You need to delete the tag and create it again to move it.

Delete tag
----------

For some operation it is very useful to create tags for temporary usage. Git uses SHA1 hashes to name each commit.
When you want to merge with an unnamed branch it is good practise to tag the unnamed branch, merge with the tag and then
delete the tag again.

.. image:: /images/delete_tag.png

Re-Tag?
^^^^^^^

Read about "What should you do when you tag a wrong commit and you would want to re-tag?" here:
https://www.kernel.org/pub/software/scm/git/docs/git-tag.html#_on_re_tagging
