enum ChatType { person, group }

enum MessageStatus { not_sent, not_view, viewed }

class EnumsUtil {
  /// 枚举enum类型比较
  static ChatType? chatType(String chatType) {
    for (ChatType type in ChatType.values) {
      if (type.toString() == chatType) {
        return type;
      }
    }
    return null;
  }

  /// 枚举enum类型比较
  static int chatType2Int(ChatType chatType) {
    switch (chatType) {
      case ChatType.person:
        return 1;
      case ChatType.group:
        return 2;
      default:
        return 0;
    }
  }

  /// 枚举enum类型比较
  static MessageStatus? messageStatus(String status) {
    for (MessageStatus type in MessageStatus.values) {
      if (type.toString() == status) {
        return type;
      }
    }
    return null;
  }
}
