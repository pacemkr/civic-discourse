# Description
This branch is here to support the development of [discourse-import-vbulletin](https://github.com/pacemkr/discourse-import-vbulletin). It is **not** meant to be merged into `develop`. The branch exists to install `mysql`, to add tasks for loading the vBulletin database to be used as the source for the import, and for other helpful things.

# Setup

The first time that you run `vagrant up` it will take care of everything. 

If you already have a working vargrant VM, you can install the missing pieces by running `vagrant reload --provision`.

Run `bundle install` to install dependencies.

# Loading vBulletin data

    rake vbulletin:db:drop vbulletin:db:create
    mysql -uroot vbulletin_data < vbulletin_data.sql
