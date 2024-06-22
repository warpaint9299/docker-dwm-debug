# prerequisite

```bash
Xephyr -ac -noreset -screen 1523x825 :99 &
```

# after

```
docker compose up --detach
```

# use gdb to connect gdbserver

```bash
gdb
-------------------------
(gdb) target remote :2345
```
