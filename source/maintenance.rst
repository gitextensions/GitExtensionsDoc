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

If you accidently deleted a commit you can try to recover it using the ``Recover lost objects`` function. A dialog will
show you all dangling objects and will allow you to review and recover them.

.. image:: /images/recover_objects.png

Normally Git will not delete files right away when you remove something from your repository. The reason for this is that you
can restore deleted items if you need to. Git will delete removed items when they are older then 15 days and you run ``Compress
git database``.

.. image:: /images/verify_database.png

There are several functions to help you find the lost items. By default Git Extensions will only show commits. To show all
items, just uncheck the ``Show only commits`` option. The other options can be checked/unchecked to get more/less results.
Double-click on on item to view the content. When you located the item you want to recover you can tag it using the ``Tag
selected object`` button.

Git Extensions also is able to tag all lost objects. Doing this will make all lost objects visible again making it very easy
to locate the commit(s) you would like to recover. After recovering a commit using the ``Tag all lost commits`` button, you can
remove all tags using the ``Delete all LOST_AND_FOUND tags`` button.

.. image:: /images/lost_found.png

Fix user names
--------------

When someone accidentally committed using a wrong username this can be fixed using the ``Edit .mailmap`` function. Git will use
the username for an email address when it is set in the ``.mailmap`` file.

.. image:: /images/mail_map.png

Fix user name using commit email:

.. code-block:: text

    Proper Name <commit@email.xx>

Fix email address using commit email:

.. code-block:: text

    <proper@email.xx> <commit@email.xx>

Fix email address and name using commit email:

.. code-block:: text

    Proper Name <proper@email.xx> <commit@email.xx>

Fix email address and name using commit name and email:

.. code-block:: text

    Proper Name <proper@email.xx> Commit Name <commit@email.xx>

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

For more `detailed information <http://www.kernel.org/pub/software/scm/git/docs/gitignore.html>`_.
