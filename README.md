# internet_connection_datalogging

## Setup

Setup data push:
```bash
sudo ln services/internet_connection_log_push.service /etc/systemd/system/internet_connection_log_push.service
systemctl enable internet_connection_log_push.service
sudo systemctl start internet_connection_log_push.service
```
