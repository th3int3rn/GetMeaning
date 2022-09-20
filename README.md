# GetMeaning

### docker-compose build pipeline

#### every container runs in parallel:
    git pull https://github.com/OmkarPathak/Python-Programs/
    run /Scripts/P06_GetMeaning.py and pass the string parameter
    - print the short meaning of the word
    - continue, even if a stage fails


#### command to start pipeline:
    docker-compose up -d