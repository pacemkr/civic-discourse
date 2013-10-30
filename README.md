# Description
This branch is here to support the development of [discourse-import-vbulletin](https://github.com/pacemkr/discourse-import-vbulletin). It is **not** meant to be merged into `develop`. The branch exists to install `mysql`, to add tasks for loading the vBulletin database to be used as the source for the import, and for other helpful things.

# Setup

If you already ran `vagrant up` and have a working VM, you can install the missing pieces by running `vagrant reload --provision`.

# Loading data

    rake vbulletin:db:create
    ...
