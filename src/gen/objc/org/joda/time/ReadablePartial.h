//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/ReadablePartial.java
//

#ifndef _OrgJodaTimeReadablePartial_H_
#define _OrgJodaTimeReadablePartial_H_

#include "J2ObjC_header.h"
#include "java/lang/Comparable.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTime;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@protocol OrgJodaTimeReadableInstant;

/**
 @brief Defines a partial time that does not support every datetime field, and is thus a local time.
 <p> A <code>ReadablePartial</code> supports a subset of those fields on the chronology. It cannot be compared to a <code>ReadableInstant</code> , as it does not fully specify an instant in time. The time it does specify is a local time, and does not include a time zone. <p> A <code>ReadablePartial</code> can be converted to a <code>ReadableInstant</code> using the <code>toDateTime</code> method. This works by providing a full base instant that can be used to 'fill in the gaps' and specify a time zone. <p> <code>ReadablePartial</code> is <code>Comparable</code> from v2.0. The comparison is based on the fields, compared in order, from largest to smallest. The first field that is non-equal is used to determine the result.
 @author Stephen Colebourne
 @since 1.0
 */
@protocol OrgJodaTimeReadablePartial < JavaLangComparable, NSObject, JavaObject >

/**
 @brief Gets the number of fields that this partial supports.
 @return the number of fields supported
 */
- (jint)size;

/**
 @brief Gets the field type at the specified index.
 @param index the index to retrieve
 @return the field at the specified index
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (OrgJodaTimeDateTimeFieldType *)getFieldTypeWithInt:(jint)index;

/**
 @brief Gets the field at the specified index.
 @param index the index to retrieve
 @return the field at the specified index
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (OrgJodaTimeDateTimeField *)getFieldWithInt:(jint)index;

/**
 @brief Gets the value at the specified index.
 @param index the index to retrieve
 @return the value of the field at the specified index
 @throws IndexOutOfBoundsException if the index is invalid
 */
- (jint)getValueWithInt:(jint)index;

/**
 @brief Gets the chronology of the partial which is never null.
 <p> The Chronology is the calculation engine behind the partial and provides conversion and validation of the fields in a particular calendar system.
 @return the chronology, never null
 */
- (OrgJodaTimeChronology *)getChronology;

/**
 @brief Gets the value of one of the fields.
 <p> The field type specified must be one of those that is supported by the partial.
 @param field a DateTimeFieldType instance that is supported by this partial
 @return the value of that field
 @throws IllegalArgumentException if the field is null or not supported
 */
- (jint)getWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)field;

/**
 @brief Checks whether the field type specified is supported by this partial.
 @param field the field to check, may be null which returns false
 @return true if the field is supported
 */
- (jboolean)isSupportedWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)field;

/**
 @brief Converts this partial to a full datetime by resolving it against another datetime.
 <p> This method takes the specified datetime and sets the fields from this instant on top. The chronology from the base instant is used. <p> For example, if this partial represents a time, then the result of this method will be the datetime from the specified base instant plus the time from this partial.
 @param baseInstant the instant that provides the missing fields, null means now
 @return the combined datetime
 */
- (OrgJodaTimeDateTime *)toDateTimeWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)baseInstant;

/**
 @brief Compares this partial with the specified object for equality based on the supported fields, chronology and values.
 <p> Two instances of ReadablePartial are equal if they have the same chronology, same field types (in same order) and same values.
 @param partial the object to compare to
 @return true if equal
 */
- (jboolean)isEqual:(id)partial;

/**
 @brief Gets a hash code for the partial that is compatible with the equals method.
 <p> The formula used must be: <pre> int total = 157; for (int i = 0; i < fields.length; i++) { total = 23 * total + values[i]; total = 23 * total + fieldTypes[i].hashCode(); } total += chronology.hashCode(); return total; </pre>
 @return a suitable hash code
 */
- (NSUInteger)hash;

/**
 @brief Get the value as a String in a recognisable ISO8601 format, only displaying supported fields.
 <p> The string output is in ISO8601 format to enable the String constructor to correctly parse it.
 @return the value as an ISO8601 string
 */
- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeReadablePartial)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeReadablePartial)

#endif // _OrgJodaTimeReadablePartial_H_
