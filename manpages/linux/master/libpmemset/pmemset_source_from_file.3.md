---
layout: manual
Content-Style: 'text/css'
title: PMEMSET_SOURCE_FROM_FILE
collection: libpmemset
header: PMDK
date: pmemset API version 1.0
...

[comment]: <> (SPDX-License-Identifier: BSD-3-Clause)
[comment]: <> (Copyright 2020, Intel Corporation)

[comment]: <> (pmemset_source_from_file.3 -- man page for pmemset_source_from_file)

[NAME](#name)<br />
[SYNOPSIS](#synopsis)<br />
[DESCRIPTION](#description)<br />
[RETURN VALUE](#return-value)<br />
[ERRORS](#errors)<br />
[SEE ALSO](#see-also)<br />

# NAME #

**pmemset_source_from_file**()
- creates an instance of persistent memory data source

# SYNOPSIS #

```c
#include <libpmemset.h>

int pmemset_source_from_file(const char struct pmemset_source **src, const char *file);
int pmemset_source_delete(struct pmemset_source **src);

```

# DESCRIPTION #

**pmemset_source_from_file**() function instantiates a new *struct pmemset_source** object
describing the data source and sets a path to the file in it.

Obtained source is ready to be passed on to the **pmemset_part_new**() function.
See **pmemset_part_new**(3) for details.

The **pmemset_source_delete**() function frees *\*src* and sets *\*src* to NULL. If *\*src* is NULL, no operation is performed.

# RETURN VALUE #

The **pmemset_source_from_file**() functions return 0 on success or
a negative error code on failure.

The **pmemset_source_delete**() function always returns 0.

# ERRORS #

The **pmemset_source_from_file**() can fail with the following errors:

* **PMEMSET_E_INVALID_FILE_PATH** - when the provided file path string is NULL.

* **-ENOMEM** - in case of insufficient memory to allocate an instance
of *struct pmemset_source*.

# SEE ALSO #

**pmemset_part_new**(3), **libpmemset**(7) and **<http://pmem.io>**
