//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/convert/PartialConverter.java
//

#include "Chronology.h"
#include "DateTimeFormatter.h"
#include "DateTimeZone.h"
#include "IOSPrimitiveArray.h"
#include "PartialConverter.h"
#include "ReadablePartial.h"

@interface OrgJodaTimeConvertPartialConverter : NSObject
@end

@implementation OrgJodaTimeConvertPartialConverter

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getChronologyWithId:withOrgJodaTimeDateTimeZone:", "getChronology", "Lorg.joda.time.Chronology;", 0x401, NULL },
    { "getChronologyWithId:withOrgJodaTimeChronology:", "getChronology", "Lorg.joda.time.Chronology;", 0x401, NULL },
    { "getPartialValuesWithOrgJodaTimeReadablePartial:withId:withOrgJodaTimeChronology:", "getPartialValues", "[I", 0x401, NULL },
    { "getPartialValuesWithOrgJodaTimeReadablePartial:withId:withOrgJodaTimeChronology:withOrgJodaTimeFormatDateTimeFormatter:", "getPartialValues", "[I", 0x401, NULL },
  };
  static J2ObjcClassInfo _OrgJodaTimeConvertPartialConverter = { "PartialConverter", "org.joda.time.convert", NULL, 0x201, 4, methods, 0, NULL, 0, NULL};
  return &_OrgJodaTimeConvertPartialConverter;
}

@end
