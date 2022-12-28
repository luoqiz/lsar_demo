import 'package:isar/isar.dart';
import 'package:lsar_demo/db/LocalMessageService.dart';

import 'message_info_entity.dart';

class IsarLocalMessageServiceImpl implements LocalMessageService {
  late Future<Isar> db;

  IsarLocalMessageServiceImpl() {
    db = openIsar();
  }

  Future<Isar> openIsar() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([MessageInfoEntitySchema], inspector: true);
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<void> insert(MessageInfoEntity messageInfoEntity) async {
    Isar isar = await db;
    isar.writeTxnSync(() => isar.messageInfoEntitys.putSync(messageInfoEntity));
  }

  Stream<List<MessageInfoEntity>> getAllMessage() async* {
    final isar = await db;
    yield* isar.messageInfoEntitys
        .where(distinct: true)
        .watch(fireImmediately: true);
  }
  Future cleanDb() async{
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }
}
