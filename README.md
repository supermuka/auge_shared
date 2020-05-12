A library for Dart developers.

protoc --dart_out=grpc:lib\protos\generated -Ilib\src\protos lib\src\protos\objective\objective_measure.proto --plugin=protoc-gen-dart=c:\Users\samue\AppData\Roaming\Pub\Cache\bin\protoc-gen-dart.bat



TRANSLATE

pub run intl_translation:extract_to_arb --output-dir=lib/message/i18n --output-file=intl_domain_messages.arb lib/message/domain_messages.dart
pub run intl_translation:extract_to_arb --output-dir=lib/message/i18n lib/message/messages.dart

pub run intl_translation:generate_from_arb --output-dir=lib/message/i18n lib/message/domain_messages.dart lib/message/messages.dart lib/message/i18n/intl_domain_messages_en.arb lib/message/i18n/intl_domain_messages_pt_BR.arb  lib/message/i18n/intl_messages_en.arb lib/message/i18n/intl_messages_pt_BR.arb


# pub run intl_translation:generate_from_arb --output-dir=lib/message/i18n lib/message/domain_messages.dart lib/message/i18n/intl_domain_messages_en.arb lib/message/i18n/intl_domain_messages_pt_BR.arb
# pub run intl_translation:generate_from_arb --output-dir=lib/message/i18n lib/message/messages.dart lib/message/i18n/intl_messages_en.arb lib/message/i18n/intl_messages_pt_BR.arb



