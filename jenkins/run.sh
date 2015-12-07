#!/bin/bash

vol=/var/jenkins_home
if [ -d "$vol" -a "$(stat -c '%U' "$vol" 2>/dev/null)" = "root" ]; then
      chown app "$vol"
      chmod o-rwx "$vol"
fi

/bin/tini -- /usr/local/bin/jenkins.sh


