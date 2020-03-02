### Usage example

```bash
    docker run -d --name=serviio -p 23423:23423 -p 23424:23424 -p 1900:1900/udp -p 8895:8895 -v YOURPATHTOVIDEO:/opt/Video -v YOURPATHTOAUDIO:/opt/Audio rusbaron/serviio:latest
```

