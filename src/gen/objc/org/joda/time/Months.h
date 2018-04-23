//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/Months.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeMonths")
#ifdef RESTRICT_OrgJodaTimeMonths
#define INCLUDE_ALL_OrgJodaTimeMonths 0
#else
#define INCLUDE_ALL_OrgJodaTimeMonths 1
#endif
#undef RESTRICT_OrgJodaTimeMonths

#if !defined (OrgJodaTimeMonths_) && (INCLUDE_ALL_OrgJodaTimeMonths || defined(INCLUDE_OrgJodaTimeMonths))
#define OrgJodaTimeMonths_

#define RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#define INCLUDE_OrgJodaTimeBaseBaseSingleFieldPeriod 1
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
 @param divisor the amount to divide by, may be negative
 @return the new period divided by the specified divisor
 @throw ArithmeticExceptionif the divisor is zero
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
 @param other the other period, null means zero
 @return true if this months instance is greater than the specified one
 */
- (jboolean)isGreaterThanWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)other;

/*!
 @brief Is this months instance less than the specified number of months.
 @param other the other period, null means zero
 @return true if this months instance is less than the specified one
 */
- (jboolean)isLessThanWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)other;

/*!
 @brief Returns a new instance with the specified number of months taken away.
 <p>
  This instance is immutable and unaffected by this method call.
 @param months the amount of months to take away, may be negative
 @return the new period minus the specified number of months
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeMonths *)minusWithInt:(jint)months;

/*!
 @brief Returns a new instance with the specified number of months taken away.
 <p>
  This instance is immutable and unaffected by this method call.
 @param months the amount of months to take away, may be negative, null means zero
 @return the new period minus the specified number of months
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeMonths *)minusWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)months;

/*!
 @brief Obtains an instance of <code>Months</code> that may be cached.
 <code>Months</code> is immutable, so instances can be cached and shared.
  This factory method provides access to shared instances.
 @param months the number of months to obtain an instance for
 @return the instance of Months
 */
+ (OrgJodaTimeMonths *)monthsWithInt:(jint)months;

/*!
 @brief Creates a <code>Months</code> representing the number of whole months
  between the two specified datetimes.This method corectly handles
  any daylight savings time changes that may occur during the interval.
 @param start the start instant, must not be null
 @param end the end instant, must not be null
 @return the period in months
 @throw IllegalArgumentExceptionif the instants are null or invalid
 */
+ (OrgJodaTimeMonths *)monthsBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end;

/*!
 @brief Creates a <code>Months</code> representing the number of whole months
  between the two specified partial datetimes.
 <p>
  The two partials must contain the same fields, for example you can specify two 
 <code>LocalDate</code> objects.
 @param start the start partial date, must not be null
 @param end the end partial date, must not be null
 @return the period in months
 @throw IllegalArgumentExceptionif the partials are null or invalid
 */
+ (OrgJodaTimeMonths *)monthsBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                    withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end;

/*!
 @brief Creates a <code>Months</code> representing the number of whole months
  in the specified interval.This method corectly handles any daylight
  savings time changes that may occur during the interval.
 @param interval the interval to extract months from, null returns zero
 @return the period in months
 @throw IllegalArgumentExceptionif the partials are null or invalid
 */
+ (OrgJodaTimeMonths *)monthsInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval;

/*!
 @brief Returns a new instance with the months multiplied by the specified scalar.
 <p>
  This instance is immutable and unaffected by this method call.
 @param scalar the amount to multiply by, may be negative
 @return the new period multiplied by the specified scalar
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeMonths *)multipliedByWithInt:(jint)scalar;

/*!
 @brief Returns a new instance with the months value negated.
 @return the new period with a negated value
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeMonths *)negated;

/*!
 @brief Creates a new <code>Months</code> by parsing a string in the ISO8601 format 'PnM'.
 <p>
  The parse will accept the full ISO syntax of PnYnMnWnDTnHnMnS however only the
  months component may be non-zero. If any other component is non-zero, an exception
  will be thrown.
 @param periodStr the period string, null returns zero
 @return the period in months
 @throw IllegalArgumentExceptionif the string format is invalid
 */
+ (OrgJodaTimeMonths *)parseMonthsWithNSString:(NSString *)periodStr;

/*!
 @brief Returns a new instance with the specified number of months added.
 <p>
  This instance is immutable and unaffected by this method call.
 @param months the amount of months to add, may be negative
 @return the new period plus the specified number of months
 @throw ArithmeticExceptionif the result overflows an int
 */
- (OrgJodaTimeMonths *)plusWithInt:(jint)months;

/*!
 @brief Returns a new instance with the specified number of months added.
 <p>
  This instance is immutable and unaffected by this method call.
 @param months the amount of months to add, may be negative, null means zero
 @return the new period plus the specified number of months
 @throw ArithmeticExceptionif the result overflows an int
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

/*!
 @brief Constant representing zero months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_ZERO(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_ZERO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, ZERO, OrgJodaTimeMonths *)

/*!
 @brief Constant representing one month.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_ONE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_ONE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, ONE, OrgJodaTimeMonths *)

/*!
 @brief Constant representing two months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_TWO(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_TWO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, TWO, OrgJodaTimeMonths *)

/*!
 @brief Constant representing three months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_THREE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_THREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, THREE, OrgJodaTimeMonths *)

/*!
 @brief Constant representing four months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_FOUR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_FOUR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, FOUR, OrgJodaTimeMonths *)

/*!
 @brief Constant representing five months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_FIVE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_FIVE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, FIVE, OrgJodaTimeMonths *)

/*!
 @brief Constant representing six months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_SIX(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_SIX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, SIX, OrgJodaTimeMonths *)

/*!
 @brief Constant representing seven months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_SEVEN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_SEVEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, SEVEN, OrgJodaTimeMonths *)

/*!
 @brief Constant representing eight months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_EIGHT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_EIGHT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, EIGHT, OrgJodaTimeMonths *)

/*!
 @brief Constant representing nine months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_NINE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_NINE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, NINE, OrgJodaTimeMonths *)

/*!
 @brief Constant representing ten months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_TEN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_TEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, TEN, OrgJodaTimeMonths *)

/*!
 @brief Constant representing eleven months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_ELEVEN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_ELEVEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, ELEVEN, OrgJodaTimeMonths *)

/*!
 @brief Constant representing twelve months.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_TWELVE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_TWELVE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, TWELVE, OrgJodaTimeMonths *)

/*!
 @brief Constant representing the maximum number of months that can be stored in this object.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_MAX_VALUE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_MAX_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, MAX_VALUE, OrgJodaTimeMonths *)

/*!
 @brief Constant representing the minimum number of months that can be stored in this object.
 */
inline OrgJodaTimeMonths *OrgJodaTimeMonths_get_MIN_VALUE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_MIN_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, MIN_VALUE, OrgJodaTimeMonths *)

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_monthsWithInt_(jint months);

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_monthsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end);

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_monthsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end);

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_monthsInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval);

FOUNDATION_EXPORT OrgJodaTimeMonths *OrgJodaTimeMonths_parseMonthsWithNSString_(NSString *periodStr);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeMonths)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeMonths")
