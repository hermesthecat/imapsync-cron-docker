#!/bin/bash

imapsync --host1 $HOST1 --user1 $USER1 --passfile1 /config/pass1 --host2 $HOST2 --user2 $USER2 --passfile2 /config/pass2 --noreleasecheck --useheader "Message-Id" --addheader --delete2duplicates --automap
