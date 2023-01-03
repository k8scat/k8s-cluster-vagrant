#!/bin/bash
set -e

systemctl stop firewalld
systemctl disable firewalld
