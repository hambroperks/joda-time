//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/format/ISODateTimeFormat.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFormatISODateTimeFormat")
#ifdef RESTRICT_OrgJodaTimeFormatISODateTimeFormat
#define INCLUDE_ALL_OrgJodaTimeFormatISODateTimeFormat 0
#else
#define INCLUDE_ALL_OrgJodaTimeFormatISODateTimeFormat 1
#endif
#undef RESTRICT_OrgJodaTimeFormatISODateTimeFormat

#if !defined (OrgJodaTimeFormatISODateTimeFormat_) && (INCLUDE_ALL_OrgJodaTimeFormatISODateTimeFormat || defined(INCLUDE_OrgJodaTimeFormatISODateTimeFormat))
#define OrgJodaTimeFormatISODateTimeFormat_

@class OrgJodaTimeFormatDateTimeFormatter;
@protocol JavaUtilCollection;

@interface OrgJodaTimeFormatISODateTimeFormat : NSObject

#pragma mark Public

+ (OrgJodaTimeFormatDateTimeFormatter *)basicDate;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicDateTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicDateTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicOrdinalDate;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicOrdinalDateTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicOrdinalDateTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicTTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicTTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicWeekDate;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicWeekDateTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)basicWeekDateTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)date;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateElementParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateHour;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateHourMinute;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateHourMinuteSecond;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateHourMinuteSecondFraction;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateHourMinuteSecondMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateOptionalTimeParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)dateTimeParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)forFieldsWithJavaUtilCollection:(id<JavaUtilCollection>)fields
                                                            withBoolean:(jboolean)extended
                                                            withBoolean:(jboolean)strictISO;

+ (OrgJodaTimeFormatDateTimeFormatter *)hour;

+ (OrgJodaTimeFormatDateTimeFormatter *)hourMinute;

+ (OrgJodaTimeFormatDateTimeFormatter *)hourMinuteSecond;

+ (OrgJodaTimeFormatDateTimeFormatter *)hourMinuteSecondFraction;

+ (OrgJodaTimeFormatDateTimeFormatter *)hourMinuteSecondMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)localDateOptionalTimeParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)localDateParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)localTimeParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)ordinalDate;

+ (OrgJodaTimeFormatDateTimeFormatter *)ordinalDateTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)ordinalDateTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)time;

+ (OrgJodaTimeFormatDateTimeFormatter *)timeElementParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)timeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)timeParser;

+ (OrgJodaTimeFormatDateTimeFormatter *)tTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)tTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)weekDate;

+ (OrgJodaTimeFormatDateTimeFormatter *)weekDateTime;

+ (OrgJodaTimeFormatDateTimeFormatter *)weekDateTimeNoMillis;

+ (OrgJodaTimeFormatDateTimeFormatter *)weekyear;

+ (OrgJodaTimeFormatDateTimeFormatter *)weekyearWeek;

+ (OrgJodaTimeFormatDateTimeFormatter *)weekyearWeekDay;

+ (OrgJodaTimeFormatDateTimeFormatter *)year;

+ (OrgJodaTimeFormatDateTimeFormatter *)yearMonth;

+ (OrgJodaTimeFormatDateTimeFormatter *)yearMonthDay;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFormatISODateTimeFormat)

FOUNDATION_EXPORT void OrgJodaTimeFormatISODateTimeFormat_init(OrgJodaTimeFormatISODateTimeFormat *self);

FOUNDATION_EXPORT OrgJodaTimeFormatISODateTimeFormat *new_OrgJodaTimeFormatISODateTimeFormat_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatISODateTimeFormat *create_OrgJodaTimeFormatISODateTimeFormat_init();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_forFieldsWithJavaUtilCollection_withBoolean_withBoolean_(id<JavaUtilCollection> fields, jboolean extended, jboolean strictISO);

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_localDateParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateElementParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_timeParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_localTimeParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_timeElementParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateTimeParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateOptionalTimeParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_localDateOptionalTimeParser();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_date();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_time();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_timeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_tTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_tTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_ordinalDate();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_ordinalDateTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_ordinalDateTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_weekDate();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_weekDateTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_weekDateTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicDate();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicTTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicTTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicDateTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicDateTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicOrdinalDate();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicOrdinalDateTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicOrdinalDateTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicWeekDate();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicWeekDateTime();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_basicWeekDateTimeNoMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_year();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_yearMonth();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_yearMonthDay();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_weekyear();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_weekyearWeek();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_weekyearWeekDay();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_hour();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_hourMinute();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_hourMinuteSecond();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_hourMinuteSecondMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_hourMinuteSecondFraction();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateHour();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateHourMinute();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateHourMinuteSecond();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateHourMinuteSecondMillis();

FOUNDATION_EXPORT OrgJodaTimeFormatDateTimeFormatter *OrgJodaTimeFormatISODateTimeFormat_dateHourMinuteSecondFraction();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatISODateTimeFormat)

#endif

#if !defined (OrgJodaTimeFormatISODateTimeFormat_Constants_) && (INCLUDE_ALL_OrgJodaTimeFormatISODateTimeFormat || defined(INCLUDE_OrgJodaTimeFormatISODateTimeFormat_Constants))
#define OrgJodaTimeFormatISODateTimeFormat_Constants_

@interface OrgJodaTimeFormatISODateTimeFormat_Constants : NSObject

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeFormatISODateTimeFormat_Constants)

FOUNDATION_EXPORT void OrgJodaTimeFormatISODateTimeFormat_Constants_init(OrgJodaTimeFormatISODateTimeFormat_Constants *self);

FOUNDATION_EXPORT OrgJodaTimeFormatISODateTimeFormat_Constants *new_OrgJodaTimeFormatISODateTimeFormat_Constants_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFormatISODateTimeFormat_Constants *create_OrgJodaTimeFormatISODateTimeFormat_Constants_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFormatISODateTimeFormat_Constants)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFormatISODateTimeFormat")
