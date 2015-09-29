//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/AbstractInstant.java
//

#ifndef _OrgJodaTimeBaseAbstractInstant_H_
#define _OrgJodaTimeBaseAbstractInstant_H_

#include "J2ObjC_header.h"
#include "org/joda/time/ReadableInstant.h"

@class JavaUtilDate;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeFormatDateTimeFormatter;
@class OrgJodaTimeInstant;
@class OrgJodaTimeMutableDateTime;

/*!
 @brief AbstractInstant provides the common behaviour for instant classes.
 <p>
 This class has no concept of a chronology, all methods work on the
 millisecond instant.
 <p>
 This class should generally not be used directly by API users. The 
 <code>ReadableInstant</code> interface should be used when different 
 kinds of date/time objects are to be referenced.
 <p>
 Whenever you want to implement <code>ReadableInstant</code> you should
 extend this class.
 <p>
 AbstractInstant itself is thread-safe and immutable, but subclasses may be
 mutable and not thread-safe.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeBaseAbstractInstant : NSObject < OrgJodaTimeReadableInstant >

#pragma mark Public

/*!
 @brief Compares this object with the specified object for ascending
 millisecond instant order.
 This ordering is inconsistent with
 equals, as it ignores the Chronology.
 <p>
 All ReadableInstant instances are accepted.
 @param other  a readable instant to check against
 @return negative value if this is less, 0 if equal, or positive value if greater
 @throws NullPointerException if the object is null
 @throws ClassCastException if the object type is not supported
 */
- (jint)compareToWithId:(id<OrgJodaTimeReadableInstant>)other;

/*!
 @brief Compares this object with the specified object for equality based
 on the millisecond instant, chronology and time zone.
 <p>
 Two objects which represent the same instant in time, but are in
 different time zones (based on time zone id), will be considered to
 be different. Only two objects with the same <code>DateTimeZone</code>,
 <code>Chronology</code> and instant are equal.
 <p>
 See <code>isEqual(ReadableInstant)</code> for an equals method that
 ignores the Chronology and time zone.
 <p>
 All ReadableInstant instances are accepted.
 @param readableInstant  a readable instant to check against
 @return true if millisecond and chronology are equal, false if
 not or the instant is null or of an incorrect type
 */
- (jboolean)isEqual:(id)readableInstant;

/*!
 @brief Get the value of one of the fields of a datetime.
 <p>
 This could be used to get a field using a different Chronology.
 For example:
 @code

  Instant dt = new Instant();
  int gjYear = dt.get(Chronology.getCoptic().year());
  
@endcode
 @param field  the DateTimeField to use, not null
 @return the value
 @throws IllegalArgumentException if the field is null
 */
- (jint)getWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

/*!
 @brief Get the value of one of the fields of a datetime using the chronology of the instant.
 <p>
 This method uses the chronology of the instant to obtain the value.
 For example:
 @code

  DateTime dt = new DateTime();
  int year = dt.get(DateTimeFieldType.year());
  
@endcode
 @param type  a field type, usually obtained from DateTimeFieldType, not null
 @return the value of that field
 @throws IllegalArgumentException if the field type is null
 */
- (jint)getWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/*!
 @brief Gets the time zone of the instant from the chronology.
 @return the DateTimeZone that the instant is using, never null
 */
- (OrgJodaTimeDateTimeZone *)getZone;

/*!
 @brief Gets a hash code for the instant as defined in <code>ReadableInstant</code>.
 @return a suitable hash code
 */
- (NSUInteger)hash;

/*!
 @brief Is this instant after the millisecond instant passed in
 comparing solely by millisecond.
 @param instant  a millisecond instant to check against
 @return true if this instant is after the instant passed in
 */
- (jboolean)isAfterWithLong:(jlong)instant;

/*!
 @brief Is this instant after the instant passed in
 comparing solely by millisecond.
 @param instant  an instant to check against, null means now
 @return true if the instant is after the instant passed in
 */
- (jboolean)isAfterWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Is this instant after the current instant
 comparing solely by millisecond.
 @return true if this instant is after the current instant
 */
- (jboolean)isAfterNow;

/*!
 @brief Is this instant before the millisecond instant passed in
 comparing solely by millisecond.
 @param instant  a millisecond instant to check against
 @return true if this instant is before the instant passed in
 */
- (jboolean)isBeforeWithLong:(jlong)instant;

/*!
 @brief Is this instant before the instant passed in
 comparing solely by millisecond.
 @param instant  an instant to check against, null means now
 @return true if the instant is before the instant passed in
 */
- (jboolean)isBeforeWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Is this instant before the current instant
 comparing solely by millisecond.
 @return true if this instant is before the current instant
 */
- (jboolean)isBeforeNow;

/*!
 @brief Is this instant equal to the millisecond instant passed in
 comparing solely by millisecond.
 @param instant  a millisecond instant to check against
 @return true if this instant is before the instant passed in
 */
- (jboolean)isEqualWithLong:(jlong)instant;

/*!
 @brief Is this instant equal to the instant passed in
 comparing solely by millisecond.
 @param instant  an instant to check against, null means now
 @return true if the instant is equal to the instant passed in
 */
- (jboolean)isEqualWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)instant;

/*!
 @brief Is this instant equal to the current instant
 comparing solely by millisecond.
 @return true if this instant is before the current instant
 */
- (jboolean)isEqualNow;

/*!
 @brief Checks if the field type specified is supported by this instant and chronology.
 This can be used to avoid exceptions in <code>get(DateTimeFieldType)</code>.
 @param type  a field type, usually obtained from DateTimeFieldType
 @return true if the field type is supported
 */
- (jboolean)isSupportedWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

/*!
 @brief Get the date time as a <code>java.util.Date</code>.
 <p>
 The <code>Date</code> object created has exactly the same millisecond
 instant as this object.
 @return a Date initialised with this datetime
 */
- (JavaUtilDate *)toDate;

/*!
 @brief Get this object as a DateTime in the same zone.
 @return a DateTime using the same millis
 */
- (OrgJodaTimeDateTime *)toDateTime;

/*!
 @brief Get this object as a DateTime using the given chronology and its zone.
 @param chronology chronology to apply, or ISOChronology if null
 @return a DateTime using the same millis
 */
- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Get this object as a DateTime using the same chronology but a different zone.
 @param zone time zone to apply, or default if null
 @return a DateTime using the same millis
 */
- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Get this object as a DateTime using ISOChronology in the same zone.
 @return a DateTime using the same millis with ISOChronology
 */
- (OrgJodaTimeDateTime *)toDateTimeISO;

/*!
 @brief Get this object as an Instant.
 @return an Instant using the same millis
 */
- (OrgJodaTimeInstant *)toInstant;

/*!
 @brief Get this object as a MutableDateTime in the same zone.
 @return a MutableDateTime using the same millis
 */
- (OrgJodaTimeMutableDateTime *)toMutableDateTime;

/*!
 @brief Get this object as a MutableDateTime using the given chronology and its zone.
 @param chronology chronology to apply, or ISOChronology if null
 @return a MutableDateTime using the same millis
 */
- (OrgJodaTimeMutableDateTime *)toMutableDateTimeWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/*!
 @brief Get this object as a MutableDateTime using the same chronology but a different zone.
 @param zone time zone to apply, or default if null
 @return a MutableDateTime using the same millis
 */
- (OrgJodaTimeMutableDateTime *)toMutableDateTimeWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Get this object as a MutableDateTime using ISOChronology in the same zone.
 @return a MutableDateTime using the same millis with ISOChronology
 */
- (OrgJodaTimeMutableDateTime *)toMutableDateTimeISO;

/*!
 @brief Output the date time in ISO8601 format (yyyy-MM-ddTHH:mm:ss.SSSZZ).
 @return ISO8601 time formatted string, not null
 */
- (NSString *)description;

/*!
 @brief Uses the specified formatter to convert this partial to a String.
 @param formatter  the formatter to use, null means use <code>toString()</code>.
 @return the formatted string, not null
 @since 1.1
 */
- (NSString *)toStringWithOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)formatter;

#pragma mark Protected

/*!
 @brief Constructor.
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseAbstractInstant)

FOUNDATION_EXPORT void OrgJodaTimeBaseAbstractInstant_init(OrgJodaTimeBaseAbstractInstant *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseAbstractInstant)

#endif // _OrgJodaTimeBaseAbstractInstant_H_
