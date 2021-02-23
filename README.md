Bookmark Manager
================

## User Stories

```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks
```


## How to use

### To set up the project

Clone this repository and then run:
```
bundle
```

### To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`

### To run tests:

```
rspec
```
### To setup the database:

Connect to psql
```
psql postgres
```

Create the databases (dev env and test env)
```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

Connect to the database and run the queries from `db/migrations` folder in given order (in both the `bookmark_manager` and `bookmark_manager_test`)
