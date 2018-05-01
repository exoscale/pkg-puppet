#!/bin/sh

test_description="puppet resource"

. ./sharness.sh

test_expect_success "look at /dev/null" "
  puppet resource file /dev/null
"

test_done
