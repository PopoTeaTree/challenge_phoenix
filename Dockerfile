# ./Dockerfile

# Extend from the official Elixir image
FROM elixir:latest

# Create app directory and copy the Elixir projects into it
RUN mkdir /app
COPY . /app
WORKDIR /app

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force

#Install dependencies
RUN  mix deps.get

#Create and migrate database
RUN cd assets && npm install

# Start Phoenix endpoint
RUN mix phx.server
# Compile the project
# RUN mix do compile

