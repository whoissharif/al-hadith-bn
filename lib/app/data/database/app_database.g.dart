// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleArMeta =
      const VerificationMeta('titleAr');
  @override
  late final GeneratedColumn<String> titleAr = GeneratedColumn<String>(
      'title_ar', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numberOfHadisMeta =
      const VerificationMeta('numberOfHadis');
  @override
  late final GeneratedColumn<int> numberOfHadis = GeneratedColumn<int>(
      'number_of_hadis', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _abvrCodeMeta =
      const VerificationMeta('abvrCode');
  @override
  late final GeneratedColumn<String> abvrCode = GeneratedColumn<String>(
      'abvr_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bookNameMeta =
      const VerificationMeta('bookName');
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
      'book_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bookDescrMeta =
      const VerificationMeta('bookDescr');
  @override
  late final GeneratedColumn<String> bookDescr = GeneratedColumn<String>(
      'book_descr', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _colorCodeMeta =
      const VerificationMeta('colorCode');
  @override
  late final GeneratedColumn<String> colorCode = GeneratedColumn<String>(
      'color_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        titleAr,
        numberOfHadis,
        abvrCode,
        bookName,
        bookDescr,
        colorCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books';
  @override
  VerificationContext validateIntegrity(Insertable<Book> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('title_ar')) {
      context.handle(_titleArMeta,
          titleAr.isAcceptableOrUnknown(data['title_ar']!, _titleArMeta));
    }
    if (data.containsKey('number_of_hadis')) {
      context.handle(
          _numberOfHadisMeta,
          numberOfHadis.isAcceptableOrUnknown(
              data['number_of_hadis']!, _numberOfHadisMeta));
    }
    if (data.containsKey('abvr_code')) {
      context.handle(_abvrCodeMeta,
          abvrCode.isAcceptableOrUnknown(data['abvr_code']!, _abvrCodeMeta));
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta));
    }
    if (data.containsKey('book_descr')) {
      context.handle(_bookDescrMeta,
          bookDescr.isAcceptableOrUnknown(data['book_descr']!, _bookDescrMeta));
    }
    if (data.containsKey('color_code')) {
      context.handle(_colorCodeMeta,
          colorCode.isAcceptableOrUnknown(data['color_code']!, _colorCodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Book(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      titleAr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar']),
      numberOfHadis: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number_of_hadis']),
      abvrCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}abvr_code']),
      bookName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name']),
      bookDescr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_descr']),
      colorCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color_code']),
    );
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(attachedDatabase, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int? id;
  final String? title;
  final String? titleAr;
  final int? numberOfHadis;
  final String? abvrCode;
  final String? bookName;
  final String? bookDescr;
  final String? colorCode;
  const Book(
      {this.id,
      this.title,
      this.titleAr,
      this.numberOfHadis,
      this.abvrCode,
      this.bookName,
      this.bookDescr,
      this.colorCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || titleAr != null) {
      map['title_ar'] = Variable<String>(titleAr);
    }
    if (!nullToAbsent || numberOfHadis != null) {
      map['number_of_hadis'] = Variable<int>(numberOfHadis);
    }
    if (!nullToAbsent || abvrCode != null) {
      map['abvr_code'] = Variable<String>(abvrCode);
    }
    if (!nullToAbsent || bookName != null) {
      map['book_name'] = Variable<String>(bookName);
    }
    if (!nullToAbsent || bookDescr != null) {
      map['book_descr'] = Variable<String>(bookDescr);
    }
    if (!nullToAbsent || colorCode != null) {
      map['color_code'] = Variable<String>(colorCode);
    }
    return map;
  }

  BooksCompanion toCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      titleAr: titleAr == null && nullToAbsent
          ? const Value.absent()
          : Value(titleAr),
      numberOfHadis: numberOfHadis == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfHadis),
      abvrCode: abvrCode == null && nullToAbsent
          ? const Value.absent()
          : Value(abvrCode),
      bookName: bookName == null && nullToAbsent
          ? const Value.absent()
          : Value(bookName),
      bookDescr: bookDescr == null && nullToAbsent
          ? const Value.absent()
          : Value(bookDescr),
      colorCode: colorCode == null && nullToAbsent
          ? const Value.absent()
          : Value(colorCode),
    );
  }

  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int?>(json['id']),
      title: serializer.fromJson<String?>(json['title']),
      titleAr: serializer.fromJson<String?>(json['titleAr']),
      numberOfHadis: serializer.fromJson<int?>(json['numberOfHadis']),
      abvrCode: serializer.fromJson<String?>(json['abvrCode']),
      bookName: serializer.fromJson<String?>(json['bookName']),
      bookDescr: serializer.fromJson<String?>(json['bookDescr']),
      colorCode: serializer.fromJson<String?>(json['colorCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'title': serializer.toJson<String?>(title),
      'titleAr': serializer.toJson<String?>(titleAr),
      'numberOfHadis': serializer.toJson<int?>(numberOfHadis),
      'abvrCode': serializer.toJson<String?>(abvrCode),
      'bookName': serializer.toJson<String?>(bookName),
      'bookDescr': serializer.toJson<String?>(bookDescr),
      'colorCode': serializer.toJson<String?>(colorCode),
    };
  }

  Book copyWith(
          {Value<int?> id = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> titleAr = const Value.absent(),
          Value<int?> numberOfHadis = const Value.absent(),
          Value<String?> abvrCode = const Value.absent(),
          Value<String?> bookName = const Value.absent(),
          Value<String?> bookDescr = const Value.absent(),
          Value<String?> colorCode = const Value.absent()}) =>
      Book(
        id: id.present ? id.value : this.id,
        title: title.present ? title.value : this.title,
        titleAr: titleAr.present ? titleAr.value : this.titleAr,
        numberOfHadis:
            numberOfHadis.present ? numberOfHadis.value : this.numberOfHadis,
        abvrCode: abvrCode.present ? abvrCode.value : this.abvrCode,
        bookName: bookName.present ? bookName.value : this.bookName,
        bookDescr: bookDescr.present ? bookDescr.value : this.bookDescr,
        colorCode: colorCode.present ? colorCode.value : this.colorCode,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleAr: $titleAr, ')
          ..write('numberOfHadis: $numberOfHadis, ')
          ..write('abvrCode: $abvrCode, ')
          ..write('bookName: $bookName, ')
          ..write('bookDescr: $bookDescr, ')
          ..write('colorCode: $colorCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, titleAr, numberOfHadis, abvrCode,
      bookName, bookDescr, colorCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.title == this.title &&
          other.titleAr == this.titleAr &&
          other.numberOfHadis == this.numberOfHadis &&
          other.abvrCode == this.abvrCode &&
          other.bookName == this.bookName &&
          other.bookDescr == this.bookDescr &&
          other.colorCode == this.colorCode);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int?> id;
  final Value<String?> title;
  final Value<String?> titleAr;
  final Value<int?> numberOfHadis;
  final Value<String?> abvrCode;
  final Value<String?> bookName;
  final Value<String?> bookDescr;
  final Value<String?> colorCode;
  final Value<int> rowid;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.numberOfHadis = const Value.absent(),
    this.abvrCode = const Value.absent(),
    this.bookName = const Value.absent(),
    this.bookDescr = const Value.absent(),
    this.colorCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BooksCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.titleAr = const Value.absent(),
    this.numberOfHadis = const Value.absent(),
    this.abvrCode = const Value.absent(),
    this.bookName = const Value.absent(),
    this.bookDescr = const Value.absent(),
    this.colorCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<Book> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? titleAr,
    Expression<int>? numberOfHadis,
    Expression<String>? abvrCode,
    Expression<String>? bookName,
    Expression<String>? bookDescr,
    Expression<String>? colorCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (titleAr != null) 'title_ar': titleAr,
      if (numberOfHadis != null) 'number_of_hadis': numberOfHadis,
      if (abvrCode != null) 'abvr_code': abvrCode,
      if (bookName != null) 'book_name': bookName,
      if (bookDescr != null) 'book_descr': bookDescr,
      if (colorCode != null) 'color_code': colorCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BooksCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? title,
      Value<String?>? titleAr,
      Value<int?>? numberOfHadis,
      Value<String?>? abvrCode,
      Value<String?>? bookName,
      Value<String?>? bookDescr,
      Value<String?>? colorCode,
      Value<int>? rowid}) {
    return BooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      titleAr: titleAr ?? this.titleAr,
      numberOfHadis: numberOfHadis ?? this.numberOfHadis,
      abvrCode: abvrCode ?? this.abvrCode,
      bookName: bookName ?? this.bookName,
      bookDescr: bookDescr ?? this.bookDescr,
      colorCode: colorCode ?? this.colorCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (titleAr.present) {
      map['title_ar'] = Variable<String>(titleAr.value);
    }
    if (numberOfHadis.present) {
      map['number_of_hadis'] = Variable<int>(numberOfHadis.value);
    }
    if (abvrCode.present) {
      map['abvr_code'] = Variable<String>(abvrCode.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (bookDescr.present) {
      map['book_descr'] = Variable<String>(bookDescr.value);
    }
    if (colorCode.present) {
      map['color_code'] = Variable<String>(colorCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleAr: $titleAr, ')
          ..write('numberOfHadis: $numberOfHadis, ')
          ..write('abvrCode: $abvrCode, ')
          ..write('bookName: $bookName, ')
          ..write('bookDescr: $bookDescr, ')
          ..write('colorCode: $colorCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SectionsTable extends Sections with TableInfo<$SectionsTable, Section> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _bookNameMeta =
      const VerificationMeta('bookName');
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
      'book_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sectionIdMeta =
      const VerificationMeta('sectionId');
  @override
  late final GeneratedColumn<int> sectionId = GeneratedColumn<int>(
      'section_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _prefaceMeta =
      const VerificationMeta('preface');
  @override
  late final GeneratedColumn<String> preface = GeneratedColumn<String>(
      'preface', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sortOrderMeta =
      const VerificationMeta('sortOrder');
  @override
  late final GeneratedColumn<String> sortOrder = GeneratedColumn<String>(
      'sort_order', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        bookName,
        chapterId,
        sectionId,
        title,
        preface,
        number,
        sortOrder
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'section';
  @override
  VerificationContext validateIntegrity(Insertable<Section> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    }
    if (data.containsKey('section_id')) {
      context.handle(_sectionIdMeta,
          sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('preface')) {
      context.handle(_prefaceMeta,
          preface.isAcceptableOrUnknown(data['preface']!, _prefaceMeta));
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('sort_order')) {
      context.handle(_sortOrderMeta,
          sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Section map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Section(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id']),
      bookName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name']),
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id']),
      sectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      preface: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preface']),
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number']),
      sortOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sort_order']),
    );
  }

  @override
  $SectionsTable createAlias(String alias) {
    return $SectionsTable(attachedDatabase, alias);
  }
}

class Section extends DataClass implements Insertable<Section> {
  final int? id;
  final int? bookId;
  final String? bookName;
  final int? chapterId;
  final int? sectionId;
  final String? title;
  final String? preface;
  final String? number;
  final String? sortOrder;
  const Section(
      {this.id,
      this.bookId,
      this.bookName,
      this.chapterId,
      this.sectionId,
      this.title,
      this.preface,
      this.number,
      this.sortOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || bookName != null) {
      map['book_name'] = Variable<String>(bookName);
    }
    if (!nullToAbsent || chapterId != null) {
      map['chapter_id'] = Variable<int>(chapterId);
    }
    if (!nullToAbsent || sectionId != null) {
      map['section_id'] = Variable<int>(sectionId);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || preface != null) {
      map['preface'] = Variable<String>(preface);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<String>(number);
    }
    if (!nullToAbsent || sortOrder != null) {
      map['sort_order'] = Variable<String>(sortOrder);
    }
    return map;
  }

  SectionsCompanion toCompanion(bool nullToAbsent) {
    return SectionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      bookName: bookName == null && nullToAbsent
          ? const Value.absent()
          : Value(bookName),
      chapterId: chapterId == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterId),
      sectionId: sectionId == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionId),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      preface: preface == null && nullToAbsent
          ? const Value.absent()
          : Value(preface),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      sortOrder: sortOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(sortOrder),
    );
  }

  factory Section.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Section(
      id: serializer.fromJson<int?>(json['id']),
      bookId: serializer.fromJson<int?>(json['bookId']),
      bookName: serializer.fromJson<String?>(json['bookName']),
      chapterId: serializer.fromJson<int?>(json['chapterId']),
      sectionId: serializer.fromJson<int?>(json['sectionId']),
      title: serializer.fromJson<String?>(json['title']),
      preface: serializer.fromJson<String?>(json['preface']),
      number: serializer.fromJson<String?>(json['number']),
      sortOrder: serializer.fromJson<String?>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'bookId': serializer.toJson<int?>(bookId),
      'bookName': serializer.toJson<String?>(bookName),
      'chapterId': serializer.toJson<int?>(chapterId),
      'sectionId': serializer.toJson<int?>(sectionId),
      'title': serializer.toJson<String?>(title),
      'preface': serializer.toJson<String?>(preface),
      'number': serializer.toJson<String?>(number),
      'sortOrder': serializer.toJson<String?>(sortOrder),
    };
  }

  Section copyWith(
          {Value<int?> id = const Value.absent(),
          Value<int?> bookId = const Value.absent(),
          Value<String?> bookName = const Value.absent(),
          Value<int?> chapterId = const Value.absent(),
          Value<int?> sectionId = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> preface = const Value.absent(),
          Value<String?> number = const Value.absent(),
          Value<String?> sortOrder = const Value.absent()}) =>
      Section(
        id: id.present ? id.value : this.id,
        bookId: bookId.present ? bookId.value : this.bookId,
        bookName: bookName.present ? bookName.value : this.bookName,
        chapterId: chapterId.present ? chapterId.value : this.chapterId,
        sectionId: sectionId.present ? sectionId.value : this.sectionId,
        title: title.present ? title.value : this.title,
        preface: preface.present ? preface.value : this.preface,
        number: number.present ? number.value : this.number,
        sortOrder: sortOrder.present ? sortOrder.value : this.sortOrder,
      );
  @override
  String toString() {
    return (StringBuffer('Section(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bookId, bookName, chapterId, sectionId,
      title, preface, number, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Section &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.bookName == this.bookName &&
          other.chapterId == this.chapterId &&
          other.sectionId == this.sectionId &&
          other.title == this.title &&
          other.preface == this.preface &&
          other.number == this.number &&
          other.sortOrder == this.sortOrder);
}

class SectionsCompanion extends UpdateCompanion<Section> {
  final Value<int?> id;
  final Value<int?> bookId;
  final Value<String?> bookName;
  final Value<int?> chapterId;
  final Value<int?> sectionId;
  final Value<String?> title;
  final Value<String?> preface;
  final Value<String?> number;
  final Value<String?> sortOrder;
  final Value<int> rowid;
  const SectionsCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.title = const Value.absent(),
    this.preface = const Value.absent(),
    this.number = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SectionsCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.title = const Value.absent(),
    this.preface = const Value.absent(),
    this.number = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<Section> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<String>? bookName,
    Expression<int>? chapterId,
    Expression<int>? sectionId,
    Expression<String>? title,
    Expression<String>? preface,
    Expression<String>? number,
    Expression<String>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (bookName != null) 'book_name': bookName,
      if (chapterId != null) 'chapter_id': chapterId,
      if (sectionId != null) 'section_id': sectionId,
      if (title != null) 'title': title,
      if (preface != null) 'preface': preface,
      if (number != null) 'number': number,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SectionsCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? bookId,
      Value<String?>? bookName,
      Value<int?>? chapterId,
      Value<int?>? sectionId,
      Value<String?>? title,
      Value<String?>? preface,
      Value<String?>? number,
      Value<String?>? sortOrder,
      Value<int>? rowid}) {
    return SectionsCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      bookName: bookName ?? this.bookName,
      chapterId: chapterId ?? this.chapterId,
      sectionId: sectionId ?? this.sectionId,
      title: title ?? this.title,
      preface: preface ?? this.preface,
      number: number ?? this.number,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<int>(sectionId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (preface.present) {
      map['preface'] = Variable<String>(preface.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<String>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionsCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ChaptersTable extends Chapters with TableInfo<$ChaptersTable, Chapter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChaptersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _hadisRangeMeta =
      const VerificationMeta('hadisRange');
  @override
  late final GeneratedColumn<String> hadisRange = GeneratedColumn<String>(
      'hadis_range', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bookNameMeta =
      const VerificationMeta('bookName');
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
      'book_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, chapterId, bookId, title, number, hadisRange, bookName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'chapter';
  @override
  VerificationContext validateIntegrity(Insertable<Chapter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('hadis_range')) {
      context.handle(
          _hadisRangeMeta,
          hadisRange.isAcceptableOrUnknown(
              data['hadis_range']!, _hadisRangeMeta));
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Chapter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Chapter(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id']),
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number']),
      hadisRange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hadis_range']),
      bookName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name']),
    );
  }

  @override
  $ChaptersTable createAlias(String alias) {
    return $ChaptersTable(attachedDatabase, alias);
  }
}

class Chapter extends DataClass implements Insertable<Chapter> {
  final int? id;
  final int? chapterId;
  final int? bookId;
  final String? title;
  final int? number;
  final String? hadisRange;
  final String? bookName;
  const Chapter(
      {this.id,
      this.chapterId,
      this.bookId,
      this.title,
      this.number,
      this.hadisRange,
      this.bookName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || chapterId != null) {
      map['chapter_id'] = Variable<int>(chapterId);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<int>(number);
    }
    if (!nullToAbsent || hadisRange != null) {
      map['hadis_range'] = Variable<String>(hadisRange);
    }
    if (!nullToAbsent || bookName != null) {
      map['book_name'] = Variable<String>(bookName);
    }
    return map;
  }

  ChaptersCompanion toCompanion(bool nullToAbsent) {
    return ChaptersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      chapterId: chapterId == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterId),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      hadisRange: hadisRange == null && nullToAbsent
          ? const Value.absent()
          : Value(hadisRange),
      bookName: bookName == null && nullToAbsent
          ? const Value.absent()
          : Value(bookName),
    );
  }

  factory Chapter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Chapter(
      id: serializer.fromJson<int?>(json['id']),
      chapterId: serializer.fromJson<int?>(json['chapterId']),
      bookId: serializer.fromJson<int?>(json['bookId']),
      title: serializer.fromJson<String?>(json['title']),
      number: serializer.fromJson<int?>(json['number']),
      hadisRange: serializer.fromJson<String?>(json['hadisRange']),
      bookName: serializer.fromJson<String?>(json['bookName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'chapterId': serializer.toJson<int?>(chapterId),
      'bookId': serializer.toJson<int?>(bookId),
      'title': serializer.toJson<String?>(title),
      'number': serializer.toJson<int?>(number),
      'hadisRange': serializer.toJson<String?>(hadisRange),
      'bookName': serializer.toJson<String?>(bookName),
    };
  }

  Chapter copyWith(
          {Value<int?> id = const Value.absent(),
          Value<int?> chapterId = const Value.absent(),
          Value<int?> bookId = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<int?> number = const Value.absent(),
          Value<String?> hadisRange = const Value.absent(),
          Value<String?> bookName = const Value.absent()}) =>
      Chapter(
        id: id.present ? id.value : this.id,
        chapterId: chapterId.present ? chapterId.value : this.chapterId,
        bookId: bookId.present ? bookId.value : this.bookId,
        title: title.present ? title.value : this.title,
        number: number.present ? number.value : this.number,
        hadisRange: hadisRange.present ? hadisRange.value : this.hadisRange,
        bookName: bookName.present ? bookName.value : this.bookName,
      );
  @override
  String toString() {
    return (StringBuffer('Chapter(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('bookId: $bookId, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadisRange: $hadisRange, ')
          ..write('bookName: $bookName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, chapterId, bookId, title, number, hadisRange, bookName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Chapter &&
          other.id == this.id &&
          other.chapterId == this.chapterId &&
          other.bookId == this.bookId &&
          other.title == this.title &&
          other.number == this.number &&
          other.hadisRange == this.hadisRange &&
          other.bookName == this.bookName);
}

class ChaptersCompanion extends UpdateCompanion<Chapter> {
  final Value<int?> id;
  final Value<int?> chapterId;
  final Value<int?> bookId;
  final Value<String?> title;
  final Value<int?> number;
  final Value<String?> hadisRange;
  final Value<String?> bookName;
  final Value<int> rowid;
  const ChaptersCompanion({
    this.id = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.bookId = const Value.absent(),
    this.title = const Value.absent(),
    this.number = const Value.absent(),
    this.hadisRange = const Value.absent(),
    this.bookName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChaptersCompanion.insert({
    this.id = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.bookId = const Value.absent(),
    this.title = const Value.absent(),
    this.number = const Value.absent(),
    this.hadisRange = const Value.absent(),
    this.bookName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<Chapter> custom({
    Expression<int>? id,
    Expression<int>? chapterId,
    Expression<int>? bookId,
    Expression<String>? title,
    Expression<int>? number,
    Expression<String>? hadisRange,
    Expression<String>? bookName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapterId != null) 'chapter_id': chapterId,
      if (bookId != null) 'book_id': bookId,
      if (title != null) 'title': title,
      if (number != null) 'number': number,
      if (hadisRange != null) 'hadis_range': hadisRange,
      if (bookName != null) 'book_name': bookName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChaptersCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? chapterId,
      Value<int?>? bookId,
      Value<String?>? title,
      Value<int?>? number,
      Value<String?>? hadisRange,
      Value<String?>? bookName,
      Value<int>? rowid}) {
    return ChaptersCompanion(
      id: id ?? this.id,
      chapterId: chapterId ?? this.chapterId,
      bookId: bookId ?? this.bookId,
      title: title ?? this.title,
      number: number ?? this.number,
      hadisRange: hadisRange ?? this.hadisRange,
      bookName: bookName ?? this.bookName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (hadisRange.present) {
      map['hadis_range'] = Variable<String>(hadisRange.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChaptersCompanion(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('bookId: $bookId, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadisRange: $hadisRange, ')
          ..write('bookName: $bookName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HadithsTable extends Hadiths with TableInfo<$HadithsTable, Hadith> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HadithsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _bookNameMeta =
      const VerificationMeta('bookName');
  @override
  late final GeneratedColumn<String> bookName = GeneratedColumn<String>(
      'book_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<int> chapterId = GeneratedColumn<int>(
      'chapter_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sectionIdMeta =
      const VerificationMeta('sectionId');
  @override
  late final GeneratedColumn<int> sectionId = GeneratedColumn<int>(
      'section_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _hadithKeyMeta =
      const VerificationMeta('hadithKey');
  @override
  late final GeneratedColumn<String> hadithKey = GeneratedColumn<String>(
      'hadith_key', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hadithIdMeta =
      const VerificationMeta('hadithId');
  @override
  late final GeneratedColumn<int> hadithId = GeneratedColumn<int>(
      'hadith_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _narratorMeta =
      const VerificationMeta('narrator');
  @override
  late final GeneratedColumn<String> narrator = GeneratedColumn<String>(
      'narrator', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bnMeta = const VerificationMeta('bn');
  @override
  late final GeneratedColumn<String> bn = GeneratedColumn<String>(
      'bn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _arMeta = const VerificationMeta('ar');
  @override
  late final GeneratedColumn<String> ar = GeneratedColumn<String>(
      'ar', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _arDiaclessMeta =
      const VerificationMeta('arDiacless');
  @override
  late final GeneratedColumn<String> arDiacless = GeneratedColumn<String>(
      'ar_diacless', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gradeIdMeta =
      const VerificationMeta('gradeId');
  @override
  late final GeneratedColumn<int> gradeId = GeneratedColumn<int>(
      'grade_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _gradeMeta = const VerificationMeta('grade');
  @override
  late final GeneratedColumn<String> grade = GeneratedColumn<String>(
      'grade', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gradeColorMeta =
      const VerificationMeta('gradeColor');
  @override
  late final GeneratedColumn<String> gradeColor = GeneratedColumn<String>(
      'grade_color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        bookName,
        chapterId,
        sectionId,
        hadithKey,
        hadithId,
        narrator,
        bn,
        ar,
        arDiacless,
        note,
        gradeId,
        grade,
        gradeColor
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hadith';
  @override
  VerificationContext validateIntegrity(Insertable<Hadith> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    }
    if (data.containsKey('book_name')) {
      context.handle(_bookNameMeta,
          bookName.isAcceptableOrUnknown(data['book_name']!, _bookNameMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    }
    if (data.containsKey('section_id')) {
      context.handle(_sectionIdMeta,
          sectionId.isAcceptableOrUnknown(data['section_id']!, _sectionIdMeta));
    }
    if (data.containsKey('hadith_key')) {
      context.handle(_hadithKeyMeta,
          hadithKey.isAcceptableOrUnknown(data['hadith_key']!, _hadithKeyMeta));
    }
    if (data.containsKey('hadith_id')) {
      context.handle(_hadithIdMeta,
          hadithId.isAcceptableOrUnknown(data['hadith_id']!, _hadithIdMeta));
    }
    if (data.containsKey('narrator')) {
      context.handle(_narratorMeta,
          narrator.isAcceptableOrUnknown(data['narrator']!, _narratorMeta));
    }
    if (data.containsKey('bn')) {
      context.handle(_bnMeta, bn.isAcceptableOrUnknown(data['bn']!, _bnMeta));
    }
    if (data.containsKey('ar')) {
      context.handle(_arMeta, ar.isAcceptableOrUnknown(data['ar']!, _arMeta));
    }
    if (data.containsKey('ar_diacless')) {
      context.handle(
          _arDiaclessMeta,
          arDiacless.isAcceptableOrUnknown(
              data['ar_diacless']!, _arDiaclessMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('grade_id')) {
      context.handle(_gradeIdMeta,
          gradeId.isAcceptableOrUnknown(data['grade_id']!, _gradeIdMeta));
    }
    if (data.containsKey('grade')) {
      context.handle(
          _gradeMeta, grade.isAcceptableOrUnknown(data['grade']!, _gradeMeta));
    }
    if (data.containsKey('grade_color')) {
      context.handle(
          _gradeColorMeta,
          gradeColor.isAcceptableOrUnknown(
              data['grade_color']!, _gradeColorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Hadith map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Hadith(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id']),
      bookName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name']),
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id']),
      sectionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id']),
      hadithKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hadith_key']),
      hadithId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hadith_id']),
      narrator: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}narrator']),
      bn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bn']),
      ar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ar']),
      arDiacless: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ar_diacless']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      gradeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}grade_id']),
      grade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade']),
      gradeColor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade_color']),
    );
  }

  @override
  $HadithsTable createAlias(String alias) {
    return $HadithsTable(attachedDatabase, alias);
  }
}

class Hadith extends DataClass implements Insertable<Hadith> {
  final int? id;
  final int? bookId;
  final String? bookName;
  final int? chapterId;
  final int? sectionId;
  final String? hadithKey;
  final int? hadithId;
  final String? narrator;
  final String? bn;
  final String? ar;
  final String? arDiacless;
  final String? note;
  final int? gradeId;
  final String? grade;
  final String? gradeColor;
  const Hadith(
      {this.id,
      this.bookId,
      this.bookName,
      this.chapterId,
      this.sectionId,
      this.hadithKey,
      this.hadithId,
      this.narrator,
      this.bn,
      this.ar,
      this.arDiacless,
      this.note,
      this.gradeId,
      this.grade,
      this.gradeColor});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bookId != null) {
      map['book_id'] = Variable<int>(bookId);
    }
    if (!nullToAbsent || bookName != null) {
      map['book_name'] = Variable<String>(bookName);
    }
    if (!nullToAbsent || chapterId != null) {
      map['chapter_id'] = Variable<int>(chapterId);
    }
    if (!nullToAbsent || sectionId != null) {
      map['section_id'] = Variable<int>(sectionId);
    }
    if (!nullToAbsent || hadithKey != null) {
      map['hadith_key'] = Variable<String>(hadithKey);
    }
    if (!nullToAbsent || hadithId != null) {
      map['hadith_id'] = Variable<int>(hadithId);
    }
    if (!nullToAbsent || narrator != null) {
      map['narrator'] = Variable<String>(narrator);
    }
    if (!nullToAbsent || bn != null) {
      map['bn'] = Variable<String>(bn);
    }
    if (!nullToAbsent || ar != null) {
      map['ar'] = Variable<String>(ar);
    }
    if (!nullToAbsent || arDiacless != null) {
      map['ar_diacless'] = Variable<String>(arDiacless);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || gradeId != null) {
      map['grade_id'] = Variable<int>(gradeId);
    }
    if (!nullToAbsent || grade != null) {
      map['grade'] = Variable<String>(grade);
    }
    if (!nullToAbsent || gradeColor != null) {
      map['grade_color'] = Variable<String>(gradeColor);
    }
    return map;
  }

  HadithsCompanion toCompanion(bool nullToAbsent) {
    return HadithsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bookId:
          bookId == null && nullToAbsent ? const Value.absent() : Value(bookId),
      bookName: bookName == null && nullToAbsent
          ? const Value.absent()
          : Value(bookName),
      chapterId: chapterId == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterId),
      sectionId: sectionId == null && nullToAbsent
          ? const Value.absent()
          : Value(sectionId),
      hadithKey: hadithKey == null && nullToAbsent
          ? const Value.absent()
          : Value(hadithKey),
      hadithId: hadithId == null && nullToAbsent
          ? const Value.absent()
          : Value(hadithId),
      narrator: narrator == null && nullToAbsent
          ? const Value.absent()
          : Value(narrator),
      bn: bn == null && nullToAbsent ? const Value.absent() : Value(bn),
      ar: ar == null && nullToAbsent ? const Value.absent() : Value(ar),
      arDiacless: arDiacless == null && nullToAbsent
          ? const Value.absent()
          : Value(arDiacless),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      gradeId: gradeId == null && nullToAbsent
          ? const Value.absent()
          : Value(gradeId),
      grade:
          grade == null && nullToAbsent ? const Value.absent() : Value(grade),
      gradeColor: gradeColor == null && nullToAbsent
          ? const Value.absent()
          : Value(gradeColor),
    );
  }

  factory Hadith.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Hadith(
      id: serializer.fromJson<int?>(json['id']),
      bookId: serializer.fromJson<int?>(json['bookId']),
      bookName: serializer.fromJson<String?>(json['bookName']),
      chapterId: serializer.fromJson<int?>(json['chapterId']),
      sectionId: serializer.fromJson<int?>(json['sectionId']),
      hadithKey: serializer.fromJson<String?>(json['hadithKey']),
      hadithId: serializer.fromJson<int?>(json['hadithId']),
      narrator: serializer.fromJson<String?>(json['narrator']),
      bn: serializer.fromJson<String?>(json['bn']),
      ar: serializer.fromJson<String?>(json['ar']),
      arDiacless: serializer.fromJson<String?>(json['arDiacless']),
      note: serializer.fromJson<String?>(json['note']),
      gradeId: serializer.fromJson<int?>(json['gradeId']),
      grade: serializer.fromJson<String?>(json['grade']),
      gradeColor: serializer.fromJson<String?>(json['gradeColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'bookId': serializer.toJson<int?>(bookId),
      'bookName': serializer.toJson<String?>(bookName),
      'chapterId': serializer.toJson<int?>(chapterId),
      'sectionId': serializer.toJson<int?>(sectionId),
      'hadithKey': serializer.toJson<String?>(hadithKey),
      'hadithId': serializer.toJson<int?>(hadithId),
      'narrator': serializer.toJson<String?>(narrator),
      'bn': serializer.toJson<String?>(bn),
      'ar': serializer.toJson<String?>(ar),
      'arDiacless': serializer.toJson<String?>(arDiacless),
      'note': serializer.toJson<String?>(note),
      'gradeId': serializer.toJson<int?>(gradeId),
      'grade': serializer.toJson<String?>(grade),
      'gradeColor': serializer.toJson<String?>(gradeColor),
    };
  }

  Hadith copyWith(
          {Value<int?> id = const Value.absent(),
          Value<int?> bookId = const Value.absent(),
          Value<String?> bookName = const Value.absent(),
          Value<int?> chapterId = const Value.absent(),
          Value<int?> sectionId = const Value.absent(),
          Value<String?> hadithKey = const Value.absent(),
          Value<int?> hadithId = const Value.absent(),
          Value<String?> narrator = const Value.absent(),
          Value<String?> bn = const Value.absent(),
          Value<String?> ar = const Value.absent(),
          Value<String?> arDiacless = const Value.absent(),
          Value<String?> note = const Value.absent(),
          Value<int?> gradeId = const Value.absent(),
          Value<String?> grade = const Value.absent(),
          Value<String?> gradeColor = const Value.absent()}) =>
      Hadith(
        id: id.present ? id.value : this.id,
        bookId: bookId.present ? bookId.value : this.bookId,
        bookName: bookName.present ? bookName.value : this.bookName,
        chapterId: chapterId.present ? chapterId.value : this.chapterId,
        sectionId: sectionId.present ? sectionId.value : this.sectionId,
        hadithKey: hadithKey.present ? hadithKey.value : this.hadithKey,
        hadithId: hadithId.present ? hadithId.value : this.hadithId,
        narrator: narrator.present ? narrator.value : this.narrator,
        bn: bn.present ? bn.value : this.bn,
        ar: ar.present ? ar.value : this.ar,
        arDiacless: arDiacless.present ? arDiacless.value : this.arDiacless,
        note: note.present ? note.value : this.note,
        gradeId: gradeId.present ? gradeId.value : this.gradeId,
        grade: grade.present ? grade.value : this.grade,
        gradeColor: gradeColor.present ? gradeColor.value : this.gradeColor,
      );
  @override
  String toString() {
    return (StringBuffer('Hadith(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('hadithKey: $hadithKey, ')
          ..write('hadithId: $hadithId, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('arDiacless: $arDiacless, ')
          ..write('note: $note, ')
          ..write('gradeId: $gradeId, ')
          ..write('grade: $grade, ')
          ..write('gradeColor: $gradeColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      bookId,
      bookName,
      chapterId,
      sectionId,
      hadithKey,
      hadithId,
      narrator,
      bn,
      ar,
      arDiacless,
      note,
      gradeId,
      grade,
      gradeColor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Hadith &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.bookName == this.bookName &&
          other.chapterId == this.chapterId &&
          other.sectionId == this.sectionId &&
          other.hadithKey == this.hadithKey &&
          other.hadithId == this.hadithId &&
          other.narrator == this.narrator &&
          other.bn == this.bn &&
          other.ar == this.ar &&
          other.arDiacless == this.arDiacless &&
          other.note == this.note &&
          other.gradeId == this.gradeId &&
          other.grade == this.grade &&
          other.gradeColor == this.gradeColor);
}

class HadithsCompanion extends UpdateCompanion<Hadith> {
  final Value<int?> id;
  final Value<int?> bookId;
  final Value<String?> bookName;
  final Value<int?> chapterId;
  final Value<int?> sectionId;
  final Value<String?> hadithKey;
  final Value<int?> hadithId;
  final Value<String?> narrator;
  final Value<String?> bn;
  final Value<String?> ar;
  final Value<String?> arDiacless;
  final Value<String?> note;
  final Value<int?> gradeId;
  final Value<String?> grade;
  final Value<String?> gradeColor;
  final Value<int> rowid;
  const HadithsCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.hadithKey = const Value.absent(),
    this.hadithId = const Value.absent(),
    this.narrator = const Value.absent(),
    this.bn = const Value.absent(),
    this.ar = const Value.absent(),
    this.arDiacless = const Value.absent(),
    this.note = const Value.absent(),
    this.gradeId = const Value.absent(),
    this.grade = const Value.absent(),
    this.gradeColor = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HadithsCompanion.insert({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.bookName = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.sectionId = const Value.absent(),
    this.hadithKey = const Value.absent(),
    this.hadithId = const Value.absent(),
    this.narrator = const Value.absent(),
    this.bn = const Value.absent(),
    this.ar = const Value.absent(),
    this.arDiacless = const Value.absent(),
    this.note = const Value.absent(),
    this.gradeId = const Value.absent(),
    this.grade = const Value.absent(),
    this.gradeColor = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<Hadith> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<String>? bookName,
    Expression<int>? chapterId,
    Expression<int>? sectionId,
    Expression<String>? hadithKey,
    Expression<int>? hadithId,
    Expression<String>? narrator,
    Expression<String>? bn,
    Expression<String>? ar,
    Expression<String>? arDiacless,
    Expression<String>? note,
    Expression<int>? gradeId,
    Expression<String>? grade,
    Expression<String>? gradeColor,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (bookName != null) 'book_name': bookName,
      if (chapterId != null) 'chapter_id': chapterId,
      if (sectionId != null) 'section_id': sectionId,
      if (hadithKey != null) 'hadith_key': hadithKey,
      if (hadithId != null) 'hadith_id': hadithId,
      if (narrator != null) 'narrator': narrator,
      if (bn != null) 'bn': bn,
      if (ar != null) 'ar': ar,
      if (arDiacless != null) 'ar_diacless': arDiacless,
      if (note != null) 'note': note,
      if (gradeId != null) 'grade_id': gradeId,
      if (grade != null) 'grade': grade,
      if (gradeColor != null) 'grade_color': gradeColor,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HadithsCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? bookId,
      Value<String?>? bookName,
      Value<int?>? chapterId,
      Value<int?>? sectionId,
      Value<String?>? hadithKey,
      Value<int?>? hadithId,
      Value<String?>? narrator,
      Value<String?>? bn,
      Value<String?>? ar,
      Value<String?>? arDiacless,
      Value<String?>? note,
      Value<int?>? gradeId,
      Value<String?>? grade,
      Value<String?>? gradeColor,
      Value<int>? rowid}) {
    return HadithsCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      bookName: bookName ?? this.bookName,
      chapterId: chapterId ?? this.chapterId,
      sectionId: sectionId ?? this.sectionId,
      hadithKey: hadithKey ?? this.hadithKey,
      hadithId: hadithId ?? this.hadithId,
      narrator: narrator ?? this.narrator,
      bn: bn ?? this.bn,
      ar: ar ?? this.ar,
      arDiacless: arDiacless ?? this.arDiacless,
      note: note ?? this.note,
      gradeId: gradeId ?? this.gradeId,
      grade: grade ?? this.grade,
      gradeColor: gradeColor ?? this.gradeColor,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (bookName.present) {
      map['book_name'] = Variable<String>(bookName.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<int>(chapterId.value);
    }
    if (sectionId.present) {
      map['section_id'] = Variable<int>(sectionId.value);
    }
    if (hadithKey.present) {
      map['hadith_key'] = Variable<String>(hadithKey.value);
    }
    if (hadithId.present) {
      map['hadith_id'] = Variable<int>(hadithId.value);
    }
    if (narrator.present) {
      map['narrator'] = Variable<String>(narrator.value);
    }
    if (bn.present) {
      map['bn'] = Variable<String>(bn.value);
    }
    if (ar.present) {
      map['ar'] = Variable<String>(ar.value);
    }
    if (arDiacless.present) {
      map['ar_diacless'] = Variable<String>(arDiacless.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (gradeId.present) {
      map['grade_id'] = Variable<int>(gradeId.value);
    }
    if (grade.present) {
      map['grade'] = Variable<String>(grade.value);
    }
    if (gradeColor.present) {
      map['grade_color'] = Variable<String>(gradeColor.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HadithsCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('bookName: $bookName, ')
          ..write('chapterId: $chapterId, ')
          ..write('sectionId: $sectionId, ')
          ..write('hadithKey: $hadithKey, ')
          ..write('hadithId: $hadithId, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('arDiacless: $arDiacless, ')
          ..write('note: $note, ')
          ..write('gradeId: $gradeId, ')
          ..write('grade: $grade, ')
          ..write('gradeColor: $gradeColor, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $BooksTable books = $BooksTable(this);
  late final $SectionsTable sections = $SectionsTable(this);
  late final $ChaptersTable chapters = $ChaptersTable(this);
  late final $HadithsTable hadiths = $HadithsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [books, sections, chapters, hadiths];
}
