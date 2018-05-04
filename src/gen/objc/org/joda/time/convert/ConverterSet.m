//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/convert/ConverterSet.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "org/joda/time/convert/Converter.h"
#include "org/joda/time/convert/ConverterSet.h"

@interface OrgJodaTimeConvertConverterSet () {
 @public
  IOSObjectArray *iConverters_;
  IOSObjectArray *iSelectEntries_;
}

+ (id<OrgJodaTimeConvertConverter>)selectSlowWithOrgJodaTimeConvertConverterSet:(OrgJodaTimeConvertConverterSet *)set
                                                                   withIOSClass:(IOSClass *)type;

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeConvertConverterSet, iConverters_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgJodaTimeConvertConverterSet, iSelectEntries_, IOSObjectArray *)

__attribute__((unused)) static id<OrgJodaTimeConvertConverter> OrgJodaTimeConvertConverterSet_selectSlowWithOrgJodaTimeConvertConverterSet_withIOSClass_(OrgJodaTimeConvertConverterSet *set, IOSClass *type);

@implementation OrgJodaTimeConvertConverterSet

- (instancetype)initWithOrgJodaTimeConvertConverterArray:(IOSObjectArray *)converters {
  OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(self, converters);
  return self;
}

- (id<OrgJodaTimeConvertConverter>)selectWithIOSClass:(IOSClass *)type {
  IOSObjectArray *entries = iSelectEntries_;
  jint length = ((IOSObjectArray *) nil_chk(entries))->size_;
  jint index = type == nil ? 0 : ((jint) [type hash]) & (length - 1);
  OrgJodaTimeConvertConverterSet_Entry *e;
  while ((e = IOSObjectArray_Get(entries, index)) != nil) {
    if (((OrgJodaTimeConvertConverterSet_Entry *) nil_chk(e))->iType_ == type) {
      return e->iConverter_;
    }
    if (++index >= length) {
      index = 0;
    }
  }
  id<OrgJodaTimeConvertConverter> converter = OrgJodaTimeConvertConverterSet_selectSlowWithOrgJodaTimeConvertConverterSet_withIOSClass_(self, type);
  e = create_OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(type, converter);
  entries = [entries java_clone];
  IOSObjectArray_Set(nil_chk(entries), index, e);
  for (jint i = 0; i < length; i++) {
    if (IOSObjectArray_Get(entries, i) == nil) {
      JreStrongAssign(&iSelectEntries_, entries);
      return converter;
    }
  }
  jint newLength = JreLShift32(length, 1);
  IOSObjectArray *newEntries = [IOSObjectArray arrayWithLength:newLength type:OrgJodaTimeConvertConverterSet_Entry_class_()];
  for (jint i = 0; i < length; i++) {
    e = IOSObjectArray_Get(entries, i);
    type = ((OrgJodaTimeConvertConverterSet_Entry *) nil_chk(e))->iType_;
    index = type == nil ? 0 : ((jint) [type hash]) & (newLength - 1);
    while (IOSObjectArray_Get(newEntries, index) != nil) {
      if (++index >= newLength) {
        index = 0;
      }
    }
    IOSObjectArray_Set(newEntries, index, e);
  }
  JreStrongAssign(&iSelectEntries_, newEntries);
  return converter;
}

- (jint)size {
  return ((IOSObjectArray *) nil_chk(iConverters_))->size_;
}

- (void)copyIntoWithOrgJodaTimeConvertConverterArray:(IOSObjectArray *)converters {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(iConverters_, 0, converters, 0, ((IOSObjectArray *) nil_chk(iConverters_))->size_);
}

- (OrgJodaTimeConvertConverterSet *)addWithOrgJodaTimeConvertConverter:(id<OrgJodaTimeConvertConverter>)converter
                                  withOrgJodaTimeConvertConverterArray:(IOSObjectArray *)removed {
  IOSObjectArray *converters = iConverters_;
  jint length = ((IOSObjectArray *) nil_chk(converters))->size_;
  for (jint i = 0; i < length; i++) {
    id<OrgJodaTimeConvertConverter> existing = IOSObjectArray_Get(converters, i);
    if ([((id<OrgJodaTimeConvertConverter>) nil_chk(converter)) isEqual:existing]) {
      if (removed != nil) {
        IOSObjectArray_Set(removed, 0, nil);
      }
      return self;
    }
    if ([converter getSupportedType] == [((id<OrgJodaTimeConvertConverter>) nil_chk(existing)) getSupportedType]) {
      IOSObjectArray *copy_ = [IOSObjectArray arrayWithLength:length type:OrgJodaTimeConvertConverter_class_()];
      for (jint j = 0; j < length; j++) {
        if (j != i) {
          IOSObjectArray_Set(copy_, j, IOSObjectArray_Get(converters, j));
        }
        else {
          IOSObjectArray_Set(copy_, j, converter);
        }
      }
      if (removed != nil) {
        IOSObjectArray_Set(removed, 0, existing);
      }
      return create_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(copy_);
    }
  }
  IOSObjectArray *copy_ = [IOSObjectArray arrayWithLength:length + 1 type:OrgJodaTimeConvertConverter_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(converters, 0, copy_, 0, length);
  IOSObjectArray_Set(copy_, length, converter);
  if (removed != nil) {
    IOSObjectArray_Set(removed, 0, nil);
  }
  return create_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(copy_);
}

- (OrgJodaTimeConvertConverterSet *)removeWithOrgJodaTimeConvertConverter:(id<OrgJodaTimeConvertConverter>)converter
                                     withOrgJodaTimeConvertConverterArray:(IOSObjectArray *)removed {
  IOSObjectArray *converters = iConverters_;
  jint length = ((IOSObjectArray *) nil_chk(converters))->size_;
  for (jint i = 0; i < length; i++) {
    if ([((id<OrgJodaTimeConvertConverter>) nil_chk(converter)) isEqual:IOSObjectArray_Get(converters, i)]) {
      return [self removeWithInt:i withOrgJodaTimeConvertConverterArray:removed];
    }
  }
  if (removed != nil) {
    IOSObjectArray_Set(removed, 0, nil);
  }
  return self;
}

- (OrgJodaTimeConvertConverterSet *)removeWithInt:(jint)index
             withOrgJodaTimeConvertConverterArray:(IOSObjectArray *)removed {
  IOSObjectArray *converters = iConverters_;
  jint length = ((IOSObjectArray *) nil_chk(converters))->size_;
  if (index >= length) {
    @throw create_JavaLangIndexOutOfBoundsException_init();
  }
  if (removed != nil) {
    IOSObjectArray_Set(removed, 0, IOSObjectArray_Get(converters, index));
  }
  IOSObjectArray *copy_ = [IOSObjectArray arrayWithLength:length - 1 type:OrgJodaTimeConvertConverter_class_()];
  jint j = 0;
  for (jint i = 0; i < length; i++) {
    if (i != index) {
      IOSObjectArray_Set(copy_, j++, IOSObjectArray_Get(converters, i));
    }
  }
  return create_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(copy_);
}

+ (id<OrgJodaTimeConvertConverter>)selectSlowWithOrgJodaTimeConvertConverterSet:(OrgJodaTimeConvertConverterSet *)set
                                                                   withIOSClass:(IOSClass *)type {
  return OrgJodaTimeConvertConverterSet_selectSlowWithOrgJodaTimeConvertConverterSet_withIOSClass_(set, type);
}

- (void)dealloc {
  RELEASE_(iConverters_);
  RELEASE_(iSelectEntries_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeConvertConverter;", 0x0, 1, 2, 3, 4, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 5, 0, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeConvertConverterSet;", 0x0, 6, 7, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeConvertConverterSet;", 0x0, 8, 7, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeConvertConverterSet;", 0x0, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeConvertConverter;", 0xa, 10, 11, -1, 12, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgJodaTimeConvertConverterArray:);
  methods[1].selector = @selector(selectWithIOSClass:);
  methods[2].selector = @selector(size);
  methods[3].selector = @selector(copyIntoWithOrgJodaTimeConvertConverterArray:);
  methods[4].selector = @selector(addWithOrgJodaTimeConvertConverter:withOrgJodaTimeConvertConverterArray:);
  methods[5].selector = @selector(removeWithOrgJodaTimeConvertConverter:withOrgJodaTimeConvertConverterArray:);
  methods[6].selector = @selector(removeWithInt:withOrgJodaTimeConvertConverterArray:);
  methods[7].selector = @selector(selectSlowWithOrgJodaTimeConvertConverterSet:withIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iConverters_", "[LOrgJodaTimeConvertConverter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iSelectEntries_", "[LOrgJodaTimeConvertConverterSet_Entry;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LOrgJodaTimeConvertConverter;", "select", "LIOSClass;", "LJavaLangIllegalStateException;", "(Ljava/lang/Class<*>;)Lorg/joda/time/convert/Converter;", "copyInto", "add", "LOrgJodaTimeConvertConverter;[LOrgJodaTimeConvertConverter;", "remove", "I[LOrgJodaTimeConvertConverter;", "selectSlow", "LOrgJodaTimeConvertConverterSet;LIOSClass;", "(Lorg/joda/time/convert/ConverterSet;Ljava/lang/Class<*>;)Lorg/joda/time/convert/Converter;", "LOrgJodaTimeConvertConverterSet_Entry;" };
  static const J2ObjcClassInfo _OrgJodaTimeConvertConverterSet = { "ConverterSet", "org.joda.time.convert", ptrTable, methods, fields, 7, 0x0, 8, 2, -1, 13, -1, -1, -1 };
  return &_OrgJodaTimeConvertConverterSet;
}

@end

void OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(OrgJodaTimeConvertConverterSet *self, IOSObjectArray *converters) {
  NSObject_init(self);
  JreStrongAssign(&self->iConverters_, converters);
  JreStrongAssignAndConsume(&self->iSelectEntries_, [IOSObjectArray newArrayWithLength:JreLShift32(1, 4) type:OrgJodaTimeConvertConverterSet_Entry_class_()]);
}

OrgJodaTimeConvertConverterSet *new_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(IOSObjectArray *converters) {
  J2OBJC_NEW_IMPL(OrgJodaTimeConvertConverterSet, initWithOrgJodaTimeConvertConverterArray_, converters)
}

OrgJodaTimeConvertConverterSet *create_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(IOSObjectArray *converters) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeConvertConverterSet, initWithOrgJodaTimeConvertConverterArray_, converters)
}

id<OrgJodaTimeConvertConverter> OrgJodaTimeConvertConverterSet_selectSlowWithOrgJodaTimeConvertConverterSet_withIOSClass_(OrgJodaTimeConvertConverterSet *set, IOSClass *type) {
  OrgJodaTimeConvertConverterSet_initialize();
  IOSObjectArray *converters = ((OrgJodaTimeConvertConverterSet *) nil_chk(set))->iConverters_;
  jint length = ((IOSObjectArray *) nil_chk(converters))->size_;
  id<OrgJodaTimeConvertConverter> converter;
  for (jint i = length; --i >= 0; ) {
    converter = IOSObjectArray_Get(converters, i);
    IOSClass *supportedType = [((id<OrgJodaTimeConvertConverter>) nil_chk(converter)) getSupportedType];
    if (supportedType == type) {
      return converter;
    }
    if (supportedType == nil || (type != nil && ![supportedType isAssignableFrom:type])) {
      set = [set removeWithInt:i withOrgJodaTimeConvertConverterArray:nil];
      converters = ((OrgJodaTimeConvertConverterSet *) nil_chk(set))->iConverters_;
      length = ((IOSObjectArray *) nil_chk(converters))->size_;
    }
  }
  if (type == nil || length == 0) {
    return nil;
  }
  if (length == 1) {
    return IOSObjectArray_Get(converters, 0);
  }
  for (jint i = length; --i >= 0; ) {
    converter = IOSObjectArray_Get(converters, i);
    IOSClass *supportedType = [((id<OrgJodaTimeConvertConverter>) nil_chk(converter)) getSupportedType];
    for (jint j = length; --j >= 0; ) {
      if (j != i && [((IOSClass *) nil_chk([((id<OrgJodaTimeConvertConverter>) nil_chk(IOSObjectArray_Get(converters, j))) getSupportedType])) isAssignableFrom:supportedType]) {
        set = [set removeWithInt:j withOrgJodaTimeConvertConverterArray:nil];
        converters = ((OrgJodaTimeConvertConverterSet *) nil_chk(set))->iConverters_;
        length = ((IOSObjectArray *) nil_chk(converters))->size_;
        i = length - 1;
      }
    }
  }
  if (length == 1) {
    return IOSObjectArray_Get(converters, 0);
  }
  JavaLangStringBuilder *msg = create_JavaLangStringBuilder_init();
  [msg appendWithNSString:@"Unable to find best converter for type \""];
  [msg appendWithNSString:[type getName]];
  [msg appendWithNSString:@"\" from remaining set: "];
  for (jint i = 0; i < length; i++) {
    converter = IOSObjectArray_Get(converters, i);
    IOSClass *supportedType = [((id<OrgJodaTimeConvertConverter>) nil_chk(converter)) getSupportedType];
    [msg appendWithNSString:[[converter java_getClass] getName]];
    [msg appendWithChar:'['];
    [msg appendWithNSString:supportedType == nil ? nil : [supportedType getName]];
    [msg appendWithNSString:@"], "];
  }
  @throw create_JavaLangIllegalStateException_initWithNSString_([msg description]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeConvertConverterSet)

@implementation OrgJodaTimeConvertConverterSet_Entry

- (instancetype)initWithIOSClass:(IOSClass *)type
 withOrgJodaTimeConvertConverter:(id<OrgJodaTimeConvertConverter>)converter {
  OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(self, type, converter);
  return self;
}

- (void)dealloc {
  RELEASE_(iType_);
  RELEASE_(iConverter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithIOSClass:withOrgJodaTimeConvertConverter:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iType_", "LIOSClass;", .constantValue.asLong = 0, 0x10, -1, -1, 2, -1 },
    { "iConverter_", "LOrgJodaTimeConvertConverter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LIOSClass;LOrgJodaTimeConvertConverter;", "(Ljava/lang/Class<*>;Lorg/joda/time/convert/Converter;)V", "Ljava/lang/Class<*>;", "LOrgJodaTimeConvertConverterSet;" };
  static const J2ObjcClassInfo _OrgJodaTimeConvertConverterSet_Entry = { "Entry", "org.joda.time.convert", ptrTable, methods, fields, 7, 0x8, 1, 2, 3, -1, -1, -1, -1 };
  return &_OrgJodaTimeConvertConverterSet_Entry;
}

@end

void OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(OrgJodaTimeConvertConverterSet_Entry *self, IOSClass *type, id<OrgJodaTimeConvertConverter> converter) {
  NSObject_init(self);
  JreStrongAssign(&self->iType_, type);
  JreStrongAssign(&self->iConverter_, converter);
}

OrgJodaTimeConvertConverterSet_Entry *new_OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(IOSClass *type, id<OrgJodaTimeConvertConverter> converter) {
  J2OBJC_NEW_IMPL(OrgJodaTimeConvertConverterSet_Entry, initWithIOSClass_withOrgJodaTimeConvertConverter_, type, converter)
}

OrgJodaTimeConvertConverterSet_Entry *create_OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(IOSClass *type, id<OrgJodaTimeConvertConverter> converter) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeConvertConverterSet_Entry, initWithIOSClass_withOrgJodaTimeConvertConverter_, type, converter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeConvertConverterSet_Entry)
