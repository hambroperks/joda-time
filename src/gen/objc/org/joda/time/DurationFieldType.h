//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/DurationFieldType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeDurationFieldType")
#ifdef RESTRICT_OrgJodaTimeDurationFieldType
#define INCLUDE_ALL_OrgJodaTimeDurationFieldType 0
#else
#define INCLUDE_ALL_OrgJodaTimeDurationFieldType 1
#endif
#undef RESTRICT_OrgJodaTimeDurationFieldType

#if !defined (OrgJodaTimeDurationFieldType_) && (INCLUDE_ALL_OrgJodaTimeDurationFieldType || defined(INCLUDE_OrgJodaTimeDurationFieldType))
#define OrgJodaTimeDurationFieldType_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDurationField;

@interface OrgJodaTimeDurationFieldType : NSObject < JavaIoSerializable >

#pragma mark Public

+ (OrgJodaTimeDurationFieldType *)centuries;

+ (OrgJodaTimeDurationFieldType *)days;

+ (OrgJodaTimeDurationFieldType *)eras;

- (OrgJodaTimeDurationField *)getFieldWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

- (NSString *)getName;

+ (OrgJodaTimeDurationFieldType *)halfdays;

+ (OrgJodaTimeDurationFieldType *)hours;

- (jboolean)isSupportedWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

+ (OrgJodaTimeDurationFieldType *)millis;

+ (OrgJodaTimeDurationFieldType *)minutes;

+ (OrgJodaTimeDurationFieldType *)months;

+ (OrgJodaTimeDurationFieldType *)seconds;

- (NSString *)description;

+ (OrgJodaTimeDurationFieldType *)weeks;

+ (OrgJodaTimeDurationFieldType *)weekyears;

+ (OrgJodaTimeDurationFieldType *)years;

#pragma mark Protected

- (instancetype)initWithNSString:(NSString *)name;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeDurationFieldType)

inline jbyte OrgJodaTimeDurationFieldType_get_ERAS();
#define OrgJodaTimeDurationFieldType_ERAS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, ERAS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_CENTURIES();
#define OrgJodaTimeDurationFieldType_CENTURIES 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, CENTURIES, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_WEEKYEARS();
#define OrgJodaTimeDurationFieldType_WEEKYEARS 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, WEEKYEARS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_YEARS();
#define OrgJodaTimeDurationFieldType_YEARS 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, YEARS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_MONTHS();
#define OrgJodaTimeDurationFieldType_MONTHS 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, MONTHS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_WEEKS();
#define OrgJodaTimeDurationFieldType_WEEKS 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, WEEKS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_DAYS();
#define OrgJodaTimeDurationFieldType_DAYS 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, DAYS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_HALFDAYS();
#define OrgJodaTimeDurationFieldType_HALFDAYS 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, HALFDAYS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_HOURS();
#define OrgJodaTimeDurationFieldType_HOURS 9
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, HOURS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_MINUTES();
#define OrgJodaTimeDurationFieldType_MINUTES 10
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, MINUTES, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_SECONDS();
#define OrgJodaTimeDurationFieldType_SECONDS 11
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, SECONDS, jbyte)

inline jbyte OrgJodaTimeDurationFieldType_get_MILLIS();
#define OrgJodaTimeDurationFieldType_MILLIS 12
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeDurationFieldType, MILLIS, jbyte)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_ERAS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_ERAS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, ERAS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_CENTURIES_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_CENTURIES_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, CENTURIES_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_WEEKYEARS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_WEEKYEARS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, WEEKYEARS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_YEARS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_YEARS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, YEARS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_MONTHS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_MONTHS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, MONTHS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_WEEKS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_WEEKS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, WEEKS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_DAYS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_DAYS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, DAYS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_HALFDAYS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_HALFDAYS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, HALFDAYS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_HOURS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_HOURS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, HOURS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_MINUTES_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_MINUTES_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, MINUTES_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_SECONDS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_SECONDS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, SECONDS_TYPE, OrgJodaTimeDurationFieldType *)

inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_MILLIS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_MILLIS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, MILLIS_TYPE, OrgJodaTimeDurationFieldType *)

FOUNDATION_EXPORT void OrgJodaTimeDurationFieldType_initWithNSString_(OrgJodaTimeDurationFieldType *self, NSString *name);

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_millis();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_seconds();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_minutes();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_hours();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_halfdays();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_days();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_weeks();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_weekyears();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_months();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_years();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_centuries();

FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_eras();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeDurationFieldType)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeDurationFieldType")
