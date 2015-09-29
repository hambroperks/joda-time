//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/PeriodType.java
//

#ifndef _OrgJodaTimePeriodType_H_
#define _OrgJodaTimePeriodType_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgJodaTimeDurationFieldType;
@protocol OrgJodaTimeReadablePeriod;

/*!
 @brief Controls a period implementation by specifying which duration fields are to be used.
 <p>
 The following implementations are provided:
 <ul>
 <li>Standard - years, months, weeks, days, hours, minutes, seconds, millis
 <li>YearMonthDayTime - years, months, days, hours, minutes, seconds, millis
 <li>YearMonthDay - years, months, days
 <li>YearWeekDayTime - years, weeks, days, hours, minutes, seconds, millis
 <li>YearWeekDay - years, weeks, days
 <li>YearDayTime - years, days, hours, minutes, seconds, millis
 <li>YearDay - years, days, hours
 <li>DayTime - days, hours, minutes, seconds, millis
 <li>Time - hours, minutes, seconds, millis
 <li>plus one for each single type
 </ul>
 <p>
 PeriodType is thread-safe and immutable, and all subclasses must be as well.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimePeriodType : NSObject < JavaIoSerializable >

#pragma mark Public

/*!
 @brief Gets a type that defines just the days field.
 @return the period type
 */
+ (OrgJodaTimePeriodType *)days;

/*!
 @brief Gets a type that defines all standard fields from days downwards.
 <ul>
 <li>days
 <li>hours
 <li>minutes
 <li>seconds
 <li>milliseconds
 </ul>
 @return the period type
 */
+ (OrgJodaTimePeriodType *)dayTime;

/*!
 @brief Compares this type to another object.
 To be equal, the object must be a PeriodType with the same set of fields.
 @param obj  the object to compare to
 @return true if equal
 */
- (jboolean)isEqual:(id)obj;

/*!
 @brief Gets a period type that contains the duration types of the array.
 <p>
 Only the 8 standard duration field types are supported.
 @param types  the types to include in the array.
 @return the period type
 @since 1.1
 */
+ (OrgJodaTimePeriodType *)forFieldsWithOrgJodaTimeDurationFieldTypeArray:(IOSObjectArray *)types;

/*!
 @brief Gets the field type by index.
 @param index  the index to retrieve
 @return the field type
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (OrgJodaTimeDurationFieldType *)getFieldTypeWithInt:(jint)index;

/*!
 @brief Gets the name of the period type.
 @return the name
 */
- (NSString *)getName;

/*!
 @brief Returns a hashcode based on the field types.
 @return a suitable hashcode
 */
- (NSUInteger)hash;

/*!
 @brief Gets a type that defines just the hours field.
 @return the period type
 */
+ (OrgJodaTimePeriodType *)hours;

/*!
 @brief Gets the index of the field in this period.
 @param type  the type to check, may be null which returns -1
 @return the index of -1 if not supported
 */
- (jint)indexOfWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

/*!
 @brief Checks whether the field specified is supported by this period.
 @param type  the type to check, may be null which returns false
 @return true if the field is supported
 */
- (jboolean)isSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

/*!
 @brief Gets a type that defines just the millis field.
 @return the period type
 */
+ (OrgJodaTimePeriodType *)millis;

/*!
 @brief Gets a type that defines just the minutes field.
 @return the period type
 */
+ (OrgJodaTimePeriodType *)minutes;

/*!
 @brief Gets a type that defines just the months field.
 @return the period type
 */
+ (OrgJodaTimePeriodType *)months;

/*!
 @brief Gets a type that defines just the seconds field.
 @return the period type
 */
+ (OrgJodaTimePeriodType *)seconds;

/*!
 @brief Gets the number of fields in the period type.
 @return the number of fields
 */
- (jint)size;

/*!
 @brief Gets a type that defines all standard fields.
 <ul>
 <li>years
 <li>months
 <li>weeks
 <li>days
 <li>hours
 <li>minutes
 <li>seconds
 <li>milliseconds
 </ul>
 @return the period type
 */
+ (OrgJodaTimePeriodType *)standard;

/*!
 @brief Gets a type that defines all standard time fields.
 <ul>
 <li>hours
 <li>minutes
 <li>seconds
 <li>milliseconds
 </ul>
 @return the period type
 */
+ (OrgJodaTimePeriodType *)time;

/*!
 @brief Gets a debugging to string.
 @return a string
 */
- (NSString *)description;

/*!
 @brief Gets a type that defines just the weeks field.
 @return the period type
 */
+ (OrgJodaTimePeriodType *)weeks;

/*!
 @brief Returns a version of this PeriodType instance that does not support days.
 @return a new period type that supports the original set of fields except days
 */
- (OrgJodaTimePeriodType *)withDaysRemoved;

/*!
 @brief Returns a version of this PeriodType instance that does not support hours.
 @return a new period type that supports the original set of fields except hours
 */
- (OrgJodaTimePeriodType *)withHoursRemoved;

/*!
 @brief Returns a version of this PeriodType instance that does not support milliseconds.
 @return a new period type that supports the original set of fields except milliseconds
 */
- (OrgJodaTimePeriodType *)withMillisRemoved;

/*!
 @brief Returns a version of this PeriodType instance that does not support minutes.
 @return a new period type that supports the original set of fields except minutes
 */
- (OrgJodaTimePeriodType *)withMinutesRemoved;

/*!
 @brief Returns a version of this PeriodType instance that does not support months.
 @return a new period type that supports the original set of fields except months
 */
- (OrgJodaTimePeriodType *)withMonthsRemoved;

/*!
 @brief Returns a version of this PeriodType instance that does not support seconds.
 @return a new period type that supports the original set of fields except seconds
 */
- (OrgJodaTimePeriodType *)withSecondsRemoved;

/*!
 @brief Returns a version of this PeriodType instance that does not support weeks.
 @return a new period type that supports the original set of fields except weeks
 */
- (OrgJodaTimePeriodType *)withWeeksRemoved;

/*!
 @brief Returns a version of this PeriodType instance that does not support years.
 @return a new period type that supports the original set of fields except years
 */
- (OrgJodaTimePeriodType *)withYearsRemoved;

/*!
 @brief Gets a type that defines the year and day fields.
 <ul>
 <li>years
 <li>days
 </ul>
 @return the period type
 @since 1.1
 */
+ (OrgJodaTimePeriodType *)yearDay;

/*!
 @brief Gets a type that defines all standard fields except months and weeks.
 <ul>
 <li>years
 <li>days
 <li>hours
 <li>minutes
 <li>seconds
 <li>milliseconds
 </ul>
 @return the period type
 */
+ (OrgJodaTimePeriodType *)yearDayTime;

/*!
 @brief Gets a type that defines the year, month and day fields.
 <ul>
 <li>years
 <li>months
 <li>days
 </ul>
 @return the period type
 @since 1.1
 */
+ (OrgJodaTimePeriodType *)yearMonthDay;

/*!
 @brief Gets a type that defines all standard fields except weeks.
 <ul>
 <li>years
 <li>months
 <li>days
 <li>hours
 <li>minutes
 <li>seconds
 <li>milliseconds
 </ul>
 @return the period type
 */
+ (OrgJodaTimePeriodType *)yearMonthDayTime;

/*!
 @brief Gets a type that defines just the years field.
 @return the period type
 */
+ (OrgJodaTimePeriodType *)years;

/*!
 @brief Gets a type that defines year, week and day fields.
 <ul>
 <li>years
 <li>weeks
 <li>days
 </ul>
 @return the period type
 @since 1.1
 */
+ (OrgJodaTimePeriodType *)yearWeekDay;

/*!
 @brief Gets a type that defines all standard fields except months.
 <ul>
 <li>years
 <li>weeks
 <li>days
 <li>hours
 <li>minutes
 <li>seconds
 <li>milliseconds
 </ul>
 @return the period type
 */
+ (OrgJodaTimePeriodType *)yearWeekDayTime;

#pragma mark Protected

/*!
 @brief Constructor.
 @param name  the name
 @param types  the types
 @param indices  the indices
 */
- (instancetype)initWithNSString:(NSString *)name
withOrgJodaTimeDurationFieldTypeArray:(IOSObjectArray *)types
                    withIntArray:(IOSIntArray *)indices;

#pragma mark Package-Private

/*!
 @brief Adds to the indexed field part of the period.
 @param period  the period to query
 @param index  the index to use
 @param values  the array to populate
 @param valueToAdd  the value to add
 @return true if the array is updated
 @throws UnsupportedOperationException if not supported
 */
- (jboolean)addIndexedFieldWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                 withInt:(jint)index
                                            withIntArray:(IOSIntArray *)values
                                                 withInt:(jint)valueToAdd;

/*!
 @brief Gets the indexed field part of the period.
 @param period  the period to query
 @param index  the index to use
 @return the value of the field, zero if unsupported
 */
- (jint)getIndexedFieldWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                             withInt:(jint)index;

/*!
 @brief Sets the indexed field part of the period.
 @param period  the period to query
 @param index  the index to use
 @param values  the array to populate
 @param newValue  the value to set
 @throws UnsupportedOperationException if not supported
 */
- (jboolean)setIndexedFieldWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                                 withInt:(jint)index
                                            withIntArray:(IOSIntArray *)values
                                                 withInt:(jint)newValue;

@end

J2OBJC_STATIC_INIT(OrgJodaTimePeriodType)

FOUNDATION_EXPORT jint OrgJodaTimePeriodType_YEAR_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, YEAR_INDEX_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgJodaTimePeriodType, YEAR_INDEX_, jint)
FOUNDATION_EXPORT jint OrgJodaTimePeriodType_MONTH_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, MONTH_INDEX_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgJodaTimePeriodType, MONTH_INDEX_, jint)
FOUNDATION_EXPORT jint OrgJodaTimePeriodType_WEEK_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, WEEK_INDEX_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgJodaTimePeriodType, WEEK_INDEX_, jint)
FOUNDATION_EXPORT jint OrgJodaTimePeriodType_DAY_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, DAY_INDEX_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgJodaTimePeriodType, DAY_INDEX_, jint)
FOUNDATION_EXPORT jint OrgJodaTimePeriodType_HOUR_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, HOUR_INDEX_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgJodaTimePeriodType, HOUR_INDEX_, jint)
FOUNDATION_EXPORT jint OrgJodaTimePeriodType_MINUTE_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, MINUTE_INDEX_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgJodaTimePeriodType, MINUTE_INDEX_, jint)
FOUNDATION_EXPORT jint OrgJodaTimePeriodType_SECOND_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, SECOND_INDEX_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgJodaTimePeriodType, SECOND_INDEX_, jint)
FOUNDATION_EXPORT jint OrgJodaTimePeriodType_MILLI_INDEX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimePeriodType, MILLI_INDEX_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgJodaTimePeriodType, MILLI_INDEX_, jint)
FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_standard();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearMonthDayTime();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearMonthDay();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearWeekDayTime();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearWeekDay();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearDayTime();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_yearDay();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_dayTime();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_time();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_years();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_months();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_weeks();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_days();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_hours();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_minutes();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_seconds();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_millis();

FOUNDATION_EXPORT OrgJodaTimePeriodType *OrgJodaTimePeriodType_forFieldsWithOrgJodaTimeDurationFieldTypeArray_(IOSObjectArray *types);

FOUNDATION_EXPORT void OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(OrgJodaTimePeriodType *self, NSString *name, IOSObjectArray *types, IOSIntArray *indices);

FOUNDATION_EXPORT OrgJodaTimePeriodType *new_OrgJodaTimePeriodType_initWithNSString_withOrgJodaTimeDurationFieldTypeArray_withIntArray_(NSString *name, IOSObjectArray *types, IOSIntArray *indices) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimePeriodType)

#endif // _OrgJodaTimePeriodType_H_
