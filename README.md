# internet_connection_datalogging

Scripts to take the output of [internet_connection_monitor](https://github.com/tim-fan/internet_connection_monitor) and upload to this repo (see [logs](./logs/))

## Setup

Setup data push:
```bash
sudo ln services/internet_connection_log_push.service /etc/systemd/system/internet_connection_log_push.service
sudo ln services/internet_connection_monitor.service /etc/systemd/system/internet_connection_monitor.service

sudo systemctl enable internet_connection_log_push.service
sudo systemctl enable internet_connection_monitor.service

sudo systemctl start internet_connection_log_push.service
sudo systemctl start internet_connection_monitor.service
```

Get logs from push service:
```bash
sudo journalctl -u internet_connection_log_push
```
