// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_info_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMessageInfoEntityCollection on Isar {
  IsarCollection<MessageInfoEntity> get messageInfoEntitys => this.collection();
}

const MessageInfoEntitySchema = CollectionSchema(
  name: r'MessageInfoEntity',
  id: -3525204293578758588,
  properties: {
    r'chatType': PropertySchema(
      id: 0,
      name: r'chatType',
      type: IsarType.long,
    ),
    r'createTime': PropertySchema(
      id: 1,
      name: r'createTime',
      type: IsarType.long,
    ),
    r'groupId': PropertySchema(
      id: 2,
      name: r'groupId',
      type: IsarType.string,
    ),
    r'msg': PropertySchema(
      id: 3,
      name: r'msg',
      type: IsarType.string,
    ),
    r'msgType': PropertySchema(
      id: 4,
      name: r'msgType',
      type: IsarType.long,
    ),
    r'sender': PropertySchema(
      id: 5,
      name: r'sender',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 6,
      name: r'status',
      type: IsarType.byte,
      enumMap: _MessageInfoEntitystatusEnumValueMap,
    ),
    r'updateTime': PropertySchema(
      id: 7,
      name: r'updateTime',
      type: IsarType.long,
    )
  },
  estimateSize: _messageInfoEntityEstimateSize,
  serialize: _messageInfoEntitySerialize,
  deserialize: _messageInfoEntityDeserialize,
  deserializeProp: _messageInfoEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'groupId': IndexSchema(
      id: -8523216633229774932,
      name: r'groupId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'groupId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'sender': IndexSchema(
      id: -329123861705681426,
      name: r'sender',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'sender',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _messageInfoEntityGetId,
  getLinks: _messageInfoEntityGetLinks,
  attach: _messageInfoEntityAttach,
  version: '3.0.5',
);

int _messageInfoEntityEstimateSize(
  MessageInfoEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.groupId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.msg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sender;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _messageInfoEntitySerialize(
  MessageInfoEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.chatType);
  writer.writeLong(offsets[1], object.createTime);
  writer.writeString(offsets[2], object.groupId);
  writer.writeString(offsets[3], object.msg);
  writer.writeLong(offsets[4], object.msgType);
  writer.writeString(offsets[5], object.sender);
  writer.writeByte(offsets[6], object.status.index);
  writer.writeLong(offsets[7], object.updateTime);
}

MessageInfoEntity _messageInfoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MessageInfoEntity();
  object.chatType = reader.readLongOrNull(offsets[0]);
  object.createTime = reader.readLongOrNull(offsets[1]);
  object.groupId = reader.readStringOrNull(offsets[2]);
  object.id = id;
  object.msg = reader.readStringOrNull(offsets[3]);
  object.msgType = reader.readLongOrNull(offsets[4]);
  object.sender = reader.readStringOrNull(offsets[5]);
  object.status =
      _MessageInfoEntitystatusValueEnumMap[reader.readByteOrNull(offsets[6])] ??
          MessageStatus.not_sent;
  object.updateTime = reader.readLongOrNull(offsets[7]);
  return object;
}

P _messageInfoEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (_MessageInfoEntitystatusValueEnumMap[
              reader.readByteOrNull(offset)] ??
          MessageStatus.not_sent) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MessageInfoEntitystatusEnumValueMap = {
  'not_sent': 0,
  'not_view': 1,
  'viewed': 2,
};
const _MessageInfoEntitystatusValueEnumMap = {
  0: MessageStatus.not_sent,
  1: MessageStatus.not_view,
  2: MessageStatus.viewed,
};

Id _messageInfoEntityGetId(MessageInfoEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _messageInfoEntityGetLinks(
    MessageInfoEntity object) {
  return [];
}

void _messageInfoEntityAttach(
    IsarCollection<dynamic> col, Id id, MessageInfoEntity object) {
  object.id = id;
}

extension MessageInfoEntityQueryWhereSort
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QWhere> {
  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhere> anyGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'groupId'),
      );
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhere> anySender() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'sender'),
      );
    });
  }
}

extension MessageInfoEntityQueryWhere
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QWhereClause> {
  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'groupId',
        value: [null],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'groupId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdEqualTo(String? groupId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'groupId',
        value: [groupId],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdNotEqualTo(String? groupId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId',
              lower: [],
              upper: [groupId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId',
              lower: [groupId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId',
              lower: [groupId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'groupId',
              lower: [],
              upper: [groupId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdGreaterThan(
    String? groupId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'groupId',
        lower: [groupId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdLessThan(
    String? groupId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'groupId',
        lower: [],
        upper: [groupId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdBetween(
    String? lowerGroupId,
    String? upperGroupId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'groupId',
        lower: [lowerGroupId],
        includeLower: includeLower,
        upper: [upperGroupId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdStartsWith(String GroupIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'groupId',
        lower: [GroupIdPrefix],
        upper: ['$GroupIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'groupId',
        value: [''],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      groupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'groupId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'groupId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'groupId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'groupId',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'sender',
        value: [null],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'sender',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderEqualTo(String? sender) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'sender',
        value: [sender],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderNotEqualTo(String? sender) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sender',
              lower: [],
              upper: [sender],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sender',
              lower: [sender],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sender',
              lower: [sender],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'sender',
              lower: [],
              upper: [sender],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderGreaterThan(
    String? sender, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'sender',
        lower: [sender],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderLessThan(
    String? sender, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'sender',
        lower: [],
        upper: [sender],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderBetween(
    String? lowerSender,
    String? upperSender, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'sender',
        lower: [lowerSender],
        includeLower: includeLower,
        upper: [upperSender],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderStartsWith(String SenderPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'sender',
        lower: [SenderPrefix],
        upper: ['$SenderPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'sender',
        value: [''],
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterWhereClause>
      senderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'sender',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'sender',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'sender',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'sender',
              upper: [''],
            ));
      }
    });
  }
}

extension MessageInfoEntityQueryFilter
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QFilterCondition> {
  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      chatTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chatType',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      chatTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chatType',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      chatTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chatType',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      chatTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chatType',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      chatTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chatType',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      chatTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chatType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      createTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createTime',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      createTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createTime',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      createTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      createTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      createTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      createTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: '',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      groupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupId',
        value: '',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'msg',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'msg',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'msg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'msg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'msg',
        value: '',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'msg',
        value: '',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'msgType',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'msgType',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'msgType',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'msgType',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'msgType',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      msgTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'msgType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sender',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sender',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sender',
        value: '',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      senderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sender',
        value: '',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      statusEqualTo(MessageStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      statusGreaterThan(
    MessageStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      statusLessThan(
    MessageStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      statusBetween(
    MessageStatus lower,
    MessageStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      updateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      updateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      updateTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      updateTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      updateTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterFilterCondition>
      updateTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MessageInfoEntityQueryObject
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QFilterCondition> {}

extension MessageInfoEntityQueryLinks
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QFilterCondition> {}

extension MessageInfoEntityQuerySortBy
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QSortBy> {
  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByChatType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chatType', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByChatTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chatType', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy> sortByMsg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msg', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByMsgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msg', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByMsgType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msgType', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByMsgTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msgType', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortBySender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sender', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortBySenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sender', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }
}

extension MessageInfoEntityQuerySortThenBy
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QSortThenBy> {
  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByChatType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chatType', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByChatTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chatType', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy> thenByMsg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msg', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByMsgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msg', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByMsgType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msgType', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByMsgTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msgType', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenBySender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sender', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenBySenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sender', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }
}

extension MessageInfoEntityQueryWhereDistinct
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct> {
  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct>
      distinctByChatType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chatType');
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct>
      distinctByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createTime');
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct>
      distinctByGroupId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct> distinctByMsg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'msg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct>
      distinctByMsgType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'msgType');
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct>
      distinctBySender({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sender', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct>
      distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<MessageInfoEntity, MessageInfoEntity, QDistinct>
      distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateTime');
    });
  }
}

extension MessageInfoEntityQueryProperty
    on QueryBuilder<MessageInfoEntity, MessageInfoEntity, QQueryProperty> {
  QueryBuilder<MessageInfoEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MessageInfoEntity, int?, QQueryOperations> chatTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chatType');
    });
  }

  QueryBuilder<MessageInfoEntity, int?, QQueryOperations> createTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createTime');
    });
  }

  QueryBuilder<MessageInfoEntity, String?, QQueryOperations> groupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupId');
    });
  }

  QueryBuilder<MessageInfoEntity, String?, QQueryOperations> msgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'msg');
    });
  }

  QueryBuilder<MessageInfoEntity, int?, QQueryOperations> msgTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'msgType');
    });
  }

  QueryBuilder<MessageInfoEntity, String?, QQueryOperations> senderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sender');
    });
  }

  QueryBuilder<MessageInfoEntity, MessageStatus, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<MessageInfoEntity, int?, QQueryOperations> updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateTime');
    });
  }
}
