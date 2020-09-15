#!/bin/bash

ps -A -o user,comm,pcpu --sort -pcpu | awk '{if ($3 != 0.0) print $0}'