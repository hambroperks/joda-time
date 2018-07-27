//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/ReadableDateTime.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeReadableDateTime")
#ifdef RESTRICT_OrgJodaTimeReadableDateTime
#define INCLUDE_ALL_OrgJodaTimeReadableDateTime 0
#else
#define INCLUDE_ALL_OrgJodaTimeReadableDateTime 1
#endif
#undef RESTRICT_OrgJodaTimeReadableDateTime

#if !defined (OrgJodaTimeReadableDateTime_) && (INCLUDE_ALL_OrgJodaTimeReadableDateTime || defined(INCLUDE_OrgJodaTimeReadableDateTime))
#define OrgJodaTimeReadableDateTime_

#define RESTRICT_OrgJodaTimeReadableInstant 1
#define INCLUDE_OrgJodaTimeReadableInstant 1
#include "org/joda/time/ReadableInstant.h"

@class JavaUtilLocale;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeMutableDateTime;

@protocol OrgJodaTimeReadableDateTime < OrgJodaTimeReadableInstant, JavaObject >

- (jint)getDayOfWeek;

- (jint)getDayOfMonth;

- (jint)getDayOfYear;

- (jint)getWeekOfWeekyear;

- (jint)getWeekyear;

- (jint)getMonthOfYear;

- (jint)getYear;

- (jint)getYearOfEra;

- (jint)getYearOfCentury;

- (jint)getCenturyOfEra;

- (jint)getEra;

- (jint)getMillisOfSecond;

- (jint)getMillisOfDay;

- (jint)getSecondOfMinute;

- (jint)getSecondOfDay;

- (jint)getMinuteOfHour;

- (jint)getMinuteOfDay;

- (jint)getHourOfDay;

- (OrgJodaTimeDateTime *)toDateTime;

- (OrgJodaTimeMutableDateTime *)toMutableDateTime;

- (NSString *)toStringWithNSString:(NSString *)pattern;

- (NSString *)toStringWithNSString:(NSString *)pattern
                withJavaUtilLocale:(JavaUtilLocale *)locale;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeReadableDateTime)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeReadableDateTime)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeReadableDateTime")
