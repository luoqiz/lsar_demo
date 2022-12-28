import 'package:lsar_demo/db/isar/message_info_entity.dart';

abstract class LocalMessageService {
  /// 写入本地数据库
  insert(MessageInfoEntity messageInfoEntity);

}
