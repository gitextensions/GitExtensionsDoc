.. _maintenance:

Maintenance
===========

In this chapter some of the functions to maintain a repository are discussed.

Compress Git database
---------------------

Git will create a lot of files. You can run the ``Compress git database`` to pack all small files building up a repository
into one big file. Git will also garbage collect all unused objects that are older then 15 days. When a database is fragmented
into a many small files compressing the database can increase performance.

.. image:: /images/compress_database.png

Recover lost objects
--------------------

Normally Git will not delete files right away when you remove something from your repository. The reason for this is that you
can restore deleted items if you need to. Git will delete removed items when they are older then 15 days and you run ``Compress
git database``.

Commits without branches or tags can be shown with Git reflog https://git-scm.com/docs/git-reflog
The easiest way to view the commits is to show :ref:`browse-reflog` :ref:`browse-repository`.

.. image:: /images/reflog_show.png

The reflog commits are listed as gray:

.. image:: /images/reflog_revision.png

GE also supports the previous way to show you all dangling objects and will allow you to review and recover them. If you accidentally deleted a commit you can try to recover it using the ``Recover lost objects`` function.

.. image:: /images/recover_objects.png

.. image:: /images/verify_database.png

Git Extensions also is able to tag all lost objects. Doing this will make all lost objects visible again making it very easy
to locate the commit(s) you would like to recover.

Fix user names
--------------

When someone accidentally committed using a wrong username this can be fixed using the ``Edit .mailmap`` function. Git will use
the username for an email address when it is set in the ``.mailmap`` file.

.. image:: /images/mail_map.png

For more information, see https://git-scm.com/docs/git-check-mailmap.

Ignore files
------------

Git will track all files that are in the working directory. Normally you do not want to exclude all files that are created
by the compiler. You can add files that should be ignored to the .gitignore file. You can use wildcards and regular expressions.
All entries are case sensitive. The button ``Add default ignores`` will add files that should be ignored when using Visual Studio.

.. image:: /images/gitignore.png

A short overview of the syntax:

+-----+--------------------------------------------------------------------------------------------------------------------------+
|#    | Lines started with ``#`` are handled as comments                                                                         |
+-----+--------------------------------------------------------------------------------------------------------------------------+
|!    | Lines started with ``!`` are exclude patterns                                                                            |
+-----+--------------------------------------------------------------------------------------------------------------------------+
|[Dd] | Characters inside ``[..]`` means that 1 of the characters must match                                                     |
+-----+--------------------------------------------------------------------------------------------------------------------------+
|\*   | Wildcard                                                                                                                 |
+-----+--------------------------------------------------------------------------------------------------------------------------+
|/    | A leading slash matches the beginning of the pathname; for example, ``/*.c`` matches ``cat-file.c`` but not              |
|     | ``mozilla-sha1/sha1.c``                                                                                                  |
+-----+--------------------------------------------------------------------------------------------------------------------------+
|/    | If the pattern ends with a slash, it is removed for the purpose of the following description, but it would only find a   |
|     | match with a directory. In other words, foo/ will match a directory foo and paths underneath it, but will not match a    |
|     | regular file or a symbolic link foo (this is consistent with the way how pathspec works in general in git).              |
+-----+--------------------------------------------------------------------------------------------------------------------------+

For more `detailed information <https://git-scm.com/docs/gitignore>`_.
