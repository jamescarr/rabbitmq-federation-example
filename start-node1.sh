#!/bin/sh
echo ${PWD}
export RABBITMQ_NODENAME=us
export RABBITMQ_BASE=${PWD}/node1
export RABBITMQ_CONFIG_FILE=${PWD}/node1/rabbitmq
export RABBITMQ_PLUGINS_EXPAND_DIR=${PWD}/node1/plugins
export RABBITMQ_ENABLED_PLUGINS_FILE=${PWD}/node1/enabled_plugins
export RABBITMQ_MNESIA_DIR=${PWD}/node1/mnesia
export RABBITMQ_LOG_BASE=${PWD}/node1/logs
rabbitmq-server
