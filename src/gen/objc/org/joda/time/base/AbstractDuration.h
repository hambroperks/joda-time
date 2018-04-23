//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/base/AbstractDuration.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeBaseAbstractDuration")
#ifdef RESTRICT_OrgJodaTimeBaseAbstractDuration
#define INCLUDE_ALL_OrgJodaTimeBaseAbstractDuration 0
#else
#define INCLUDE_ALL_OrgJodaTimeBaseAbstractDuration 1
#endif
#undef RESTRICT_OrgJodaTimeBaseAbstractDuration

#if !defined (OrgJodaTimeBaseAbstractDuration_) && (INCLUDE_ALL_OrgJodaTimeBaseAbstractDuration || defined(INCLUDE_OrgJodaTimeBaseAbstractDuration))
#define OrgJodaTimeBaseAbstractDuration_

#define RESTRICT_OrgJodaTimeReadableDuration 1
#define INCLUDE_OrgJodaTimeReadableDuration 1
#include "org/joda/time/ReadableDuration.h"

@class OrgJodaTimeDuration;
@class OrgJodaTimePeriod;

/*!
 @brief AbstractDuration provides the common behaviour for duration classes.
 <p>
  This class should generally not be used directly by API users. The  
 <code>ReadableDuration</code> interface should be used when different 
  kinds of durations are to be referenced. 
 <p>
  AbstractDuration subclasses may be mutable and not thread-safe.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeBaseAbstractDuration : NSObject < OrgJodaTimeReadableDuration >

#pragma mark Public

/*!
 @brief Compares this duration with the specified duration based on length.
 @param other a duration to check against
 @return negative value if this is less, 0 if equal, or positive value if greater
 @throw NullPointerExceptionif the object is null
 @throw ClassCastExceptionif the given object is not supported
 */
- (jint)compareToWithId:(id<OrgJodaTimeReadableDuration>)other;

/*!
 @brief Compares this object with the specified object for equality based
  on the millisecond length.All ReadableDuration instances are accepted.
 @param duration a readable duration to check against
 @return true if the length of the duration is equal
 */
- (jboolean)isEqual:(id)duration;

/*!
 @brief Gets a hash code for the duration that is compatible with the 
  equals method.
 @return a hash code
 */
- (NSUInteger)hash;

/*!
 @brief Is the length of this duration equal to the duration passed in.
 @param duration another duration to compare to, null means zero milliseconds
 @return true if this duration is equal to than the duration passed in
 */
- (jboolean)isEqualWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Is the length of this duration longer than the duration passed in.
 @param duration another duration to compare to, null means zero milliseconds
 @return true if this duration is equal to than the duration passed in
 */
- (jboolean)isLongerThanWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Is the length of this duration shorter than the duration passed in.
 @param duration another duration to compare to, null means zero milliseconds
 @return true if this duration is equal to than the duration passed in
 */
- (jboolean)isShorterThanWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Get this duration as an immutable <code>Duration</code> object.
 @return a Duration created using the millisecond duration from this instance
 */
- (OrgJodaTimeDuration *)toDuration;

/*!
 @brief Converts this duration to a Period instance using the standard period type
  and the ISO chronology.
 <p>
  Only precise fields in the period type will be used. Thus, only the hour,
  minute, second and millisecond fields on the period will be used.
  The year, month, week and day fields will not be populated. 
 <p>
  If the duration is small, less than one day, then this method will perform
  as you might expect and split the fields evenly.
  If the duration is larger than one day then all the remaining duration will
  be stored in the largest available field, hours in this case. 
 <p>
  For example, a duration effectively equal to (365 + 60 + 5) days will be
  converted to ((365 + 60 + 5) * 24) hours by this constructor. 
 <p>
  For more control over the conversion process, you must pair the duration with
  an instant, see <code>Period.Period(ReadableInstant,ReadableDuration)</code>.
 @return a Period created using the millisecond duration from this instance
 */
- (OrgJodaTimePeriod *)toPeriod;

/*!
 @brief Gets the value as a String in the ISO8601 duration format including
  only seconds and milliseconds.
 <p>
  For example, "PT72.345S" represents 1 minute, 12 seconds and 345 milliseconds. 
 <p>
  For more control over the output, see 
 <code>PeriodFormatterBuilder</code>.
 @return the value as an ISO8601 string
 */
- (NSString *)description;

#pragma mark Protected

/*!
 @brief Constructor.
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseAbstractDuration)

FOUNDATION_EXPORT void OrgJodaTimeBaseAbstractDuration_init(OrgJodaTimeBaseAbstractDuration *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseAbstractDuration)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeBaseAbstractDuration")
