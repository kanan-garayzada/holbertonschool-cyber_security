#!/bin/bash
sudo ufw allow 80/tcp && echo "Rules updated" && sudo ufw reload && echo "Rules updated (v6)"
