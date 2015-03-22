#!/bin/bash

echo "Connect to $1..."
cat ~/.ssh/id_rsa.pub | ssh $1 'cat >> .ssh/authorized_keys'

