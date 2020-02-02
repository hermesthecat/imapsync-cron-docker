#!/bin/bash

imapsync --host1 $HOST1 --user1 $USER2 --passfile1 /config/pass1 --host2 $HOST2 --user2 $USER2 --passfile2 /config/pass2 --delete2
