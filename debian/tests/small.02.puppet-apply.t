#!/bin/sh

test_description="puppet apply"

. ./sharness.sh

test_expect_success "using the notify resource" "
  puppet apply -e 'notify { test_message: }'
"

test_done
