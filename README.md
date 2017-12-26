# Fincon service

Fincon requires "babel-cli" and "nodemon" modules:

```sh
$: sudo yarn global add babel-cli nodemon
```

Start server:

```sh
$: yarn install
$: yarn start
```

Work with server in docker:

1) Clone the repo

```sh
git clone https://github.com/money-manager/fincon-service.git
cd fincon-service
```

2) Make the distr

```sh
./scripts/make_distr.sh .
```

3) Build the container

```sh
docker build -t fincon .
```

4) Run the container

```sh
docker run -d -p8000:8000 fincon
```

5) Open your browser and write the url 

```
localhost:8000/hello
```
