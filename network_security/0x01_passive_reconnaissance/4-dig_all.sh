#!/bin/bash
dig "$1" ANY +noall +answer @8.8.8.8
