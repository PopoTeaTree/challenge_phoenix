# Introduction
This is OPN challenges  web application using a Phoenix Framework. At root, it should display the Phoenix Live Dashboard. The Live Dashboard should also provide OS information and Database metrics. This web application detect the home page hitting for Database metric.

This project cannot use Docker, but it can run follow the below instruction.

Created by Thitiporn Sukpartcharoen
19 April 2021
# First
  * Let free port 3306, 4000 and 5432 first or change port in this instructure

# Database
To start POSTGRES database from Docker hub docker:
  * Start Docker first if not have let go to https://docs.docker.com/get-docker/
  * Pull Postgres image `docker pull postgres`
  * Run Postgres container with define
  container name: opn-postgres
  Password: 1234
  database name: opn-postgres
  port: 3306
  `docker run --name=opn-postgres -e POSTGRES_PASSWORD_ROOT_PASSWORD=1234 -e POSTGRES_DATABASE=opn-postgres -p 3306:3306 -d postgres`
  * Access the database `docker exec -it opn-postgres psql -U postgres`
  * Create database `CREATE DATABASE mratic_demo3;`
  * Check the database is already create `\l`

  Note: that the config can change, but Don't forget to Change database config in '/config/dev.exs'.

# ChallengePhoenix

To start your Phoenix server:

  * Go to project directory
  * Install dependenies `mix deps.get`
  * Create and migrate your database `mix ecto.setup`
  * Install Node.js dependencies `npm install` inside `assets` floder
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
