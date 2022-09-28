#!/usr/bin/env bash

set -e
set -x

# flutter packages get

# bash integration_test_app/iris_integration_test/build-android.sh

MY_PATH=$(dirname "$0")

pushd ${MY_PATH}/../test_shard/integration_test_app

flutter packages get
flutter test integration_test --dart-define=TEST_APP_ID="${TEST_APP_ID}"

popd