#!/bin/bash
dart pub global run coverage:test_with_coverage
genhtml coverage/lcov.info -o coverage/html --ignore-errors source --exclude="*.g.dart"