#!/bin/bash

source ../lib/bashunit/bashunit.sh

setup() {
  tmp_dir=$(mktemp -d)
  mkdir -p $tmp_dir/projects
  touch $tmp_dir/config.yaml
  mkdir -p $tmp_dir/TestProject
  cd $tmp_dir/TestProject && git init
}

teardown() {
  rm -rf $tmp_dir
}

test_list_script_runs_without_errors() {
  result=$(../bin/list --config-dir "$tmp_dir")
  assertEquals 0 $?
}

bashunit_run_tests
