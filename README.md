# GCC
Alpine gcc image for Docker with Gcc, Make, Valgrind

## How to use

1. Dockerfile

    ```Dockerfile
    FROM ash258/gcc:latest as GCC
    COPY ./your-project-dir /usr/local/app
    WORKDIR /usr/local/app
    #RUN make
    RUN gcc -o myapp main.c
    CMD [ "./myapp" ]
    ```

1. Docker-compose

    ```yml
    version: '3.3'

    services:
        code:
            image: ash258/gcc
            working_dir: /code2
            container_name: ContainerGCC
            # Command could be make/gcc/... I use tail for keeping container alive so i can connect via exec and ash
            command: tail -f /dev/null
            volumes:
                - ./2:/code2

    ```
