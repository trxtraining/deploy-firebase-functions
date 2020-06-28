#!/bin/sh

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

if [ -z "${TARGET}" ]; then
    echo "TARGET is missing"
    TARGET = "default"
fi

firebase use \
   --token ${FIREBASE_TOKEN} \
   ${TARGET}

firebase deploy \
    --only functions
