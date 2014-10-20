//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/base/BasePartial.java
//

#ifndef _OrgJodaTimeBaseBasePartial_H_
#define _OrgJodaTimeBaseBasePartial_H_

@class IOSIntArray;
@class JavaUtilLocale;
@class OrgJodaTimeChronology;
@class OrgJodaTimeFormatDateTimeFormatter;

#import "JreEmulation.h"
#include "AbstractPartial.h"
#include "ReadablePartial.h"
#include "java/io/Serializable.h"

#define OrgJodaTimeBaseBasePartial_serialVersionUID 2353678632973660LL

/**
 @brief BasePartial is an abstract implementation of ReadablePartial that stores data in array and <code>Chronology</code> fields.
 <p> This class should generally not be used directly by API users. The org.joda.time.ReadablePartial interface should be used when different kinds of partial objects are to be referenced. <p> BasePartial subclasses may be mutable and not thread-safe.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeBaseBasePartial : OrgJodaTimeBaseAbstractPartial < OrgJodaTimeReadablePartial, JavaIoSerializable > {
 @public
  /**
   @brief The chronology in use
   */
  OrgJodaTimeChronology *iChronology_;
  /**
   @brief The values of each field in this partial
   */
  IOSIntArray *iValues_;
}

/**
 @brief Constructs a partial with the current time, using ISOChronology in the default zone to extract the fields.
 <p> The constructor uses the default time zone, resulting in the local time being initialised. Once the constructor is complete, all further calculations are performed without reference to a timezone (by switching to UTC).
 */
- (instancetype)init;

/**
 @brief Constructs a partial with the current time, using the specified chronology and zone to extract the fields.
 <p> The constructor uses the time zone of the chronology specified. Once the constructor is complete, all further calculations are performed without reference to a timezone (by switching to UTC).
 @param chronology the chronology, null means ISOChronology in the default zone
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs a partial extracting the partial fields from the specified milliseconds using the ISOChronology in the default zone.
 <p> The constructor uses the default time zone, resulting in the local time being initialised. Once the constructor is complete, all further calculations are performed without reference to a timezone (by switching to UTC).
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 */
- (instancetype)initWithLong:(long long int)instant;

/**
 @brief Constructs a partial extracting the partial fields from the specified milliseconds using the chronology provided.
 <p> The constructor uses the time zone of the chronology specified. Once the constructor is complete, all further calculations are performed without reference to a timezone (by switching to UTC).
 @param instant the milliseconds from 1970-01-01T00:00:00Z
 @param chronology the chronology, null means ISOChronology in the default zone
 */
- (instancetype)initWithLong:(long long int)instant
   withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs a partial from an Object that represents a time, using the specified chronology.
 <p> The recognised object types are defined in org.joda.time.convert.ConverterManager ConverterManager and include ReadableInstant, String, Calendar and Date. <p> The constructor uses the time zone of the chronology specified. Once the constructor is complete, all further calculations are performed without reference to a timezone (by switching to UTC).
 @param instant the datetime object
 @param chronology the chronology, null means use converter
 @throws IllegalArgumentException if the date is invalid
 */
- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Constructs a partial from an Object that represents a time, using the specified chronology.
 <p> The recognised object types are defined in org.joda.time.convert.ConverterManager ConverterManager and include ReadableInstant, String, Calendar and Date. <p> The constructor uses the time zone of the chronology specified. Once the constructor is complete, all further calculations are performed without reference to a timezone (by switching to UTC).
 @param instant the datetime object
 @param chronology the chronology, null means use converter
 @param parser if converting from a String, the given parser is preferred
 @throws IllegalArgumentException if the date is invalid
 @since 1.3
 */
- (instancetype)initWithId:(id)instant
 withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology
withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)parser;

/**
 @brief Constructs a partial with specified time field values and chronology.
 <p> The constructor uses the time zone of the chronology specified. Once the constructor is complete, all further calculations are performed without reference to a timezone (by switching to UTC). <p> The array of values is assigned (not cloned) to the new instance.
 @param values the new set of values
 @param chronology the chronology, null means ISOChronology in the default zone
 @throws IllegalArgumentException if the values are invalid
 */
- (instancetype)initWithIntArray:(IOSIntArray *)values
       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology;

/**
 @brief Private constructor to be used by subclasses only which performs no validation.
 <p> Data is assigned (not cloned) to the new instance.
 @param base the base partial
 @param values the new set of values, not cloned, null means use base
 */
- (instancetype)initWithOrgJodaTimeBaseBasePartial:(OrgJodaTimeBaseBasePartial *)base
                                      withIntArray:(IOSIntArray *)values;

/**
 @brief Private constructor to be used by subclasses only which performs no validation.
 <p> Data is assigned (not cloned) to the new instance. This should not be used by mutable subclasses.
 @param base the base partial
 @param chrono the chronology to use, null means use base
 */
- (instancetype)initWithOrgJodaTimeBaseBasePartial:(OrgJodaTimeBaseBasePartial *)base
                         withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Gets the value of the field at the specifed index.
 @param index the index
 @return the value
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (int)getValueWithInt:(int)index;

/**
 @brief Gets an array of the value of each of the fields that this partial supports.
 <p> The fields are returned largest to smallest, for example Hour, Minute, Second. Each value corresponds to the same array index as <code>getFields()</code>
 @return the current values of each field (cloned), largest to smallest
 */
- (IOSIntArray *)getValues;

/**
 @brief Gets the chronology of the partial which is never null.
 <p> The Chronology is the calculation engine behind the partial and provides conversion and validation of the fields in a particular calendar system.
 @return the chronology, never null
 */
- (OrgJodaTimeChronology *)getChronology;

/**
 @brief Sets the value of the field at the specified index.
 <p> In version 2.0 and later, this method copies the array into the original. This is because the instance variable has been changed to be final to satisfy the Java Memory Model. This only impacts subclasses that are mutable.
 @param index the index
 @param value the value to set
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (void)setValueWithInt:(int)index
                withInt:(int)value;

/**
 @brief Sets the values of all fields.
 <p> In version 2.0 and later, this method copies the array into the original. This is because the instance variable has been changed to be final to satisfy the Java Memory Model. This only impacts subclasses that are mutable.
 @param values the array of values
 */
- (void)setValuesWithIntArray:(IOSIntArray *)values;

/**
 @brief Output the date using the specified format pattern.
 @param pattern the pattern specification, null means use <code>toString</code>
 */
- (NSString *)toStringWithNSString:(NSString *)pattern;

/**
 @brief Output the date using the specified format pattern.
 @param pattern the pattern specification, null means use <code>toString</code>
 @param locale Locale to use, null means default
 */
- (NSString *)toStringWithNSString:(NSString *)pattern
                withJavaUtilLocale:(JavaUtilLocale *)locale;

- (int)size;

- (NSString *)description;

- (void)copyAllFieldsTo:(OrgJodaTimeBaseBasePartial *)other;

@end

__attribute__((always_inline)) inline void OrgJodaTimeBaseBasePartial_init() {}

J2OBJC_FIELD_SETTER(OrgJodaTimeBaseBasePartial, iChronology_, OrgJodaTimeChronology *)
J2OBJC_FIELD_SETTER(OrgJodaTimeBaseBasePartial, iValues_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeBaseBasePartial, serialVersionUID, long long int)

#endif // _OrgJodaTimeBaseBasePartial_H_
