#!/bin/bash

cd ..
nerdctl compose down
nerdctl compose up -d
