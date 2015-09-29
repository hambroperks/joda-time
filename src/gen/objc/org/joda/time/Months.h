//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/Months.java
//

#ifndef _OrgJodaTimeMonths_H_
#define _OrgJodaTimeMonths_H_

#include "J2ObjC_header.h"
#include "org/joda/time/base/BaseSingleFieldPeriod.h"

@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadableInterval;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief An immutable time period representing a number of months.
 <p>
 <code>Months</code> is an immutable period that can only store months.
 It does not store years, days or hours for example. As such it is a
 type-safe way of representing a number of months in an application.
 <p>
 The number of months is set in the constructor, and may be queried using
 <code>getMonths()</code>. Basic mathematical operations are provided -
 <code>plus()</code>, <code>minus()</code>, <code>multipliedBy()</code> and
 <code>dividedBy()</code>.
 <p>
 <code>Months</code> is thread-safe and immutable.
 @author Stephen Colebourne
 @since 1.4
 */
@interface OrgJodaTimeMonths : OrgJodaTimeBaseBaseSingleFieldPeriod

#pragma mark Public

/*!
 @brief Returns a new instance with the months divided by the specified divisor.
 The calculation uses integer division, thus 3 divided by 2 is 1.
 <p>
 This instance is immutable and unaffected by this method call.
 @param divisor  the amount to divide by, may be negative
 @return the new period divided by the specified divisor
 @throws ArithmeticException if the divisor is zero
 */
- (OrgJodaTimeMonths *)dividedByWithInt:(jint)divisor;

/*!
 @brief Gets the duration field type, which is <code>months</code>.
 @return the period type
 */
- (OrgJodaTimeDurationFieldType *)getFieldType;

/*!
 @brief Gets the number of months that this period represents.
 @return the number of months in the period
 */
- (jint)getMonths;

/*!
 @brief Gets the period type, which is <code>months</code>.
 @return the period type
 */
- (OrgJodaTimePeriodType *)getPeriodType;

/*!
 @brief Is this months instance greater than the specified number of months.
 @param other  the other period, null means zero
 @return true if this months instance is greater than the specified one
 */
- (jboolean)isGreaterThanWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)other;

/*!
 @brief Is this months instance less than the specified number of months.
 @param other  the other period, null means zero
 @return true if this months instance is less than the specified one
 */
- (jboolean)isLessThanWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)other;

/*!
 @brief Returns a new instance with the specified number of months taken away.
 <p>
 This instance is immutable and unaffected by this method call.
 @param months  the amount of months to take away, may be negative
 @return the new period minus the specified number of months
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeMonths *)minusWithInt:(jint)months;

/*!
 @brief Returns a new instance with the specified number of months taken away.
 <p>
 This instance is immutable and unaffected by this method call.
 @param months  the amount of months to take away, may be negative, null means zero
 @return the new period minus the specified number of months
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeMonths *)minusWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)months;

/*!
 @brief Obtains an instance of <code>Months</code> that may be cached.
 <code>Months</code> is immutable, so instances can be cached and shared.
 This factory method provides access to shared instances.
 @param months  the number of months to obtain an instance for
 @return the instance of Months
 */
+ (OrgJodaTimeMonths *)monthsWithInt:(jint)months;

/*!
 @brief Creates a <code>Months</code> representing the number of whole months
 between the two specified datetimes.
 This method corectly handles
 any daylight savings time changes that may occur during the interval.
 @param start  the start instant, must not be null
 @param end  the end instant, must not be null
 @return the period in months
 @throws IllegalArgumentException if the instants are null or invalid
 */
+ (OrgJodaTimeMonths *)monthsBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Creates a <code>Months</code> representing the number of whole months
 between the two specified partial datetimes.
 <p>
 The two partials must contain the same fields, for example you can specify
 two <code>LocalDate</code> objects.
 @param start  the start partial date, must not be null
 @param end  the end partial date, must not be null
 @return the period in months
 @throws IllegalArgumentException if the partials are null or invalid
 */
+ (OrgJodaTimeMonths *)monthsBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                    withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

/*!
 @brief Creates a <code>Months</code> representing the number of whole months
 in the specified interval.
 This method corectly handles any daylight
 savings time changes that may occur during the interval.
 @param interval  the interval to extract months from, null returns zero
 @return the period in months
 @throws IllegalArgumentException if the partials are null or invalid
 */
+ (OrgJodaTimeMonths *)monthsInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

/*!
 @brief Returns a new instance with the months multiplied by the specified scalar.
 <p>
 This instance is immutable and unaffected by this method call.
 @param scalar  the amount to multiply by, may be negative
 @return the new period multiplied by the specified scalar
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeMonths *)multipliedByWithInt:(jint)scalar;

/*!
 @brief Returns a new instance with the months value negated.
 @return the new period with a negated value
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeMonths *)negated;

/*!
 @brief Creates a new <code>Months</code> by parsing a string in the ISO8601 format 'PnM'.
 <p>
 The parse will accept the full ISO syntax of PnYnMnWnDTnHnMnS however only the
 months component may be non-zero. If any other component is non-zero, an exception
 will be thrown.
 @param periodStr  the period string, null returns zero
 @return the period in months
 @throws IllegalArgumentException if the string format is invalid
 */
+ (OrgJodaTimeMonths *)parseMonthsWithNSString:(NSString *)periodStr;

/*!
 @brief Returns a new instance with the specified number of months added.
 <p>
 This instance is immutable and unaffected by this method call.
 @param months  the amount of months to add, may be negative
 @return the new period plus the specified number of months
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeMonths *)plusWithInt:(jint)months;

/*!
 @brief Returns a new instance with the specified number of months added.
 <p>
 This instance is immutable and unaffected by this method call.
 @param months  the amount of months to add, may be negative, null means zero
 @return the new period plus the specified number of months
 @throws ArithmeticException if the result overflows an int
 */
- (OrgJodaTimeMonths *)plusWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)months;

/*!
 @brief Gets this instance as a String in the ISO8601 duration format.
 <p>
 For example, "P4M" represents 4 months.
 @return the value as an ISO8601 string
 */
- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeMonths)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_ZERO_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, ZERO_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_ONE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, ONE_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_TWO_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, TWO_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_THREE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, THREE_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_FOUR_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, FOUR_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_FIVE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, FIVE_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_SIX_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, SIX_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_SEVEN_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, SEVEN_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_EIGHT_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, EIGHT_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_NINE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, NINE_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_TEN_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, TEN_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_ELEVEN_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, ELEVEN_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_TWELVE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, TWELVE_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_MAX_VALUE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, MAX_VALUE_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_MIN_VALUE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeMonths, MIN_VALUE_, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_monthsWithInt_(jint months);

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_monthsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_monthsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end);

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_monthsInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval);

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_parseMonthsWithNSString_(NSString *periodStr);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeMonths)

#endif // _OrgJodaTimeMonths_H_
