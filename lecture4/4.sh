#!/bin/env bash

journalctl | grep  ".* Startup finished in .*" | sed -E 's/.* ([0-9.]*)s\.$/\1/' | st --mean --median --max
