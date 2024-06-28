#!/bin/bash

source ../lib/bashunit/bashunit.sh

setup() {
  tmp_dir=$(mktemp -d)
  mkdir -p $tmp_dir/projects
  touch $tmp_dir/config.yaml
}

teardown() {
  rm -rf $tmp_dir
}

test_create_script_runs_without_errors() {
  result=$(../bin/create "TestProject" --config-dir "$tmp_dir")
  assertEquals 0 $?
}

test_create_script_creates_directory() {
  ../bin/create "TestProject" --config-dir "$tmp_dir"
  assertTrue "Project directory not created" "[ -d $tmp_dir/TestProject ]"
}

bashunit_run_tests
