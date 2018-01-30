//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/AbstractPeriod.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod")
#ifdef RESTRICT_OrgJodaTimeBaseAbstractPeriod
#define INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod 0
#else
#define INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod 1
#endif
#undef RESTRICT_OrgJodaTimeBaseAbstractPeriod

#if !defined (OrgJodaTimeBaseAbstractPeriod_) && (INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod || defined(INCLUDE_OrgJodaTimeBaseAbstractPeriod))
#define OrgJodaTimeBaseAbstractPeriod_

#define RESTRICT_OrgJodaTimeReadablePeriod 1
#define INCLUDE_OrgJodaTimeReadablePeriod 1
#include "org/joda/time/ReadablePeriod.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgJodaTimeDurationFieldType;
@class OrgJodaTimeFormatPeriodFormatter;
@class OrgJodaTimeMutablePeriod;
@class OrgJodaTimePeriod;

/*!
 @brief AbstractPeriod provides the common behaviour for period classes.
 <p>
  This class should generally not be used directly by API users. The  
 <code>ReadablePeriod</code> interface should be used when different 
  kinds of periods are to be referenced. 
 <p>
  AbstractPeriod subclasses may be mutable and not thread-safe.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeBaseAbstractPeriod : NSObject < OrgJodaTimeReadablePeriod >

#pragma mark Public

/*!
 @brief Compares this object with the specified object for equality based
  on the value of each field.All ReadablePeriod instances are accepted.
 <p>
  Note that a period of 1 day is not equal to a period of 24 hours,
  nor is 1 hour equal to 60 minutes. Only periods with the same amount
  in each field are equal. 
 <p>
  This is because periods represent an abstracted definition of a time
  period (eg. a day may not actually be 24 hours, it might be 23 or 25
  at daylight savings boundary). 
 <p>
  To compare the actual duration of two periods, convert both to 
 <code>Duration</code>s, an operation that emphasises
  that the result may differ according to the date you choose.
 @param period a readable period to check against
 @return true if all the field values are equal, false if
   not or the period is null or of an incorrect type
 */
- (jboolean)isEqual:(id)period;

/*!
 @brief Gets the value of one of the fields.
 <p>
  If the field type specified is not supported by the period then zero
  is returned.
 @param type the field type to query, null returns zero
 @return the value of that field, zero if field not supported
 */
- (jint)getWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

/*!
 @brief Gets the field type at the specified index.
 @param index the index to retrieve
 @return the field at the specified index
 @throw IndexOutOfBoundsExceptionif the index is invalid
 @since 2.0 (previously on BasePeriod)
 */
- (OrgJodaTimeDurationFieldType *)getFieldTypeWithInt:(jint)index;

/*!
 @brief Gets an array of the field types that this period supports.
 <p>
  The fields are returned largest to smallest, for example Hours, Minutes, Seconds.
 @return the fields supported in an array that may be altered, largest to smallest
 */
- (IOSObjectArray *)getFieldTypes;

/*!
 @brief Gets an array of the value of each of the fields that this period supports.
 <p>
  The fields are returned largest to smallest, for example Hours, Minutes, Seconds.
  Each value corresponds to the same array index as <code>getFields()</code>
 @return the current values of each field in an array that may be altered, largest to smallest
 */
- (IOSIntArray *)getValues;

/*!
 @brief Gets a hash code for the period as defined by ReadablePeriod.
 @return a hash code
 */
- (NSUInteger)hash;

/*!
 @brief Gets the index of the field in this period.
 @param type the type to check, may be null which returns -1
 @return the index of -1 if not supported
 */
- (jint)indexOfWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

/*!
 @brief Checks whether the field specified is supported by this period.
 @param type the type to check, may be null which returns false
 @return true if the field is supported
 */
- (jboolean)isSupportedWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type;

/*!
 @brief Gets the number of fields that this period supports.
 @return the number of fields supported
 @since 2.0 (previously on BasePeriod)
 */
- (jint)size;

/*!
 @brief Get this object as a <code>MutablePeriod</code>.
 <p>
  This will always return a new <code>MutablePeriod</code> with the same fields.
 @return a MutablePeriod using the same field set and values
 */
- (OrgJodaTimeMutablePeriod *)toMutablePeriod;

/*!
 @brief Get this period as an immutable <code>Period</code> object.
 @return a Period using the same field set and values
 */
- (OrgJodaTimePeriod *)toPeriod;

/*!
 @brief Gets the value as a String in the ISO8601 duration format.
 <p>
  For example, "PT6H3M7S" represents 6 hours, 3 minutes, 7 seconds. 
 <p>
  For more control over the output, see 
 <code>PeriodFormatterBuilder</code>.
 @return the value as an ISO8601 string
 */
- (NSString *)description;

/*!
 @brief Uses the specified formatter to convert this period to a String.
 @param formatter the formatter to use, null means use  <code> toString() </code>
  .
 @return the formatted string
 @since 1.5
 */
- (NSString *)toStringWithOrgJodaTimeFormatPeriodFormatter:(OrgJodaTimeFormatPeriodFormatter *)formatter;

#pragma mark Protected

/*!
 @brief Constructor.
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseAbstractPeriod)

FOUNDATION_EXPORT void OrgJodaTimeBaseAbstractPeriod_init(OrgJodaTimeBaseAbstractPeriod *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseAbstractPeriod)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeBaseAbstractPeriod")
