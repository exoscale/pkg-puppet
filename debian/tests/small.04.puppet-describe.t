#!/bin/sh

test_description="puppet describe"

. ./sharness.sh

test_expect_success "list" "
  puppet describe --list
"

test_expect_success "describe file (to /dev/null)" "
  puppet describe file >/dev/null
"

test_done
