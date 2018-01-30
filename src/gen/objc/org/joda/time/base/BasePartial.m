//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/BasePartial.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/Locale.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/base/AbstractPartial.h"
#include "org/joda/time/base/BasePartial.h"
#include "org/joda/time/convert/ConverterManager.h"
#include "org/joda/time/convert/PartialConverter.h"
#include "org/joda/time/format/DateTimeFormat.h"
#include "org/joda/time/format/DateTimeFormatter.h"

@interface OrgJodaTimeBaseBasePartial () {
 @public
  /*!
   @brief The chronology in use
   */
  OrgJodaTimeChronology *iChronology_;
  /*!
   @brief The values of each field in this partial
   */
  IOSIntArray *iValues_;
}

@end

J2OBJC_FIELD_SETTER(OrgJodaTimeBaseBasePartial, iChronology_, OrgJodaTimeChronology *)
J2OBJC_FIELD_SETTER(OrgJodaTimeBaseBasePartial, iValues_, IOSIntArray *)

/*!
 @brief Serialization version
 */
inline jlong OrgJodaTimeBaseBasePartial_get_serialVersionUID(void);
#define OrgJodaTimeBaseBasePartial_serialVersionUID 2353678632973660LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeBaseBasePartial, serialVersionUID, jlong)

@implementation OrgJodaTimeBaseBasePartial

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeBaseBasePartial_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeChronology_(self, chronology);
  return self;
}

- (instancetype)initWithLong:(jlong)instant {
  OrgJodaTimeBaseBasePartial_initWithLong_(self, instant);
  return self;
}

- (instancetype)initWithLong:(jlong)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeBaseBasePartial_initWithLong_withOrgJodaTimeChronology_(self, instant, chronology);
  return self;
}

- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeBaseBasePartial_initWithId_withOrgJodaTimeChronology_(self, instant, chronology);
  return self;
}

- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology
withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)parser {
  OrgJodaTimeBaseBasePartial_initWithId_withOrgJodaTimeChronology_withOrgJodaTimeFormatDateTimeFormatter_(self, instant, chronology, parser);
  return self;
}

- (instancetype)initWithIntArray:(IOSIntArray *)values
       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology {
  OrgJodaTimeBaseBasePartial_initWithIntArray_withOrgJodaTimeChronology_(self, values, chronology);
  return self;
}

- (instancetype)initWithOrgJodaTimeBaseBasePartial:(OrgJodaTimeBaseBasePartial *)base
                                      withIntArray:(IOSIntArray *)values {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeBaseBasePartial_withIntArray_(self, base, values);
  return self;
}

- (instancetype)initWithOrgJodaTimeBaseBasePartial:(OrgJodaTimeBaseBasePartial *)base
                         withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeBaseBasePartial_withOrgJodaTimeChronology_(self, base, chrono);
  return self;
}

- (jint)getValueWithInt:(jint)index {
  return IOSIntArray_Get(nil_chk(iValues_), index);
}

- (IOSIntArray *)getValues {
  return [((IOSIntArray *) nil_chk(iValues_)) java_clone];
}

- (OrgJodaTimeChronology *)getChronology {
  return iChronology_;
}

- (void)setValueWithInt:(jint)index
                withInt:(jint)value {
  OrgJodaTimeDateTimeField *field = [self getFieldWithInt:index];
  IOSIntArray *values = [((OrgJodaTimeDateTimeField *) nil_chk(field)) setWithOrgJodaTimeReadablePartial:self withInt:index withIntArray:iValues_ withInt:value];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(values, 0, iValues_, 0, ((IOSIntArray *) nil_chk(iValues_))->size_);
}

- (void)setValuesWithIntArray:(IOSIntArray *)values {
  [((OrgJodaTimeChronology *) nil_chk([self getChronology])) validateWithOrgJodaTimeReadablePartial:self withIntArray:values];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(values, 0, iValues_, 0, ((IOSIntArray *) nil_chk(iValues_))->size_);
}

- (NSString *)toStringWithNSString:(NSString *)pattern {
  if (pattern == nil) {
    return [self description];
  }
  return [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(OrgJodaTimeFormatDateTimeFormat_forPatternWithNSString_(pattern))) printWithOrgJodaTimeReadablePartial:self];
}

- (NSString *)toStringWithNSString:(NSString *)pattern
                withJavaUtilLocale:(JavaUtilLocale *)locale {
  if (pattern == nil) {
    return [self description];
  }
  return [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk([((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(OrgJodaTimeFormatDateTimeFormat_forPatternWithNSString_(pattern))) withLocaleWithJavaUtilLocale:locale])) printWithOrgJodaTimeReadablePartial:self];
}

- (void)dealloc {
  RELEASE_(iChronology_);
  RELEASE_(iValues_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 5, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 6, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 12, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, 16, 17, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgJodaTimeChronology:);
  methods[2].selector = @selector(initWithLong:);
  methods[3].selector = @selector(initWithLong:withOrgJodaTimeChronology:);
  methods[4].selector = @selector(initWithId:withOrgJodaTimeChronology:);
  methods[5].selector = @selector(initWithId:withOrgJodaTimeChronology:withOrgJodaTimeFormatDateTimeFormatter:);
  methods[6].selector = @selector(initWithIntArray:withOrgJodaTimeChronology:);
  methods[7].selector = @selector(initWithOrgJodaTimeBaseBasePartial:withIntArray:);
  methods[8].selector = @selector(initWithOrgJodaTimeBaseBasePartial:withOrgJodaTimeChronology:);
  methods[9].selector = @selector(getValueWithInt:);
  methods[10].selector = @selector(getValues);
  methods[11].selector = @selector(getChronology);
  methods[12].selector = @selector(setValueWithInt:withInt:);
  methods[13].selector = @selector(setValuesWithIntArray:);
  methods[14].selector = @selector(toStringWithNSString:);
  methods[15].selector = @selector(toStringWithNSString:withJavaUtilLocale:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeBaseBasePartial_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iChronology_", "LOrgJodaTimeChronology;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "iValues_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJodaTimeChronology;", "J", "JLOrgJodaTimeChronology;", "LNSObject;LOrgJodaTimeChronology;", "LNSObject;LOrgJodaTimeChronology;LOrgJodaTimeFormatDateTimeFormatter;", "[ILOrgJodaTimeChronology;", "LOrgJodaTimeBaseBasePartial;[I", "LOrgJodaTimeBaseBasePartial;LOrgJodaTimeChronology;", "getValue", "I", "setValue", "II", "setValues", "[I", "toString", "LNSString;", "LNSString;LJavaUtilLocale;", "LJavaLangIllegalArgumentException;" };
  static const J2ObjcClassInfo _OrgJodaTimeBaseBasePartial = { "BasePartial", "org.joda.time.base", ptrTable, methods, fields, 7, 0x401, 16, 3, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeBaseBasePartial;
}

@end

void OrgJodaTimeBaseBasePartial_init(OrgJodaTimeBaseBasePartial *self) {
  OrgJodaTimeBaseBasePartial_initWithLong_withOrgJodaTimeChronology_(self, OrgJodaTimeDateTimeUtils_currentTimeMillis(), nil);
}

void OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeChronology_(OrgJodaTimeBaseBasePartial *self, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseBasePartial_initWithLong_withOrgJodaTimeChronology_(self, OrgJodaTimeDateTimeUtils_currentTimeMillis(), chronology);
}

void OrgJodaTimeBaseBasePartial_initWithLong_(OrgJodaTimeBaseBasePartial *self, jlong instant) {
  OrgJodaTimeBaseBasePartial_initWithLong_withOrgJodaTimeChronology_(self, instant, nil);
}

void OrgJodaTimeBaseBasePartial_initWithLong_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePartial *self, jlong instant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseAbstractPartial_init(self);
  chronology = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chronology);
  JreStrongAssign(&self->iChronology_, [((OrgJodaTimeChronology *) nil_chk(chronology)) withUTC]);
  JreStrongAssign(&self->iValues_, [chronology getWithOrgJodaTimeReadablePartial:self withLong:instant]);
}

void OrgJodaTimeBaseBasePartial_initWithId_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePartial *self, id instant, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseAbstractPartial_init(self);
  id<OrgJodaTimeConvertPartialConverter> converter = [((OrgJodaTimeConvertConverterManager *) nil_chk(OrgJodaTimeConvertConverterManager_getInstance())) getPartialConverterWithId:instant];
  chronology = [((id<OrgJodaTimeConvertPartialConverter>) nil_chk(converter)) getChronologyWithId:instant withOrgJodaTimeChronology:chronology];
  chronology = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chronology);
  JreStrongAssign(&self->iChronology_, [((OrgJodaTimeChronology *) nil_chk(chronology)) withUTC]);
  JreStrongAssign(&self->iValues_, [converter getPartialValuesWithOrgJodaTimeReadablePartial:self withId:instant withOrgJodaTimeChronology:chronology]);
}

void OrgJodaTimeBaseBasePartial_initWithId_withOrgJodaTimeChronology_withOrgJodaTimeFormatDateTimeFormatter_(OrgJodaTimeBaseBasePartial *self, id instant, OrgJodaTimeChronology *chronology, OrgJodaTimeFormatDateTimeFormatter *parser) {
  OrgJodaTimeBaseAbstractPartial_init(self);
  id<OrgJodaTimeConvertPartialConverter> converter = [((OrgJodaTimeConvertConverterManager *) nil_chk(OrgJodaTimeConvertConverterManager_getInstance())) getPartialConverterWithId:instant];
  chronology = [((id<OrgJodaTimeConvertPartialConverter>) nil_chk(converter)) getChronologyWithId:instant withOrgJodaTimeChronology:chronology];
  chronology = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chronology);
  JreStrongAssign(&self->iChronology_, [((OrgJodaTimeChronology *) nil_chk(chronology)) withUTC]);
  JreStrongAssign(&self->iValues_, [converter getPartialValuesWithOrgJodaTimeReadablePartial:self withId:instant withOrgJodaTimeChronology:chronology withOrgJodaTimeFormatDateTimeFormatter:parser]);
}

void OrgJodaTimeBaseBasePartial_initWithIntArray_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePartial *self, IOSIntArray *values, OrgJodaTimeChronology *chronology) {
  OrgJodaTimeBaseAbstractPartial_init(self);
  chronology = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_(chronology);
  JreStrongAssign(&self->iChronology_, [((OrgJodaTimeChronology *) nil_chk(chronology)) withUTC]);
  [chronology validateWithOrgJodaTimeReadablePartial:self withIntArray:values];
  JreStrongAssign(&self->iValues_, values);
}

void OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeBaseBasePartial_withIntArray_(OrgJodaTimeBaseBasePartial *self, OrgJodaTimeBaseBasePartial *base, IOSIntArray *values) {
  OrgJodaTimeBaseAbstractPartial_init(self);
  JreStrongAssign(&self->iChronology_, ((OrgJodaTimeBaseBasePartial *) nil_chk(base))->iChronology_);
  JreStrongAssign(&self->iValues_, values);
}

void OrgJodaTimeBaseBasePartial_initWithOrgJodaTimeBaseBasePartial_withOrgJodaTimeChronology_(OrgJodaTimeBaseBasePartial *self, OrgJodaTimeBaseBasePartial *base, OrgJodaTimeChronology *chrono) {
  OrgJodaTimeBaseAbstractPartial_init(self);
  JreStrongAssign(&self->iChronology_, [((OrgJodaTimeChronology *) nil_chk(chrono)) withUTC]);
  JreStrongAssign(&self->iValues_, ((OrgJodaTimeBaseBasePartial *) nil_chk(base))->iValues_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseBasePartial)
