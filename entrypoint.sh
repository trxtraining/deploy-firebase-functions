#!/bin/sh

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

if [ -z "${TARGET}" ]; then
    echo "TARGET is missing"
    TARGET = "default"
fi

echo "1. ${FIREBASE_TOKEN} ${TARGET}"

firebase deploy --token ${FIREBASE_TOKEN} -P ${TARGET} --only functions 
