//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/DurationFieldType.java
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

/*!
 @brief Identifies a duration field, such as years or minutes, in a chronology-neutral way.
 <p>
 A duration field type defines the type of the field, such as hours.
 If does not directly enable any calculations, however it does provide a
 <code>getField(Chronology)</code> method that returns the actual calculation engine
 for a particular chronology.
 <p>
 Instances of <code>DurationFieldType</code> are singletons.
 They can be compared using <code>==</code>.
 <p>
 If required, you can create your own field, for example a quarters.
 You must create a subclass of <code>DurationFieldType</code> that defines the field type.
 This class returns the actual calculation engine from <code>getField(Chronology)</code>.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeDurationFieldType : NSObject < JavaIoSerializable >

#pragma mark Public

/*!
 @brief Get the centuries field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)centuries;

/*!
 @brief Get the days field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)days;

/*!
 @brief Get the eras field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)eras;

/*!
 @brief Gets a suitable field for this type from the given Chronology.
 @param chronology  the chronology to use, null means ISOChronology in default zone
 @return a suitable field
 */
- (OrgJodaTimeDurationField *)getFieldWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Get the name of the field.
 By convention, names are plural.
 @return field name
 */
- (NSString *)getName;

/*!
 @brief Get the halfdays field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)halfdays;

/*!
 @brief Get the hours field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)hours;

/*!
 @brief Checks whether this field supported in the given Chronology.
 @param chronology  the chronology to use, null means ISOChronology in default zone
 @return true if supported
 */
- (jboolean)isSupportedWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Get the millis field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)millis;

/*!
 @brief Get the minutes field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)minutes;

/*!
 @brief Get the months field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)months;

/*!
 @brief Get the seconds field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)seconds;

/*!
 @brief Get a suitable debug string.
 @return debug string
 */
- (NSString *)description;

/*!
 @brief Get the weeks field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)weeks;

/*!
 @brief Get the weekyears field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)weekyears;

/*!
 @brief Get the years field type.
 @return the DurationFieldType constant
 */
+ (OrgJodaTimeDurationFieldType *)years;

#pragma mark Protected

/*!
 @brief Constructor.
 @param name  the name to use, which by convention, are plural.
 */
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

/*!
 @brief The eras field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_ERAS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_ERAS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, ERAS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The centuries field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_CENTURIES_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_CENTURIES_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, CENTURIES_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The weekyears field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_WEEKYEARS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_WEEKYEARS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, WEEKYEARS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The years field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_YEARS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_YEARS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, YEARS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The months field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_MONTHS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_MONTHS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, MONTHS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The weeks field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_WEEKS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_WEEKS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, WEEKS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The days field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_DAYS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_DAYS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, DAYS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The halfdays field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_HALFDAYS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_HALFDAYS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, HALFDAYS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The hours field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_HOURS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_HOURS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, HOURS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The minutes field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_MINUTES_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_MINUTES_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, MINUTES_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The seconds field type.
 */
inline OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_get_SECONDS_TYPE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeDurationFieldType *OrgJodaTimeDurationFieldType_SECONDS_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeDurationFieldType, SECONDS_TYPE, OrgJodaTimeDurationFieldType *)

/*!
 @brief The millis field type.
 */
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
