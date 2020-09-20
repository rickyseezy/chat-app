// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void _configureChatModuleFactories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => ChatRepository());
    container.registerFactory((c) => ChatBloc(c<ChatRepository>()));
  }
}
