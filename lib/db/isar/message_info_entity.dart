import 'package:isar/isar.dart';

import '../../constant/enums.dart';
part 'message_info_entity.g.dart';

@collection
class MessageInfoEntity {
  Id id = Isar.autoIncrement;

  /// chatType 聊天类型：单聊 1 群聊 2
  int? chatType;

  /// 聊天消息类型
  int? msgType;

  /// 接收者频道id，聊天类型为1，代表接收者用户id， 聊天类型为2，代表群组id
  @Index(type: IndexType.value)
  String? groupId;

  /// 发送者用户id
  @Index(type: IndexType.value)
  String? sender;

  /// 消息内容
  String? msg;
  int? createTime;
  int? updateTime;

  @enumerated
  MessageStatus status = MessageStatus.not_sent;

// MessageInfoEntity({
//   required this.id,
//   required this.chatType,
//   required this.groupId,
//   required this.sender,
//   required this.msgType,
//   this.msg,
//   required this.createTime,
//   this.updateTime,
//   this.status,
// });

// factory MessageInfoEntity.fromJson(String str) =>
//     MessageInfoEntity.fromMap(json.decode(str));
//
// String toJson() => json.encode(toMap());
//
// Map<String, dynamic> toMap() {
//   return {
//     'id': id,
//     'chatType': chatType,
//     'groupId': groupId,
//     'sender': sender,
//     'msgType': msgType,
//     'msg': msg,
//     'createTime': createTime,
//     'updateTime': updateTime,
//     if (status != null) 'status': json.encode(status.toString()),
//   };
// }

// factory MessageInfoEntity.fromMap(Map<String, dynamic> map) {
//   return MessageInfoEntity(
//     id: map['id'] as String,
//     chatType: map['chatType'] as int,
//     groupId: map['groupId'] as String,
//     sender: map['sender'] as String,
//     msgType: map['msgType'] as int,
//     msg: map['msg'] as String,
//     createTime: map['createTime'] as int,
//     updateTime: map['updateTime'] != null ? map['updateTime'] as int : null,
//     status:
//         map['status'] != null ? EnumsUtil.messageStatus(map['status']) : null,
//   );
// }

// @override
// String toString() {
//   return 'MessageInfoEntity{id: $id, chatType: $chatType, groupId: $groupId, sender: $sender, msgType: $msgType, msg: $msg, createTime: $createTime, updateTime: $updateTime, status: $status}';
// }
}
