#!/bin/bash

source ../lib/bashunit/bashunit.sh

setup() {
  tmp_dir=$(mktemp -d)
  project_dir=$(mktemp -d)
  mkdir -p $tmp_dir/projects
  touch $tmp_dir/config.yaml
  cd $project_dir && git init
}

teardown() {
  rm -rf $tmp_dir $project_dir
}

test_add_script_runs_without_errors() {
  result=$(../bin/add "$project_dir" --config-dir "$tmp_dir")
  assertEquals 0 $?
}

test_add_script_adds_project() {
  ../bin/add "$project_dir" --config-dir "$tmp_dir"
  config_path="$tmp_dir/config.yaml"
  assertTrue "Project not added to configuration" "yq eval '.projects | any(.path == \"$project_dir\")' $config_path"
}

bashunit_run_tests
