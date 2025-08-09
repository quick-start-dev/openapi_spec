import 'package:args/args.dart';
import 'dart:developer';

import 'package:openapi_spec_plus/v20.dart' as v20;
import 'package:openapi_spec_plus/v30.dart' as v30;
import 'package:openapi_spec_plus/v31.dart' as v31;

const String version = '0.0.1';

ArgParser buildParser() {
  return ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print this usage information.',
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      negatable: false,
      help: 'Show additional command output.',
    )
    ..addFlag('version', negatable: false, help: 'Print the tool version.');
}

void printUsage(ArgParser argParser) {
  print('Usage: dart example.dart <flags> [arguments]');
  print(argParser.usage);
}

void main(List<String> arguments) {
  final ArgParser argParser = buildParser();
  bool verbose = false;

  try {
    final ArgResults results = argParser.parse(arguments);

    // Process the parsed arguments.
    if (results.flag('help')) {
      printUsage(argParser);
      return;
    }
    if (results.flag('version')) {
      print('example version: $version');
      return;
    }
    if (results.flag('verbose')) {
      verbose = true;
    }

    // Act on the arguments provided.
    print('Positional arguments: ${results.rest}');
    if (verbose) {
      print('[VERBOSE] All arguments: ${results.arguments}');
    }

    // ✅ Run the OpenAPI example
    runExample();
  } on FormatException catch (e) {
    // Print usage information if an invalid argument was provided.
    print(e.message);
    print('');
    printUsage(argParser);
  }
}

void runExample() {
  const specV20 = v20.OpenAPI(
    info: v20.Info(title: 'Test API', version: '1.0.0'),
  );

  const specV30 = v30.OpenAPI(
    openapi: '3.0.4',
    info: v30.Info(title: 'Test API', version: '1.0.0'),
  );

  const specV31 = v31.OpenAPI(
    openapi: '3.1.0',
    info: v31.Info(title: 'Test API', version: '1.0.0'),
  );

  log(specV20.toJson().toString());
  log(specV30.toJson().toString());
  log(specV31.toJson().toString());
}
