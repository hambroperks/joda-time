//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/convert/CalendarConverter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/util/Calendar.h"
#include "java/util/Date.h"
#include "java/util/GregorianCalendar.h"
#include "java/util/TimeZone.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/chrono/BuddhistChronology.h"
#include "org/joda/time/chrono/GJChronology.h"
#include "org/joda/time/chrono/GregorianChronology.h"
#include "org/joda/time/chrono/ISOChronology.h"
#include "org/joda/time/chrono/JulianChronology.h"
#include "org/joda/time/convert/AbstractConverter.h"
#include "org/joda/time/convert/CalendarConverter.h"

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeConvertCalendarConverter)

OrgJodaTimeConvertCalendarConverter *OrgJodaTimeConvertCalendarConverter_INSTANCE_;

@implementation OrgJodaTimeConvertCalendarConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeConvertCalendarConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                     withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  if (chrono != nil) {
    return chrono;
  }
  JavaUtilCalendar *cal = (JavaUtilCalendar *) check_class_cast(object, [JavaUtilCalendar class]);
  OrgJodaTimeDateTimeZone *zone = nil;
  @try {
    zone = OrgJodaTimeDateTimeZone_forTimeZoneWithJavaUtilTimeZone_([((JavaUtilCalendar *) nil_chk(cal)) getTimeZone]);
  }
  @catch (JavaLangIllegalArgumentException *ex) {
    zone = OrgJodaTimeDateTimeZone_getDefault();
  }
  return [self getChronologyWithId:cal withOrgJodaTimeDateTimeZone:zone];
}

- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                   withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone {
  if ([((NSString *) nil_chk([[nil_chk(object) getClass] getName])) hasSuffix:@".BuddhistCalendar"]) {
    return OrgJodaTimeChronoBuddhistChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
  }
  else if ([object isKindOfClass:[JavaUtilGregorianCalendar class]]) {
    JavaUtilGregorianCalendar *gc = (JavaUtilGregorianCalendar *) check_class_cast(object, [JavaUtilGregorianCalendar class]);
    jlong cutover = [((JavaUtilDate *) nil_chk([gc getGregorianChange])) getTime];
    if (cutover == JavaLangLong_MIN_VALUE) {
      return OrgJodaTimeChronoGregorianChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
    }
    else if (cutover == JavaLangLong_MAX_VALUE) {
      return OrgJodaTimeChronoJulianChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
    }
    else {
      return OrgJodaTimeChronoGJChronology_getInstanceWithOrgJodaTimeDateTimeZone_withLong_withInt_(zone, cutover, 4);
    }
  }
  else {
    return OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(zone);
  }
}

- (jlong)getInstantMillisWithId:(id)object
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono {
  JavaUtilCalendar *calendar = (JavaUtilCalendar *) check_class_cast(object, [JavaUtilCalendar class]);
  return [((JavaUtilDate *) nil_chk([((JavaUtilCalendar *) nil_chk(calendar)) getTime])) getTime];
}

- (IOSClass *)getSupportedType {
  return JavaUtilCalendar_class_();
}

+ (void)initialize {
  if (self == [OrgJodaTimeConvertCalendarConverter class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeConvertCalendarConverter_INSTANCE_, new_OrgJodaTimeConvertCalendarConverter_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeConvertCalendarConverter)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CalendarConverter", NULL, 0x4, NULL, NULL },
    { "getChronologyWithId:withOrgJodaTimeChronology:", "getChronology", "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "getChronologyWithId:withOrgJodaTimeDateTimeZone:", "getChronology", "Lorg.joda.time.Chronology;", 0x1, NULL, NULL },
    { "getInstantMillisWithId:withOrgJodaTimeChronology:", "getInstantMillis", "J", 0x1, NULL, NULL },
    { "getSupportedType", NULL, "Ljava.lang.Class;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x18, "Lorg.joda.time.convert.CalendarConverter;", &OrgJodaTimeConvertCalendarConverter_INSTANCE_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeConvertCalendarConverter = { 2, "CalendarConverter", "org.joda.time.convert", NULL, 0x10, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeConvertCalendarConverter;
}

@end

void OrgJodaTimeConvertCalendarConverter_init(OrgJodaTimeConvertCalendarConverter *self) {
  OrgJodaTimeConvertAbstractConverter_init(self);
}

OrgJodaTimeConvertCalendarConverter *new_OrgJodaTimeConvertCalendarConverter_init() {
  OrgJodaTimeConvertCalendarConverter *self = [OrgJodaTimeConvertCalendarConverter alloc];
  OrgJodaTimeConvertCalendarConverter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeConvertCalendarConverter)
