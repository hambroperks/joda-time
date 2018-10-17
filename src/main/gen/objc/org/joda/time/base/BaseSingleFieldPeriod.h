//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/base/BaseSingleFieldPeriod.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeBaseBaseSingleFieldPeriod")
#ifdef RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod
#define INCLUDE_ALL_OrgJodaTimeBaseBaseSingleFieldPeriod 0
#else
#define INCLUDE_ALL_OrgJodaTimeBaseBaseSingleFieldPeriod 1
#endif
#undef RESTRICT_OrgJodaTimeBaseBaseSingleFieldPeriod

#if !defined (OrgJodaTimeBaseBaseSingleFieldPeriod_) && (INCLUDE_ALL_OrgJodaTimeBaseBaseSingleFieldPeriod || defined(INCLUDE_OrgJodaTimeBaseBaseSingleFieldPeriod))
#define OrgJodaTimeBaseBaseSingleFieldPeriod_

#define RESTRICT_OrgJodaTimeReadablePeriod 1
#define INCLUDE_OrgJodaTimeReadablePeriod 1
#include "org/joda/time/ReadablePeriod.h"

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeMutablePeriod;
@class OrgJodaTimePeriod;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeReadableInstant;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief BaseSingleFieldPeriod is an abstract implementation of ReadablePeriod that
 manages a single duration field, such as days or minutes.
 <p>
 This class should generally not be used directly by API users.
 The <code>ReadablePeriod</code> interface should be used when different 
 kinds of period objects are to be referenced.
 <p>
 BaseSingleFieldPeriod subclasses may be mutable and not thread-safe.
 @author Stephen Colebourne
 @since 1.4
 */
@interface OrgJodaTimeBaseBaseSingleFieldPeriod : NSObject < OrgJodaTimeReadablePeriod, JavaLangComparable, JavaIoSerializable >

#pragma mark Public

/*!
 @brief Compares this period to another object of the same class.
 @param other  the other period, must not be null
 @return zero if equal, positive if greater, negative if less
 @throws NullPointerException if the other period is null
 @throws ClassCastException if the other period is of a different type
 */
- (jint)compareToWithId:(OrgJodaTimeBaseBaseSingleFieldPeriod *)other;

/*!
 @brief Compares this object with the specified object for equality based on the
 value of each field.
 All ReadablePeriod instances are accepted, but only
 those with a matching <code>PeriodType</code> can return true.
 @param period  a readable period to check against
 @return true if all the field values are equal, false if
 not or the period is null or of an incorrect type
 */
- (jboolean)isEqual:(id)period;

/*!
 @brief Gets the value of a duration field represented by this period.
 <p>
 If the field type specified does not match the type used by this class
 then zero is returned.
 @param type  the field type to query, null returns zero
 @return the value of that field, zero if field not supported
 */
- (jint)getWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

/*!
 @brief Gets the single duration field type.
 @return the duration field type, not null
 */
- (OrgJodaTimeDurationFieldType *)getFieldType;

/*!
 @brief Gets the field type at the specified index.
 <p>
 The only index supported by this period is zero which returns the
 field type of this class.
 @param index  the index to retrieve, which must be zero
 @return the field at the specified index
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (OrgJodaTimeDurationFieldType *)getFieldTypeWithInt:(jint)index;

/*!
 @brief Gets the period type which matches the duration field type.
 @return the period type, not null
 */
- (OrgJodaTimePeriodType *)getPeriodType;

/*!
 @brief Gets the value at the specified index.
 <p>
 The only index supported by this period is zero.
 @param index  the index to retrieve, which must be zero
 @return the value of the field at the specified index
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (jint)getValueWithInt:(jint)index;

/*!
 @brief Gets a hash code for the period as defined by ReadablePeriod.
 @return a hash code
 */
- (NSUInteger)hash;

/*!
 @brief Checks whether the duration field specified is supported by this period.
 @param type  the type to check, may be null which returns false
 @return true if the field is supported
 */
- (jboolean)isSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

/*!
 @brief Gets the number of fields that this period supports, which is one.
 @return the number of fields supported, which is one
 */
- (jint)size;

/*!
 @brief Get this object as a <code>MutablePeriod</code>.
 <p>
 This will always return a new <code>MutablePeriod</code> with the same fields.
 The period will use <code>PeriodType.standard()</code>.
 @return a MutablePeriod using the same field set and values
 */
- (OrgJodaTimeMutablePeriod *)toMutablePeriod;

/*!
 @brief Get this period as an immutable <code>Period</code> object.
 The period will use <code>PeriodType.standard()</code>.
 @return a <code>Period</code> representing the same number of days
 */
- (OrgJodaTimePeriod *)toPeriod;

#pragma mark Protected

/*!
 @brief Creates a new instance representing the specified period.
 @param period  the period to represent
 */
- (instancetype)initWithInt:(jint)period;

/*!
 @brief Calculates the number of whole units between the two specified datetimes.
 @param start  the start instant, validated to not be null
 @param end  the end instant, validated to not be null
 @param field  the field type to use, must not be null
 @return the period
 @throws IllegalArgumentException if the instants are null or invalid
 */
+ (jint)betweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
               withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end
             withOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)field;

/*!
 @brief Calculates the number of whole units between the two specified partial datetimes.
 <p>
 The two partials must contain the same fields, for example you can specify
 two <code>LocalDate</code> objects.
 @param start  the start partial date, validated to not be null
 @param end  the end partial date, validated to not be null
 @param zeroInstance  the zero instance constant, must not be null
 @return the period
 @throws IllegalArgumentException if the partials are null or invalid
 */
+ (jint)betweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
               withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end
                withOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)zeroInstance;

/*!
 @brief Gets the amount of this period.
 @return the period value
 */
- (jint)getValue;

/*!
 @brief Sets the amount of this period.
 To make a subclass immutable you must declare it final, or block this method.
 @param value  the period value
 */
- (void)setValueWithInt:(jint)value;

/*!
 @brief Creates a new instance representing the number of complete standard length units
 in the specified period.
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
 @param period  the period to get the number of hours from, must not be null
 @param millisPerUnit  the number of milliseconds in one standard unit of this period
 @throws IllegalArgumentException if the period contains imprecise duration values
 */
+ (jint)standardPeriodInWithOrgJodaTimeReadablePeriod:(id<OrgJodaTimeReadablePeriod>)period
                                             withLong:(jlong)millisPerUnit;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseBaseSingleFieldPeriod)

FOUNDATION_EXPORT jint OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end, OrgJodaTimeDurationFieldType *field);

FOUNDATION_EXPORT jint OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end, id<OrgJodaTimeReadablePeriod> zeroInstance);

FOUNDATION_EXPORT jint OrgJodaTimeBaseBaseSingleFieldPeriod_standardPeriodInWithOrgJodaTimeReadablePeriod_withLong_(id<OrgJodaTimeReadablePeriod> period, jlong millisPerUnit);

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(OrgJodaTimeBaseBaseSingleFieldPeriod *self, jint period);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseBaseSingleFieldPeriod)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeBaseBaseSingleFieldPeriod")
