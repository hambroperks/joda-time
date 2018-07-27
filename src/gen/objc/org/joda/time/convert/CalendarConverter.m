//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/convert/CalendarConverter.java
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

OrgJodaTimeConvertCalendarConverter *OrgJodaTimeConvertCalendarConverter_INSTANCE;

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
  JavaUtilCalendar *cal = (JavaUtilCalendar *) cast_chk(object, [JavaUtilCalendar class]);
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
    JavaUtilGregorianCalendar *gc = (JavaUtilGregorianCalendar *) cast_chk(object, [JavaUtilGregorianCalendar class]);
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
  JavaUtilCalendar *calendar = (JavaUtilCalendar *) cast_chk(object, [JavaUtilCalendar class]);
  return [((JavaUtilDate *) nil_chk([((JavaUtilCalendar *) nil_chk(calendar)) getTime])) getTime];
}

- (IOSClass *)getSupportedType {
  return JavaUtilCalendar_class_();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeChronology;", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x1, -1, -1, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getChronologyWithId:withOrgJodaTimeChronology:);
  methods[2].selector = @selector(getChronologyWithId:withOrgJodaTimeDateTimeZone:);
  methods[3].selector = @selector(getInstantMillisWithId:withOrgJodaTimeChronology:);
  methods[4].selector = @selector(getSupportedType);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LOrgJodaTimeConvertCalendarConverter;", .constantValue.asLong = 0, 0x18, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "getChronology", "LNSObject;LOrgJodaTimeChronology;", "LNSObject;LOrgJodaTimeDateTimeZone;", "getInstantMillis", "()Ljava/lang/Class<*>;", &OrgJodaTimeConvertCalendarConverter_INSTANCE };
  static const J2ObjcClassInfo _OrgJodaTimeConvertCalendarConverter = { "CalendarConverter", "org.joda.time.convert", ptrTable, methods, fields, 7, 0x10, 5, 1, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeConvertCalendarConverter;
}

+ (void)initialize {
  if (self == [OrgJodaTimeConvertCalendarConverter class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeConvertCalendarConverter_INSTANCE, new_OrgJodaTimeConvertCalendarConverter_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeConvertCalendarConverter)
  }
}

@end

void OrgJodaTimeConvertCalendarConverter_init(OrgJodaTimeConvertCalendarConverter *self) {
  OrgJodaTimeConvertAbstractConverter_init(self);
}

OrgJodaTimeConvertCalendarConverter *new_OrgJodaTimeConvertCalendarConverter_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeConvertCalendarConverter, init)
}

OrgJodaTimeConvertCalendarConverter *create_OrgJodaTimeConvertCalendarConverter_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeConvertCalendarConverter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeConvertCalendarConverter)
