
# EthHire API

> This is a Ruby on Rails API-only application for a jobs portal. The API allows users to create job postings, browse available jobs, and apply for jobs.

## Getting Started

### Manual setup
To get started with the application
1. clone the repo and then install the needed gems:
```bash
git clone git@github.com:wuletawwonte/ethhire-api.git
cd ethhire-api
bundle install
```
2. Next, migrate and seed the database:

```bash
rails db:migrate & rails db:seed
```
3. Finally, start the server:

```bash
rails server
```
You can now use the API by sending requests to localhost:3000.
### Docker setup
Here are the steps to setup the project locally using Docker and Docker compose.

1. Install [Docker](https://docs.docker.com/engine/install/ubuntu/) and [Docker Compose](https://docs.docker.com/compose/install/linux/).
2. Clone this repository navigate to the cloned directory
```bash
git clone git@github.com:wuletawwonte/ethhire-api.git
cd ethhire-api
```
3. Run docker-compose up.
```bash
docker compose up
```

 **NB:** To avoid any port conflict stop any local process or service running on port `3000` and `5432`.
#### Dockerfile
The Dockerfile installs Ruby, Rails, Bundler, and all the gems required by your Rails application. It then copies the contents of your project directory into the Docker image and starts the Rails server on port 3000.

#### docker-compose.yml
The docker-compose.yml file defines two services:

- rails: The Rails service runs the Rails server.
- postgres: The Postgres service runs the Postgres database.

#### Running the Project
To run the project, simply run `docker-compose up`. This will start the Rails server and the Postgres database. You can then access your Rails API by visiting http://localhost:3000 in your web browser.
## Authors

👤 **Wuletaw Wonte**

- GitHub: [@wuletawwonte](https://github.com/wuletawwonte)
- Twitter: [@wuletaww](https://twitter.com/wuletaww)
- LinkedIn: [LinkedIn](https://linkedin.com/in/wuletaw-wonte)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used as inspiration

## 📝 License

This project is [MIT](./LICENSE.md) licensed.
