//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/Hours.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeHours")
#ifdef RESTRICT_OrgJodaTimeHours
#define INCLUDE_ALL_OrgJodaTimeHours 0
#else
#define INCLUDE_ALL_OrgJodaTimeHours 1
#endif
#undef RESTRICT_OrgJodaTimeHours

#if !defined (OrgJodaTimeHours_) && (INCLUDE_ALL_OrgJodaTimeHours || defined(INCLUDE_OrgJodaTimeHours))
#define OrgJodaTimeHours_

#define RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#define INCLUDE_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#include "org/joda/time/base/BaseSingleFieldPeriod.h"

@class OrgJodaTimeDays;
@class OrgJodaTimeDuration;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeMinutes;
@class OrgJodaTimePeriodType;
@class OrgJodaTimeSeconds;
@class OrgJodaTimeWeeks;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePartial;
@protocol OrgJodaTimeReadablePeriod;

/*!
 @brief An immutable time period representing a number of hours.
 <p>
 <code>Hours</code> is an immutable period that can only store hours.
 It does not store years, months or minutes for example. As such it is a
 type-safe way of representing a number of hours in an application.
 <p>
 The number of hours is set in the constructor, and may be queried using
 <code>getHours()</code>. Basic mathematical operations are provided -
 <code>plus()</code>, <code>minus()</code>, <code>multipliedBy()</code> and
 <code>dividedBy()</code>.
 <p>
 <code>Hours</code> is thread-safe and immutable.
 @author Stephen Colebourne
 @since 1.4
 */
@interface OrgJodaTimeHours : OrgJodaTimeBaseBaseSingleFieldPeriod

#pragma mark Public

/*!
 @brief Returns a new instance with the hours divided by the specified divisor.
 The calculation uses integer division, thus 3 divided by 2 is 1.
 <p>
 This instance is immutable and unaffected by this method call.
 @param divisor  the amount to divide by, may be negative
 @return the new period divided by the specified divisor
 @throws ArithmeticException if the divisor is zero
 */
- (OrgJodaTimeHours *)dividedByWithInt:(jint)divisor;

/*!
 @brief Gets the duration field type, which is <code>hours</code>.
 @return the period type
 */
- (OrgJodaTimeDurationFieldType *)getFieldType;

/*!
 @brief Gets the number of hours that this period represents.
 @return the number of hours in the period
 */
- (jint)getHours;

/*!
 @brief Gets the period type, which is <code>hours</code>.
 @return the period type
 */
- (OrgJodaTimePeriodType *)getPeriodType;

/*!
 @brief Obtains an instance of <code>Hours</code> that may be cached.
 <code>Hours</code> is immutable, so instances can be cached and shared.
 This factory method provides access to shared instances.
 @param hours  the number of hours to obtain an instance for
 @return the instance of Hours
 */
+ (OrgJodaTimeHours *)hoursWithInt:(jint)hours;

/*!
 @brief Creates a <code>Hours</code> representing the number of whole hours
 between the two specified datetimes.
 @param start  the start instant, must not be null
 @param end  the end instant, must not be null
 @return the period in hours
 @throws IllegalArgumentException if the instants are null or invalid
 */
+ (OrgJodaTimeHours *)hoursBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                  withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Creates a <code>Hours</code> representing the number of whole hours
 between the two specified partial datetimes.
 <p>
 The two partials must contain the same fields, for example you can specify
 two <code>LocalTime</code> objects.
 @param start  the start partial date, must not be null
 @param end  the end partial date, must not be null
 @return the period in hours
 @throws IllegalArgumentException if the partials are null or invalid
 */
+ (OrgJodaTimeHours *)hoursBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                  withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

/*!
 @brief Creates a <code>Hours</code> representing the number of whole hours
 in the specified interval.
 @param interval  the interval to extract hours from, null returns zero
 @return the period in hours
 @throws IllegalArgumentException if the partials are null or invalid
 */
+ (OrgJodaTimeHours *)hoursInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

/*!
 @brief Is this hours instance greater than the specified number of hours.
 @param other  the other period, null means zero
 @return true if this hours instance is greater than the specified one
 */
- (jboolean)isGreaterThanWithOrgJodaTimeHours:(OrgJodaTimeHours *)other;

/*!
 @brief Is this hours instance less than the specified number of hours.
 @param other  the other period, null means zero
 @return true if this hours instance is less than the specified one
 */
- (jboolean)isLessThanWithOrgJodaTimeHours:(OrgJodaTimeHours *)other;

/*!
 @brief Returns a new instance with the specified number of hours taken away.
 <p>
 This instance is immutable and unaffected by this method call.
 @param hours  the amount of hours to take away, may be negative, null means zero
 @return the new period minus the specified number of hours
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)minusWithOrgJodaTimeHours:(OrgJodaTimeHours *)hours;

/*!
 @brief Returns a new instance with the specified number of hours taken away.
 <p>
 This instance is immutable and unaffected by this method call.
 @param hours  the amount of hours to take away, may be negative
 @return the new period minus the specified number of hours
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)minusWithInt:(jint)hours;

/*!
 @brief Returns a new instance with the hours multiplied by the specified scalar.
 <p>
 This instance is immutable and unaffected by this method call.
 @param scalar  the amount to multiply by, may be negative
 @return the new period multiplied by the specified scalar
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)multipliedByWithInt:(jint)scalar;

/*!
 @brief Returns a new instance with the hours value negated.
 @return the new period with a negated value
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)negated;

/*!
 @brief Creates a new <code>Hours</code> by parsing a string in the ISO8601 format 'PTnH'.
 <p>
 The parse will accept the full ISO syntax of PnYnMnWnDTnHnMnS however only the
 hours component may be non-zero. If any other component is non-zero, an exception
 will be thrown.
 @param periodStr  the period string, null returns zero
 @return the period in hours
 @throws IllegalArgumentException if the string format is invalid
 */
+ (OrgJodaTimeHours *)parseHoursWithNSString:(NSString *)periodStr;

/*!
 @brief Returns a new instance with the specified number of hours added.
 <p>
 This instance is immutable and unaffected by this method call.
 @param hours  the amount of hours to add, may be negative, null means zero
 @return the new period plus the specified number of hours
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)plusWithOrgJodaTimeHours:(OrgJodaTimeHours *)hours;

/*!
 @brief Returns a new instance with the specified number of hours added.
 <p>
 This instance is immutable and unaffected by this method call.
 @param hours  the amount of hours to add, may be negative
 @return the new period plus the specified number of hours
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeHours *)plusWithInt:(jint)hours;

/*!
 @brief Creates a new <code>Hours</code> representing the number of complete
 standard length hours in the specified period.
 <p>
 This factory method converts all fields from the period to hours using standardised
 durations for each field. Only those fields which have a precise duration in
 the ISO UTC chronology can be converted.
 <ul>
 <li>One week consists of 7 days.
 <li>One day consists of 24 hours.
 <li>One hour consists of 60 minutes.
 <li>One minute consists of 60 seconds.
 <li>One second consists of 1000 milliseconds.
 </ul>
 Months and Years are imprecise and periods containing these values cannot be converted.
 @param period  the period to get the number of hours from, null returns zero
 @return the period in hours
 @throws IllegalArgumentException if the period contains imprecise duration values
 */
+ (OrgJodaTimeHours *)standardHoursInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Converts this period in hours to a period in days assuming a
 24 hour day.
 <p>
 This method allows you to convert between different types of period.
 However to achieve this it makes the assumption that all days are 24 hours long.
 This is not true when daylight savings time is considered, and may also
 not be true for some unusual chronologies. However, it is included as it
 is a useful operation for many applications and business rules.
 @return a period representing the number of whole days for this number of hours
 */
- (OrgJodaTimeDays *)toStandardDays;

/*!
 @brief Converts this period in hours to a duration in milliseconds assuming a
 60 minute hour and 60 second minute.
 <p>
 This method allows you to convert from a period to a duration.
 However to achieve this it makes the assumption that all hours are
 60 minutes and all minutes are 60 seconds. This might not be true for an
 unusual chronology, for example one that takes leap seconds into account.
 However, the method is included as it is a useful operation for many
 applications and business rules.
 @return a duration equivalent to this number of hours
 */
- (OrgJodaTimeDuration *)toStandardDuration;

/*!
 @brief Converts this period in hours to a period in minutes assuming a
 60 minute hour.
 <p>
 This method allows you to convert between different types of period.
 However to achieve this it makes the assumption that all hours are 60 minutes long.
 This may not be true for some unusual chronologies. However, it is included
 as it is a useful operation for many applications and business rules.
 @return a period representing the number of minutes for this number of hours
 @throws ArithmeticException if the number of minutes is too large to be represented
 */
- (OrgJodaTimeMinutes *)toStandardMinutes;

/*!
 @brief Converts this period in hours to a period in seconds assuming a
 60 minute hour and 60 second minute.
 <p>
 This method allows you to convert between different types of period.
 However to achieve this it makes the assumption that all hours are
 60 minutes long and all minutes are 60 seconds long.
 This may not be true for some unusual chronologies. However, it is included
 as it is a useful operation for many applications and business rules.
 @return a period representing the number of seconds for this number of hours
 @throws ArithmeticException if the number of seconds is too large to be represented
 */
- (OrgJodaTimeSeconds *)toStandardSeconds;

/*!
 @brief Converts this period in hours to a period in weeks assuming a
 7 day week and 24 hour day.
 <p>
 This method allows you to convert between different types of period.
 However to achieve this it makes the assumption that all weeks are 7 days
 long and all days are 24 hours long.
 This is not true when daylight savings time is considered, and may also
 not be true for some unusual chronologies. However, it is included as it
 is a useful operation for many applications and business rules.
 @return a period representing the number of whole weeks for this number of hours
 */
- (OrgJodaTimeWeeks *)toStandardWeeks;

/*!
 @brief Gets this instance as a String in the ISO8601 duration format.
 <p>
 For example, "PT4H" represents 4 hours.
 @return the value as an ISO8601 string
 */
- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeHours)

/*!
 @brief Constant representing zero hours.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_ZERO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_ZERO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, ZERO, OrgJodaTimeHours *)

/*!
 @brief Constant representing one hour.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_ONE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_ONE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, ONE, OrgJodaTimeHours *)

/*!
 @brief Constant representing two hours.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_TWO();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_TWO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, TWO, OrgJodaTimeHours *)

/*!
 @brief Constant representing three hours.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_THREE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_THREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, THREE, OrgJodaTimeHours *)

/*!
 @brief Constant representing four hours.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_FOUR();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_FOUR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, FOUR, OrgJodaTimeHours *)

/*!
 @brief Constant representing five hours.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_FIVE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_FIVE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, FIVE, OrgJodaTimeHours *)

/*!
 @brief Constant representing six hours.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_SIX();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_SIX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, SIX, OrgJodaTimeHours *)

/*!
 @brief Constant representing seven hours.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_SEVEN();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_SEVEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, SEVEN, OrgJodaTimeHours *)

/*!
 @brief Constant representing eight hours.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_EIGHT();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_EIGHT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, EIGHT, OrgJodaTimeHours *)

/*!
 @brief Constant representing the maximum number of hours that can be stored in this object.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_MAX_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_MAX_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, MAX_VALUE, OrgJodaTimeHours *)

/*!
 @brief Constant representing the minimum number of hours that can be stored in this object.
 */
inline OrgJodaTimeHours *OrgJodaTimeHours_get_MIN_VALUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_MIN_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeHours, MIN_VALUE, OrgJodaTimeHours *)

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_hoursWithInt_(jint hours);

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_hoursBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_hoursBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end);

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_hoursInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval);

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_standardHoursInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period);

FOUNDATION_EXPORT OrgJodaTimeHours *OrgJodaTimeHours_parseHoursWithNSString_(NSString *periodStr);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeHours)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeHours")
