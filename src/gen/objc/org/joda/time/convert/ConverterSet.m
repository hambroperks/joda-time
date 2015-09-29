//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/convert/ConverterSet.java
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

/*!
 @brief Returns the closest matching converter for the given type, but not very
 efficiently.
 */
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
  e = [new_OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(type, converter) autorelease];
  entries = (IOSObjectArray *) check_class_cast([entries clone], [IOSObjectArray class]);
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
      return [new_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(copy_) autorelease];
    }
  }
  IOSObjectArray *copy_ = [IOSObjectArray arrayWithLength:length + 1 type:OrgJodaTimeConvertConverter_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(converters, 0, copy_, 0, length);
  IOSObjectArray_Set(copy_, length, converter);
  if (removed != nil) {
    IOSObjectArray_Set(removed, 0, nil);
  }
  return [new_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(copy_) autorelease];
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
    @throw [new_JavaLangIndexOutOfBoundsException_init() autorelease];
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
  return [new_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(copy_) autorelease];
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
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeConvertConverterArray:", "ConverterSet", NULL, 0x0, NULL, NULL },
    { "selectWithIOSClass:", "select", "Lorg.joda.time.convert.Converter;", 0x0, "Ljava.lang.IllegalStateException;", NULL },
    { "size", NULL, "I", 0x0, NULL, NULL },
    { "copyIntoWithOrgJodaTimeConvertConverterArray:", "copyInto", "V", 0x0, NULL, NULL },
    { "addWithOrgJodaTimeConvertConverter:withOrgJodaTimeConvertConverterArray:", "add", "Lorg.joda.time.convert.ConverterSet;", 0x0, NULL, NULL },
    { "removeWithOrgJodaTimeConvertConverter:withOrgJodaTimeConvertConverterArray:", "remove", "Lorg.joda.time.convert.ConverterSet;", 0x0, NULL, NULL },
    { "removeWithInt:withOrgJodaTimeConvertConverterArray:", "remove", "Lorg.joda.time.convert.ConverterSet;", 0x0, NULL, NULL },
    { "selectSlowWithOrgJodaTimeConvertConverterSet:withIOSClass:", "selectSlow", "Lorg.joda.time.convert.Converter;", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "iConverters_", NULL, 0x12, "[Lorg.joda.time.convert.Converter;", NULL, NULL, .constantValue.asLong = 0 },
    { "iSelectEntries_", NULL, 0x2, "[Lorg.joda.time.convert.ConverterSet$Entry;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.joda.time.convert.ConverterSet$Entry;"};
  static const J2ObjcClassInfo _OrgJodaTimeConvertConverterSet = { 2, "ConverterSet", "org.joda.time.convert", NULL, 0x0, 8, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgJodaTimeConvertConverterSet;
}

@end

void OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(OrgJodaTimeConvertConverterSet *self, IOSObjectArray *converters) {
  NSObject_init(self);
  JreStrongAssign(&self->iConverters_, converters);
  JreStrongAssignAndConsume(&self->iSelectEntries_, [IOSObjectArray newArrayWithLength:JreLShift32(1, 4) type:OrgJodaTimeConvertConverterSet_Entry_class_()]);
}

OrgJodaTimeConvertConverterSet *new_OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(IOSObjectArray *converters) {
  OrgJodaTimeConvertConverterSet *self = [OrgJodaTimeConvertConverterSet alloc];
  OrgJodaTimeConvertConverterSet_initWithOrgJodaTimeConvertConverterArray_(self, converters);
  return self;
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
    return IOSObjectArray_Get(nil_chk(converters), 0);
  }
  for (jint i = length; --i >= 0; ) {
    converter = IOSObjectArray_Get(nil_chk(converters), i);
    IOSClass *supportedType = [((id<OrgJodaTimeConvertConverter>) nil_chk(converter)) getSupportedType];
    for (jint j = length; --j >= 0; ) {
      if (j != i && [((IOSClass *) nil_chk([((id<OrgJodaTimeConvertConverter>) nil_chk(IOSObjectArray_Get(converters, j))) getSupportedType])) isAssignableFrom:supportedType]) {
        set = [((OrgJodaTimeConvertConverterSet *) nil_chk(set)) removeWithInt:j withOrgJodaTimeConvertConverterArray:nil];
        converters = ((OrgJodaTimeConvertConverterSet *) nil_chk(set))->iConverters_;
        length = ((IOSObjectArray *) nil_chk(converters))->size_;
        i = length - 1;
      }
    }
  }
  if (length == 1) {
    return IOSObjectArray_Get(nil_chk(converters), 0);
  }
  JavaLangStringBuilder *msg = [new_JavaLangStringBuilder_init() autorelease];
  [msg appendWithNSString:@"Unable to find best converter for type \""];
  [msg appendWithNSString:[((IOSClass *) nil_chk(type)) getName]];
  [msg appendWithNSString:@"\" from remaining set: "];
  for (jint i = 0; i < length; i++) {
    converter = IOSObjectArray_Get(nil_chk(converters), i);
    IOSClass *supportedType = [((id<OrgJodaTimeConvertConverter>) nil_chk(converter)) getSupportedType];
    [msg appendWithNSString:[[converter getClass] getName]];
    [msg appendWithChar:'['];
    [msg appendWithNSString:supportedType == nil ? nil : [supportedType getName]];
    [msg appendWithNSString:@"], "];
  }
  @throw [new_JavaLangIllegalStateException_initWithNSString_([msg description]) autorelease];
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
  static const J2ObjcMethodInfo methods[] = {
    { "initWithIOSClass:withOrgJodaTimeConvertConverter:", "Entry", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "iType_", NULL, 0x10, "Ljava.lang.Class;", NULL, "Ljava/lang/Class<*>;", .constantValue.asLong = 0 },
    { "iConverter_", NULL, 0x10, "Lorg.joda.time.convert.Converter;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeConvertConverterSet_Entry = { 2, "Entry", "org.joda.time.convert", "ConverterSet", 0x8, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeConvertConverterSet_Entry;
}

@end

void OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(OrgJodaTimeConvertConverterSet_Entry *self, IOSClass *type, id<OrgJodaTimeConvertConverter> converter) {
  NSObject_init(self);
  JreStrongAssign(&self->iType_, type);
  JreStrongAssign(&self->iConverter_, converter);
}

OrgJodaTimeConvertConverterSet_Entry *new_OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(IOSClass *type, id<OrgJodaTimeConvertConverter> converter) {
  OrgJodaTimeConvertConverterSet_Entry *self = [OrgJodaTimeConvertConverterSet_Entry alloc];
  OrgJodaTimeConvertConverterSet_Entry_initWithIOSClass_withOrgJodaTimeConvertConverter_(self, type, converter);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeConvertConverterSet_Entry)
