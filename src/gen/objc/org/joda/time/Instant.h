//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/Instant.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeInstant")
#ifdef RESTRICT_OrgJodaTimeInstant
#define INCLUDE_ALL_OrgJodaTimeInstant 0
#else
#define INCLUDE_ALL_OrgJodaTimeInstant 1
#endif
#undef RESTRICT_OrgJodaTimeInstant

#if !defined (OrgJodaTimeInstant_) && (INCLUDE_ALL_OrgJodaTimeInstant || defined(INCLUDE_OrgJodaTimeInstant))
#define OrgJodaTimeInstant_

#define RESTRICT_OrgJodaTimeBaseAbstractInstant 1
#define INCLUDE_OrgJodaTimeBaseAbstractInstant 1
#include "org/joda/time/base/AbstractInstant.h"

#define RESTRICT_OrgJodaTimeReadableInstant 1
#define INCLUDE_OrgJodaTimeReadableInstant 1
#include "org/joda/time/ReadableInstant.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeFormatDateTimeFormatter;
@class OrgJodaTimeMutableDateTime;
@protocol OrgJodaTimeReadableDuration;

/*!
 @brief Instant is the standard implementation of a fully immutable instant in time.
 <p>
  <code>Instant</code> is an implementation of <code>ReadableInstant</code>.
  As with all instants, it represents an exact point on the time-line,
  but limited to the precision of milliseconds. An <code>Instant</code>
  should be used to represent a point in time irrespective of any other
  factor, such as chronology or time zone. 
 <p>
  Internally, the class holds one piece of data, the instant as milliseconds
  from the Java epoch of 1970-01-01T00:00:00Z. 
 <p>
  For example, an Instant can be used to compare two <code>DateTime</code>
  objects irrespective of chronology or time zone. 
 @code

  boolean sameInstant = dt1.toInstant().equals(dt2.toInstant()); 
  
@endcode
  Note that the following code will also perform the same check: 
 @code

  boolean sameInstant = dt1.isEqual(dt2); 
  
@endcode
  <p>
  Instant is thread-safe and immutable.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeInstant : OrgJodaTimeBaseAbstractInstant < OrgJodaTimeReadableInstant, JavaIoSerializable >

#pragma mark Public

/*!
 @brief Constructs an instance set to the current system millisecond time.
 - seealso: #now()
 */
- (instancetype)init;

/*!
 @brief Constructs an instance set to the milliseconds from 1970-01-01T00:00:00Z.
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 */
- (instancetype)initWithLong:(jlong)instant;

/*!
 @brief Constructs an instance from an Object that represents a datetime.
 <p>
  The recognised object types are defined in <code>ConverterManager</code> and
  include String, Calendar and Date.
 @param instant the datetime object, null means now
 @throw IllegalArgumentExceptionif the instant is invalid
 */
- (instancetype)initWithId:(id)instant;

/*!
 @brief Gets the chronology of the instant, which is ISO in the UTC zone.
 <p>
  This method returns <code>ISOChronology.getInstanceUTC()</code> which
  corresponds to the definition of the Java epoch 1970-01-01T00:00:00Z.
 @return ISO in the UTC zone
 */
- (OrgJodaTimeChronology *)getChronology;

/*!
 @brief Gets the milliseconds of the instant.
 @return the number of milliseconds since 1970-01-01T00:00:00Z
 */
- (jlong)getMillis;

/*!
 @brief Gets a copy of this instant with the specified duration taken away.
 <p>
  If the amount is zero or null, then <code>this</code> is returned.
 @param duration the duration to reduce this instant by
 @return a copy of this instant with the duration taken away
 @throw ArithmeticExceptionif the new instant exceeds the capacity of a long
 */
- (OrgJodaTimeInstant *)minusWithLong:(jlong)duration;

/*!
 @brief Gets a copy of this instant with the specified duration taken away.
 <p>
  If the amount is zero or null, then <code>this</code> is returned.
 @param duration the duration to reduce this instant by
 @return a copy of this instant with the duration taken away
 @throw ArithmeticExceptionif the new instant exceeds the capacity of a long
 */
- (OrgJodaTimeInstant *)minusWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Obtains an <code>Instant</code> set to the current system millisecond time.
 @return the current instant, not null
 @since 2.0
 */
+ (OrgJodaTimeInstant *)now;

/*!
 @brief Parses a <code>Instant</code> from the specified string.
 <p>
  This uses <code>ISODateTimeFormat.dateTimeParser()</code>.
 @param str the string to parse, not null
 @since 2.0
 */
+ (OrgJodaTimeInstant *)parseWithNSString:(NSString *)str;

/*!
 @brief Parses a <code>Instant</code> from the specified string using a formatter.
 @param str the string to parse, not null
 @param formatter the formatter to use, not null
 @since 2.0
 */
+ (OrgJodaTimeInstant *)parseWithNSString:(NSString *)str
   withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)formatter;

/*!
 @brief Gets a copy of this instant with the specified duration added.
 <p>
  If the amount is zero or null, then <code>this</code> is returned.
 @param duration the duration to add to this one
 @return a copy of this instant with the duration added
 @throw ArithmeticExceptionif the new instant exceeds the capacity of a long
 */
- (OrgJodaTimeInstant *)plusWithLong:(jlong)duration;

/*!
 @brief Gets a copy of this instant with the specified duration added.
 <p>
  If the amount is zero or null, then <code>this</code> is returned.
 @param duration the duration to add to this one, null means zero
 @return a copy of this instant with the duration added
 @throw ArithmeticExceptionif the new instant exceeds the capacity of a long
 */
- (OrgJodaTimeInstant *)plusWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration;

/*!
 @brief Get this object as a DateTime using ISOChronology in the default zone.
 <p>
  This method returns a DateTime object in the default zone.
  This differs from the similarly named method on DateTime, DateMidnight
  or MutableDateTime which retains the time zone. The difference is
  because Instant really represents a time <i>without</i> a zone,
  thus calling this method we really have no zone to 'retain' and
  hence expect to switch to the default zone. 
 <p>
  This method definition preserves compatibility with earlier versions
  of Joda-Time.
 @return a DateTime using the same millis
 */
- (OrgJodaTimeDateTime *)toDateTime;

/*!
 @brief Get this object as a DateTime using ISOChronology in the default zone.
 This method is identical to <code>toDateTime()</code>.
  <p>
  This method returns a DateTime object in the default zone.
  This differs from the similarly named method on DateTime, DateMidnight
  or MutableDateTime which retains the time zone. The difference is
  because Instant really represents a time <i>without</i> a zone,
  thus calling this method we really have no zone to 'retain' and
  hence expect to switch to the default zone. 
 <p>
  This method is deprecated because it is a duplicate of <code>toDateTime()</code>.
  However, removing it would cause the superclass implementation to be used,
  which would create silent bugs in any caller depending on this implementation.
  As such, the method itself is not currently planned to be removed. 
 <p>
  This method definition preserves compatibility with earlier versions
  of Joda-Time.
 @return a DateTime using the same millis with ISOChronology
 */
- (OrgJodaTimeDateTime *)toDateTimeISO;

/*!
 @brief Get this object as an Instant by returning <code>this</code>.
 @return <code>this</code>
 */
- (OrgJodaTimeInstant *)toInstant;

/*!
 @brief Get this object as a MutableDateTime using ISOChronology in the default zone.
 <p>
  This method returns a MutableDateTime object in the default zone.
  This differs from the similarly named method on DateTime, DateMidnight
  or MutableDateTime which retains the time zone. The difference is
  because Instant really represents a time <i>without</i> a zone,
  thus calling this method we really have no zone to 'retain' and
  hence expect to switch to the default zone. 
 <p>
  This method definition preserves compatibility with earlier versions
  of Joda-Time.
 @return a MutableDateTime using the same millis
 */
- (OrgJodaTimeMutableDateTime *)toMutableDateTime;

/*!
 @brief Get this object as a MutableDateTime using ISOChronology in the default zone.
 This method is identical to <code>toMutableDateTime()</code>.
  <p>
  This method returns a MutableDateTime object in the default zone.
  This differs from the similarly named method on DateTime, DateMidnight
  or MutableDateTime which retains the time zone. The difference is
  because Instant really represents a time <i>without</i> a zone,
  thus calling this method we really have no zone to 'retain' and
  hence expect to switch to the default zone. 
 <p>
  This method is deprecated because it is a duplicate of <code>toMutableDateTime()</code>.
  However, removing it would cause the superclass implementation to be used,
  which would create silent bugs in any caller depending on this implementation.
  As such, the method itself is not currently planned to be removed. 
 <p>
  This method definition preserves compatibility with earlier versions
  of Joda-Time.
 @return a MutableDateTime using the same millis with ISOChronology
 */
- (OrgJodaTimeMutableDateTime *)toMutableDateTimeISO;

/*!
 @brief Gets a copy of this instant with the specified duration added.
 <p>
  If the addition is zero, then <code>this</code> is returned.
 @param durationToAdd the duration to add to this one
 @param scalar the amount of times to add, such as -1 to subtract once
 @return a copy of this instant with the duration added
 @throw ArithmeticExceptionif the new instant exceeds the capacity of a long
 */
- (OrgJodaTimeInstant *)withDurationAddedWithLong:(jlong)durationToAdd
                                          withInt:(jint)scalar;

/*!
 @brief Gets a copy of this instant with the specified duration added.
 <p>
  If the addition is zero, then <code>this</code> is returned.
 @param durationToAdd the duration to add to this one, null means zero
 @param scalar the amount of times to add, such as -1 to subtract once
 @return a copy of this instant with the duration added
 @throw ArithmeticExceptionif the new instant exceeds the capacity of a long
 */
- (OrgJodaTimeInstant *)withDurationAddedWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)durationToAdd
                                                                 withInt:(jint)scalar;

/*!
 @brief Gets a copy of this instant with different millis.
 <p>
  The returned object will be either be a new Instant or <code>this</code>.
 @param newMillis the new millis, from 1970-01-01T00:00:00Z
 @return a copy of this instant with different millis
 */
- (OrgJodaTimeInstant *)withMillisWithLong:(jlong)newMillis;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeInstant)

FOUNDATION_EXPORT OrgJodaTimeInstant *OrgJodaTimeInstant_now(void);

FOUNDATION_EXPORT OrgJodaTimeInstant *OrgJodaTimeInstant_parseWithNSString_(NSString *str);

FOUNDATION_EXPORT OrgJodaTimeInstant *OrgJodaTimeInstant_parseWithNSString_withOrgJodaTimeFormatDateTimeFormatter_(NSString *str, OrgJodaTimeFormatDateTimeFormatter *formatter);

FOUNDATION_EXPORT void OrgJodaTimeInstant_init(OrgJodaTimeInstant *self);

FOUNDATION_EXPORT OrgJodaTimeInstant *new_OrgJodaTimeInstant_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeInstant *create_OrgJodaTimeInstant_init(void);

FOUNDATION_EXPORT void OrgJodaTimeInstant_initWithLong_(OrgJodaTimeInstant *self, jlong instant);

FOUNDATION_EXPORT OrgJodaTimeInstant *new_OrgJodaTimeInstant_initWithLong_(jlong instant) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeInstant *create_OrgJodaTimeInstant_initWithLong_(jlong instant);

FOUNDATION_EXPORT void OrgJodaTimeInstant_initWithId_(OrgJodaTimeInstant *self, id instant);

FOUNDATION_EXPORT OrgJodaTimeInstant *new_OrgJodaTimeInstant_initWithId_(id instant) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeInstant *create_OrgJodaTimeInstant_initWithId_(id instant);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeInstant)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeInstant")
