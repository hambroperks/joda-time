//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/convert/ReadablePartialConverter.java
//

#include "Chronology.h"
#include "DateTimeFieldType.h"
#include "DateTimeUtils.h"
#include "DateTimeZone.h"
#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "ReadablePartial.h"
#include "ReadablePartialConverter.h"

BOOL OrgJodaTimeConvertReadablePartialConverter_initialized = NO;

@implementation OrgJodaTimeConvertReadablePartialConverter

OrgJodaTimeConvertReadablePartialConverter * OrgJodaTimeConvertReadablePartialConverter_INSTANCE_;

- (instancetype)init {
  return [super init];
}

- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                   withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  return [((OrgJodaTimeChronology *) nil_chk([self getChronologyWithId:object withOrgJodaTimeChronology:(OrgJodaTimeChronology *) check_class_cast(nil, [OrgJodaTimeChronology class])])) withZoneWithOrgJodaTimeDateTimeZone:zone];
}

- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                     withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  if (chrono == nil) {
    chrono = [((id<OrgJodaTimeReadablePartial>) nil_chk(((id<OrgJodaTimeReadablePartial>) check_protocol_cast(object, @protocol(OrgJodaTimeReadablePartial))))) getChronology];
    chrono = [OrgJodaTimeDateTimeUtils getChronologyWithOrgJodaTimeChronology:chrono];
  }
  return chrono;
}

- (IOSIntArray *)getPartialValuesWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)fieldSource
                                                         withId:(id)object
                                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  id<OrgJodaTimeReadablePartial> input = (id<OrgJodaTimeReadablePartial>) check_protocol_cast(object, @protocol(OrgJodaTimeReadablePartial));
  int size = [((id<OrgJodaTimeReadablePartial>) nil_chk(fieldSource)) size];
  IOSIntArray *values = [IOSIntArray arrayWithLength:size];
  for (int i = 0; i < size; i++) {
    (*IOSIntArray_GetRef(values, i)) = [((id<OrgJodaTimeReadablePartial>) nil_chk(input)) getWithOrgJodaTimeDateTimeFieldType:[fieldSource getFieldTypeWithInt:i]];
  }
  [((OrgJodaTimeChronology *) nil_chk(chrono)) validateWithOrgJodaTimeReadablePartial:fieldSource withIntArray:values];
  return values;
}

- (IOSClass *)getSupportedType {
  return [IOSClass classWithProtocol:@protocol(OrgJodaTimeReadablePartial)];
}

+ (void)initialize {
  if (self == [OrgJodaTimeConvertReadablePartialConverter class]) {
    OrgJodaTimeConvertReadablePartialConverter_INSTANCE_ = [[OrgJodaTimeConvertReadablePartialConverter alloc] init];
    OrgJodaTimeConvertReadablePartialConverter_initialized = YES;
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "ReadablePartialConverter", NULL, 0x4, NULL },
    { "getChronologyWithId:withOrgJodaTimeDateTimeZone:", "getChronology", "Lorg.joda.time.Chronology;", 0x1, NULL },
    { "getChronologyWithId:withOrgJodaTimeChronology:", "getChronology", "Lorg.joda.time.Chronology;", 0x1, NULL },
    { "getPartialValuesWithOrgJodaTimeReadablePartial:withId:withOrgJodaTimeChronology:", "getPartialValues", "[I", 0x1, NULL },
    { "getSupportedType", NULL, "Ljava.lang.Class;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x18, "Lorg.joda.time.convert.ReadablePartialConverter;", &OrgJodaTimeConvertReadablePartialConverter_INSTANCE_,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeConvertReadablePartialConverter = { "ReadablePartialConverter", "org.joda.time.convert", NULL, 0x0, 5, methods, 1, fields, 0, NULL};
  return &_OrgJodaTimeConvertReadablePartialConverter;
}

@end
