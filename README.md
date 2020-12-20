# internet_connection_datalogging

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
sudosudo journalctl -u internet_connection_log_push
```
