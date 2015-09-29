//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/DateTimeComparator.java
//

#ifndef _OrgJodaTimeDateTimeComparator_H_
#define _OrgJodaTimeDateTimeComparator_H_

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "java/util/Comparator.h"

@class OrgJodaTimeDateTimeFieldType;

/*!
 @brief DateTimeComparator provides comparators to compare one date with another.
 <p>
 Dates may be specified using any object recognised by the
 <code>ConverterManager</code> class.
 <p>
 The default objects recognised by the comparator are:
 <ul>
 <li>ReadableInstant
 <li>String
 <li>Calendar
 <li>Date
 <li>Long (milliseconds)
 <li>null (now)
 </ul>
 <p>
 DateTimeComparator is thread-safe and immutable.
 @author Guy Allard
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeDateTimeComparator : NSObject < JavaUtilComparator, JavaIoSerializable >

#pragma mark Public

/*!
 @brief Compare two objects against only the range of date time fields as
 specified in the constructor.
 @param lhsObj  the first object,
 logically on the left of a &lt; comparison, null means now
 @param rhsObj  the second object,
 logically on the right of a &lt; comparison, null means now
 @return zero if order does not matter,
 negative value if lhsObj &lt; rhsObj, positive value otherwise.
 @throws IllegalArgumentException if either argument is not supported
 */
- (jint)compareWithId:(id)lhsObj
               withId:(id)rhsObj;

/*!
 @brief Compares this comparator to another.
 @param object  the object to compare to
 @return true if equal
 */
- (jboolean)isEqual:(id)object;

/*!
 @brief Returns a comparator that only considers date fields.
 Time of day is ignored.
 <p>
 The time-zone is considered when using this comparator.
 The input millis are rounded down to the start of the day
 in the time-zone of that input value. Thus, two inputs with
 different time-zones will typically not be equal
 @return a comparator over all date fields
 */
+ (OrgJodaTimeDateTimeComparator *)getDateOnlyInstance;

/*!
 @brief Returns a DateTimeComparator the compares the entire date time value.
 @return a comparator over all fields
 */
+ (OrgJodaTimeDateTimeComparator *)getInstance;

/*!
 @brief Returns a DateTimeComparator with a lower limit only.
 Fields of a
 magnitude less than the lower limit are excluded from comparisons.
 <p>
 The time-zone is considered when using this comparator.
 The input millis are truncated using the time-zone of that input value.
 Thus, two inputs with different time-zones will typically not be equal
 @param lowerLimit  inclusive lower limit for fields to be compared, null means no limit
 @return a comparator over all fields above the lower limit
 */
+ (OrgJodaTimeDateTimeComparator *)getInstanceWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)lowerLimit;

/*!
 @brief Returns a DateTimeComparator with a lower and upper limit.
 Fields of a
 magnitude less than the lower limit are excluded from comparisons.
 Fields of a magnitude greater than or equal to the upper limit are also
 excluded from comparisons. Either limit may be specified as null, which
 indicates an unbounded limit.
 <p>
 The time-zone is considered when using this comparator unless both limits are null.
 The input millis are rounded/truncated using the time-zone of that input value.
 Thus, two inputs with different time-zones will typically not be equal
 @param lowerLimit  inclusive lower limit for fields to be compared, null means no limit
 @param upperLimit  exclusive upper limit for fields to be compared, null means no limit
 @return a comparator over all fields between the limits
 */
+ (OrgJodaTimeDateTimeComparator *)getInstanceWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)lowerLimit
                                              withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)upperLimit;

/*!
 @brief Gets the field type that represents the lower limit of comparison.
 @return the field type, null if no upper limit
 */
- (OrgJodaTimeDateTimeFieldType *)getLowerLimit;

/*!
 @brief Returns a comparator that only considers time fields.
 Date is ignored.
 <p>
 The time-zone is considered when using this comparator.
 The input millis are truncated to be within the day
 in the time-zone of that input value. Thus, two inputs with
 different time-zones will typically not be equal
 @return a comparator over all time fields
 */
+ (OrgJodaTimeDateTimeComparator *)getTimeOnlyInstance;

/*!
 @brief Gets the field type that represents the upper limit of comparison.
 @return the field type, null if no upper limit
 */
- (OrgJodaTimeDateTimeFieldType *)getUpperLimit;

/*!
 @brief Gets a suitable hashcode.
 @return the hashcode
 */
- (NSUInteger)hash;

/*!
 @brief Gets a debugging string.
 @return a debugging string
 */
- (NSString *)description;

#pragma mark Protected

/*!
 @brief Restricted constructor.
 @param lowerLimit  the lower field limit, null means no limit
 @param upperLimit  the upper field limit, null means no limit
 */
- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)lowerLimit
                    withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)upperLimit;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeDateTimeComparator)

FOUNDATION_EXPORT OrgJodaTimeDateTimeComparator *OrgJodaTimeDateTimeComparator_getInstance();

FOUNDATION_EXPORT OrgJodaTimeDateTimeComparator *OrgJodaTimeDateTimeComparator_getInstanceWithOrgJodaTimeDateTimeFieldType_(OrgJodaTimeDateTimeFieldType *lowerLimit);

FOUNDATION_EXPORT OrgJodaTimeDateTimeComparator *OrgJodaTimeDateTimeComparator_getInstanceWithOrgJodaTimeDateTimeFieldType_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeDateTimeFieldType *lowerLimit, OrgJodaTimeDateTimeFieldType *upperLimit);

FOUNDATION_EXPORT OrgJodaTimeDateTimeComparator *OrgJodaTimeDateTimeComparator_getDateOnlyInstance();

FOUNDATION_EXPORT OrgJodaTimeDateTimeComparator *OrgJodaTimeDateTimeComparator_getTimeOnlyInstance();

FOUNDATION_EXPORT void OrgJodaTimeDateTimeComparator_initWithOrgJodaTimeDateTimeFieldType_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeDateTimeComparator *self, OrgJodaTimeDateTimeFieldType *lowerLimit, OrgJodaTimeDateTimeFieldType *upperLimit);

FOUNDATION_EXPORT OrgJodaTimeDateTimeComparator *new_OrgJodaTimeDateTimeComparator_initWithOrgJodaTimeDateTimeFieldType_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeDateTimeFieldType *lowerLimit, OrgJodaTimeDateTimeFieldType *upperLimit) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeDateTimeComparator)

#endif // _OrgJodaTimeDateTimeComparator_H_
