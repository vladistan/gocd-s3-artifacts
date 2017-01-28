#!/usr/bin/env bash
set -e

echo Building build image
cd ci
./ciBuild.sh
cd ..

if [ "x${UID}" = "x" ]; then
    echo "User ID not found.. replacing"
    export UID=$(id -u ${USER})
fi

USE_UID=$UID

if [ ${USE_UID} -eq 500345588 ]; then
    USE_UID=1000
fi

echo Using UID ${USE_UID}

echo Building Go.CD-S3-Artifacts
docker run -u ${USE_UID} -v $(pwd):/app -w /app --entrypoint /bin/bash  local/sbtbuilder /app/build.sh


/usr/local/sonar-runner/bin/sonar-runner
