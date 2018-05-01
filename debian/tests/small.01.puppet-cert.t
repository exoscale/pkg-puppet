#!/bin/sh

test_description="puppet cert"
hostname="test.example.com"

. ./sharness.sh

test_expect_success "generate" "
  puppet cert generate $hostname
"

test_expect_success "list" "
  puppet cert list --all | grep -q $hostname
"

test_expect_success "clean" "
  puppet cert clean $hostname
"

test_done
