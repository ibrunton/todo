todo
=======

A todo-list written in C.

### Planned features

* Command-line mode for adding a new task
* ncurses interface for viewing the entire list
* vim-style keybindings within ncurses interface
* command-line options to output e.g. all tasks due today
* Due-dates are optional
* By default, task does not have a due-date
* When viewing the list, items without due-dates remain visible
* Items with due-dates are at the top of the list
* Record date task is assigned
* ncurses interface?
* When items are completed, they are kept in the database but no longer
  shown unless called for (View Completed Tasks)
* List view (task name and due date)
* Task view (shows all details)
* vim keybindings in normal mode

### Invocation

* `$ todo`

Opens the ncurses interface, displaying the to-do list.

* `$ todo -today`

Prints all tasks due today to STDOUT.  The `-urgent` command will print
all urgent tasks.

* `$ todo 2013-05-15 pick up dry-cleaning`

Adds a todo entry for 2013-05-13 with the text "pick up dry-cleaning".

* `$ todo -p 2013-05-15 Janice\'s birthday`

Adds a ``passive'' entry, i.e., an entry that does not need to be marked
as done.  It shows up in the list up to its specified date, but not after.

* `$ todo -u 2013-05-15 pick up Janice from airport`

Creates an entry marked as urgent.  When output to STDOUT or ncurses, this
event will be highlighted.

### Keybindings

In the ncurses interface.

* j - move cursor down
* k - move cursor up
* e - edit text of current item
* t - edit tags of current item
* r - remove current item
* d - mark current item done
* s - reschedule current item
* R - redraw list
* q - exit program

### To-do item format

<p><u><YYYY-MM-DD HH:MM +1w><tags:tags> text text text

All items in angle brackets are optional.  If no date is specified, the task
will be listed every day (though in the ncurses interface, it will be displayed
only on the current day) until it is marked done.


### Config file

For now, config is done via config.h.  In the future, might look at moving it
to something read at run-time.
