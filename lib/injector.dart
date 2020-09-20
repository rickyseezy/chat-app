import 'package:chat_app/cubit/chat_cubit.dart';
import 'package:chat_app/repository/chat_repository.dart';
import 'package:kiwi/kiwi.dart';

part 'injector.g.dart';

abstract class Injector {
  static KiwiContainer container;

  static void initKiwi() {
    container = KiwiContainer();
    _$Injector()._configure();
  }

  void _configure() {
    _configureChatModule();
  }

  void _configureChatModule(){
    _configureChatModuleFactories();
  }

  @Register.factory(ChatRepository)
  @Register.factory(ChatBloc)
  void _configureChatModuleFactories();

}