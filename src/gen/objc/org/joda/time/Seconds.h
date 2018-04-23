//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/Seconds.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeSeconds")
#ifdef RESTRICT_OrgJodaTimeSeconds
#define INCLUDE_ALL_OrgJodaTimeSeconds 0
#else
#define INCLUDE_ALL_OrgJodaTimeSeconds 1
#endif
#undef RESTRICT_OrgJodaTimeSeconds

#if !defined (OrgJodaTimeSeconds_) && (INCLUDE_ALL_OrgJodaTimeSeconds || defined(INCLUDE_OrgJodaTimeSeconds))
#define OrgJodaTimeSeconds_

#define RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#define INCLUDE_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#include "org/joda/time/base/BaseSingleFieldPeriod.h"

@class OrgJodaTimeDays;
@class OrgJodaTimeDuration;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeHours;
@class OrgJodaTimeMinutes;
@class OrgJodaTimePeriodType;
@class OrgJodaTimeWeeks;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePartial;
@protocol OrgJodaTimeReadablePeriod;

/*!
 @brief An immutable time period representing a number of seconds.
 <p>
  <code>Seconds</code> is an immutable period that can only store seconds.
  It does not store years, months or hours for example. As such it is a
  type-safe way of representing a number of seconds in an application. 
 <p>
  The number of seconds is set in the constructor, and may be queried using 
 <code>getSeconds()</code>. Basic mathematical operations are provided - 
 <code>plus()</code>, <code>minus()</code>, <code>multipliedBy()</code> and 
 <code>dividedBy()</code>.
  <p>
  <code>Seconds</code> is thread-safe and immutable.
 @author Stephen Colebourne
 @since 1.4
 */
@interface OrgJodaTimeSeconds : OrgJodaTimeBaseBaseSingleFieldPeriod

#pragma mark Public

/*!
 @brief Returns a new instance with the seconds divided by the specified divisor.
 The calculation uses integer division, thus 3 divided by 2 is 1. 
 <p>
  This instance is immutable and unaffected by this method call.
 @param divisor the amount to divide by, may be negative
 @return the new period divided by the specified divisor
 @throw ArithmeticExceptionif the divisor is zero
 */
- (OrgJodaTimeSeconds *)dividedByWithInt:(jint)divisor;

/*!
 @brief Gets the duration field type, which is <code>seconds</code>.
 @return the period type
 */
- (OrgJodaTimeDurationFieldType *)getFieldType;

/*!
 @brief Gets the period type, which is <code>seconds</code>.
 @return the period type
 */
- (OrgJodaTimePeriodType *)getPeriodType;

/*!
 @brief Gets the number of seconds that this period represents.
 @return the number of seconds in the period
 */
- (jint)getSeconds;

/*!
 @brief Is this seconds instance greater than the specified number of seconds.
 @param other the other period, null means zero
 @return true if this seconds instance is greater than the specified one
 */
- (jboolean)isGreaterThanWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)other;

/*!
 @brief Is this seconds instance less than the specified number of seconds.
 @param other the other period, null means zero
 @return true if this seconds instance is less than the specified one
 */
- (jboolean)isLessThanWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)other;

/*!
 @brief Returns a new instance with the specified number of seconds taken away.
 <p>
  This instance is immutable and unaffected by this method call.
 @param seconds the amount of seconds to take away, may be negative
 @return the new period minus the specified number of seconds
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeSeconds *)minusWithInt:(jint)seconds;

/*!
 @brief Returns a new instance with the specified number of seconds taken away.
 <p>
  This instance is immutable and unaffected by this method call.
 @param seconds the amount of seconds to take away, may be negative, null means zero
 @return the new period minus the specified number of seconds
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeSeconds *)minusWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)seconds;

/*!
 @brief Returns a new instance with the seconds multiplied by the specified scalar.
 <p>
  This instance is immutable and unaffected by this method call.
 @param scalar the amount to multiply by, may be negative
 @return the new period multiplied by the specified scalar
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeSeconds *)multipliedByWithInt:(jint)scalar;

/*!
 @brief Returns a new instance with the seconds value negated.
 @return the new period with a negated value
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeSeconds *)negated;

/*!
 @brief Creates a new <code>Seconds</code> by parsing a string in the ISO8601 format 'PTnS'.
 <p>
  The parse will accept the full ISO syntax of PnYnMnWnDTnHnMnS however only the
  seconds component may be non-zero. If any other component is non-zero, an exception
  will be thrown.
 @param periodStr the period string, null returns zero
 @return the period in seconds
 @throw IllegalArgumentExceptionif the string format is invalid
 */
+ (OrgJodaTimeSeconds *)parseSecondsWithNSString:(NSString *)periodStr;

/*!
 @brief Returns a new instance with the specified number of seconds added.
 <p>
  This instance is immutable and unaffected by this method call.
 @param seconds the amount of seconds to add, may be negative
 @return the new period plus the specified number of seconds
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeSeconds *)plusWithInt:(jint)seconds;

/*!
 @brief Returns a new instance with the specified number of seconds added.
 <p>
  This instance is immutable and unaffected by this method call.
 @param seconds the amount of seconds to add, may be negative, null means zero
 @return the new period plus the specified number of seconds
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeSeconds *)plusWithOrgJodaTimeSeconds:(OrgJodaTimeSeconds *)seconds;

/*!
 @brief Obtains an instance of <code>Seconds</code> that may be cached.
 <code>Seconds</code> is immutable, so instances can be cached and shared.
  This factory method provides access to shared instances.
 @param seconds the number of seconds to obtain an instance for
 @return the instance of Seconds
 */
+ (OrgJodaTimeSeconds *)secondsWithInt:(jint)seconds;

/*!
 @brief Creates a <code>Seconds</code> representing the number of whole seconds
  between the two specified datetimes.
 @param start the start instant, must not be null
 @param end the end instant, must not be null
 @return the period in seconds
 @throw IllegalArgumentExceptionif the instants are null or invalid
 */
+ (OrgJodaTimeSeconds *)secondsBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                      withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Creates a <code>Seconds</code> representing the number of whole seconds
  between the two specified partial datetimes.
 <p>
  The two partials must contain the same fields, for example you can specify two 
 <code>LocalTime</code> objects.
 @param start the start partial date, must not be null
 @param end the end partial date, must not be null
 @return the period in seconds
 @throw IllegalArgumentExceptionif the partials are null or invalid
 */
+ (OrgJodaTimeSeconds *)secondsBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                      withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

/*!
 @brief Creates a <code>Seconds</code> representing the number of whole seconds
  in the specified interval.
 @param interval the interval to extract seconds from, null returns zero
 @return the period in seconds
 @throw IllegalArgumentExceptionif the partials are null or invalid
 */
+ (OrgJodaTimeSeconds *)secondsInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

/*!
 @brief Creates a new <code>Seconds</code> representing the number of complete
  standard length seconds in the specified period.
 <p>
  This factory method converts all fields from the period to hours using standardised
  durations for each field. Only those fields which have a precise duration in
  the ISO UTC chronology can be converted. 
 <ul>
  <li>One week consists of 7 seconds. 
 <li>One day consists of 24 hours. 
 <li>One hour consists of 60 minutes. 
 <li>One minute consists of 60 seconds. 
 <li>One second consists of 1000 milliseconds. 
 </ul>
  Months and Years are imprecise and periods containing these values cannot be converted.
 @param period the period to get the number of hours from, null returns zero
 @return the period in seconds
 @throw IllegalArgumentExceptionif the period contains imprecise duration values
 */
+ (OrgJodaTimeSeconds *)standardSecondsInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period;

/*!
 @brief Converts this period in seconds to a period in days assuming a
  24 hour day, 60 minute hour and 60 second minute.
 <p>
  This method allows you to convert between different types of period.
  However to achieve this it makes the assumption that all days are 24 hours
  long, all hours are 60 minutes long and all minutes are 60 seconds long.
  This is not true when daylight savings is considered and may also not
  be true for some unusual chronologies. However, it is included
  as it is a useful operation for many applications and business rules.
 @return a period representing the number of days for this number of seconds
 */
- (OrgJodaTimeDays *)toStandardDays;

/*!
 @brief Converts this period in seconds to a duration in milliseconds assuming a
  24 hour day, 60 minute hour and 60 second minute.
 <p>
  This method allows you to convert from a period to a duration.
  However to achieve this it makes the assumption that all seconds are 24 hours
  long, all hours are 60 minutes and all minutes are 60 seconds.
  This is not true when daylight savings time is considered, and may also
  not be true for some unusual chronologies. However, it is included as it
  is a useful operation for many applications and business rules.
 @return a duration equivalent to this number of seconds
 */
- (OrgJodaTimeDuration *)toStandardDuration;

/*!
 @brief Converts this period in seconds to a period in hours assuming a
  60 minute hour and 60 second minute.
 <p>
  This method allows you to convert between different types of period.
  However to achieve this it makes the assumption that all hours are
  60 minutes long and all minutes are 60 seconds long.
  This may not be true for some unusual chronologies. However, it is included
  as it is a useful operation for many applications and business rules.
 @return a period representing the number of hours for this number of seconds
 */
- (OrgJodaTimeHours *)toStandardHours;

/*!
 @brief Converts this period in seconds to a period in minutes assuming a
  60 second minute.
 <p>
  This method allows you to convert between different types of period.
  However to achieve this it makes the assumption that all minutes are
  60 seconds long.
  This may not be true for some unusual chronologies. However, it is included
  as it is a useful operation for many applications and business rules.
 @return a period representing the number of minutes for this number of seconds
 */
- (OrgJodaTimeMinutes *)toStandardMinutes;

/*!
 @brief Converts this period in seconds to a period in weeks assuming a
  7 day week, 24 hour day, 60 minute hour and 60 second minute.
 <p>
  This method allows you to convert between different types of period.
  However to achieve this it makes the assumption that all weeks are 7 days
  long, all days are 24 hours long, all hours are 60 minutes long and
  all minutes are 60 seconds long.
  This is not true when daylight savings time is considered, and may also
  not be true for some unusual chronologies. However, it is included as it
  is a useful operation for many applications and business rules.
 @return a period representing the number of whole weeks for this number of seconds
 */
- (OrgJodaTimeWeeks *)toStandardWeeks;

/*!
 @brief Gets this instance as a String in the ISO8601 duration format.
 <p>
  For example, "PT4S" represents 4 seconds.
 @return the value as an ISO8601 string
 */
- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeSeconds)

/*!
 @brief Constant representing zero seconds.
 */
inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_ZERO(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_ZERO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, ZERO, OrgJodaTimeSeconds *)

/*!
 @brief Constant representing one second.
 */
inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_ONE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_ONE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, ONE, OrgJodaTimeSeconds *)

/*!
 @brief Constant representing two seconds.
 */
inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_TWO(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_TWO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, TWO, OrgJodaTimeSeconds *)

/*!
 @brief Constant representing three seconds.
 */
inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_THREE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_THREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, THREE, OrgJodaTimeSeconds *)

/*!
 @brief Constant representing the maximum number of seconds that can be stored in this object.
 */
inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_MAX_VALUE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_MAX_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, MAX_VALUE, OrgJodaTimeSeconds *)

/*!
 @brief Constant representing the minimum number of seconds that can be stored in this object.
 */
inline OrgJodaTimeSeconds *OrgJodaTimeSeconds_get_MIN_VALUE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_MIN_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeSeconds, MIN_VALUE, OrgJodaTimeSeconds *)

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsWithInt_(jint seconds);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_secondsInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_standardSecondsInWithOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePeriod> period);

FOUNDATION_EXPORT OrgJodaTimeSeconds *OrgJodaTimeSeconds_parseSecondsWithNSString_(NSString *periodStr);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeSeconds)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeSeconds")
