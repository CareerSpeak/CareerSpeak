# <img src="images/logo.png" width=32 alt="logo"> CareerSpeak

![Running on multiple devices](images/devices.png)

CareerSpeak is a cross-platform web application that aims to provide an integrated solution for guidance in job placements. It provides grammar analysis on resumes, mock speech-based interviews, and job recommendations based on the relevant keywords extracted from the resume.

Built using [React Native](https://reactnative.dev) and [React Native for Web](https://necolas.github.io/react-native-web) for frontend, [Python](https://www.python.org) with [Flask](https://flask.palletsprojects.com/en/3.0.x) for the services, [MySQL](https://mysql.com) for the database, and [Node.JS](https://nodejs.org) and [ExpressJS](https://expressjs.com) as the backend. Uses [Docker Engine](https://docs.docker.com/engine) to run each functionality as a separate microservice.

Uses [React Native Paper](https://reactnativepaper.com) for the [Material Theme](https://m3.material.io).

## Compiling

Clone the repository with all the submodules using:

```bash
git clone --recursive https://github.com/CareerSpeak/CareerSpeak
```

### Backend

Requires [Docker Engine](https://docs.docker.com/engine) to run.

Each folder (other than `doc`) is a separate docker container. Run `docker compose up -d` in each folder, or use the `docker_run_all.sh` script to do it in one line:

```bash
bash ./docker_run_all.sh
```

This should get all the containers running in a sequential order.

For the first run, the MySQL database need to be created or the backend will fail to start. Create the database using the commands:

```bash
docker exec -it backend sh
mysql -u root -p <password>
```
```sql
create database loginDB;
```

### Frontend

Requires a working install of [Node.JS](https://nodejs.org) (tested on v20.11.1).

Change the working directory to `frontend` and then build the project using `npm run build`:

```bash
cd frontend
npm run build
```

The web application will be built into the `web/dist` directory. You can use [Nginx](https://nginx.org), [Apache HTTP Server](https://httpd.apache.org), or [Caddy](https://caddyserver.com/) to serve `index.html` as a static file.

To run the web application in development mode, use `npm run start:web`. Use `start:android` and `start:ios` for running android and ios respectively in development mode.

## Attribution

- The frontend uses [React Native for Web](https://necolas.github.io/react-native-web), [React Native Paper](https://reactnativepaper.com), [react-native-document-picker](https://www.npmjs.com/package/react-native-document-picker), and [react-native-audio-recorder-player](https://www.npmjs.com/package/react-native-audio-recorder-player)
- The `spellcheck` module uses [LanguageTool](https://languagetool.org)
- The `transcriber` module uses [WhisperAI](https://github.com/openai/whisper) for speech-to-text conversion
- The `paraphraser` module uses a transformer model from [ramsrigouthamg/t5-large-paraphraser-diverse-high-quality](https://huggingface.co/ramsrigouthamg/t5-large-paraphraser-diverse-high-quality)
- The `doc` module uses the template from [stsewd/ieee-pandoc-template](https://github.com/stsewd/ieee-pandoc-template) with modifications, and citation styles from the [Zotero Styles Repository](https://www.zotero.org/styles/)

## Team Members

[<img src="https://avatars.githubusercontent.com/u/91152390" width=128 alt="Tanmay Kulkarni">](https://github.com/Darshula) [<img src="https://avatars.githubusercontent.com/u/88094006" width=128 alt="Yash Shah">](https://github.com/yashshah035) [<img src="https://avatars.githubusercontent.com/u/93391075" width=128 alt="Yuvraj Pardeshi">](https://github.com/Yuvraj-Pardeshi) [<img src="https://avatars.githubusercontent.com/u/88442214" width=128 alt="Vaishnvi Sakat">](https://github.com/Vaish1113)
