//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/convert/AbstractConverter.java
//

#ifndef _OrgJodaTimeConvertAbstractConverter_H_
#define _OrgJodaTimeConvertAbstractConverter_H_

@class IOSClass;
@class IOSIntArray;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeFormatDateTimeFormatter;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeReadablePartial;

#import "JreEmulation.h"
#include "Converter.h"

/**
 @brief AbstractConverter simplifies the process of implementing a converter.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeConvertAbstractConverter : NSObject < OrgJodaTimeConvertConverter > {
}

/**
 @brief Restricted constructor.
 */
- (instancetype)init;

/**
 @brief Extracts the millis from an object of this convertor's type.
 <p> This implementation returns the current time.
 @param object the object to convert
 @param chrono the chronology to use, which is always non-null
 @return the millisecond value
 */
- (long long int)getInstantMillisWithId:(id)object
              withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Extracts the chronology from an object of this convertor's type where the time zone is specified.
 <p> This implementation returns the ISO chronology.
 @param object the object to convert
 @param zone the specified zone to use, null means default zone
 @return the chronology, never null
 */
- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                   withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Extracts the chronology from an object of this convertor's type where the chronology is specified.
 <p> This implementation returns the chronology specified, or the ISO chronology in the default zone if null passed in.
 @param object the object to convert
 @param chrono the chronology to use, null means ISO default
 @return the chronology, never null
 */
- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                     withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Extracts the values of the partial from an object of this converter's type.
 The chrono parameter is a hint to the converter, should it require a chronology to aid in conversion. <p> This implementation calls #getInstantMillis(Object,Chronology) .
 @param fieldSource a partial that provides access to the fields. This partial may be incomplete and only getFieldType(int) should be used
 @param object the object to convert
 @param chrono the chronology to use, which is the non-null result of getChronology()
 @return the array of field values that match the fieldSource, must be non-null valid
 @throws ClassCastException if the object is invalid
 */
- (IOSIntArray *)getPartialValuesWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)fieldSource
                                                         withId:(id)object
                                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Extracts the values of the partial from an object of this converter's type.
 The chrono parameter is a hint to the converter, should it require a chronology to aid in conversion. <p> This implementation calls #getPartialValues(ReadablePartial,Object,Chronology) .
 @param fieldSource a partial that provides access to the fields. This partial may be incomplete and only getFieldType(int) should be used
 @param object the object to convert
 @param chrono the chronology to use, which is the non-null result of getChronology()
 @param parser if converting from a String, the given parser is preferred
 @return the array of field values that match the fieldSource, must be non-null valid
 @throws ClassCastException if the object is invalid
 @since 1.3
 */
- (IOSIntArray *)getPartialValuesWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)fieldSource
                                                         withId:(id)object
                                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                         withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)parser;

/**
 @brief Selects a suitable period type for the given object.
 @param object the object to examine
 @return the period type, never null
 */
- (OrgJodaTimePeriodType *)getPeriodTypeWithId:(id)object;

/**
 @brief Checks if the input is a ReadableInterval.
 <p> If it is, then the calling code should cast and copy the fields directly.
 @param object the object to convert
 @param chrono the chronology to use, may be null
 @return true if the input is a ReadableInterval
 */
- (BOOL)isReadableIntervalWithId:(id)object
       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Gets a debugging string version of this converter.
 @return a debugging string
 */
- (NSString *)description;

- (IOSClass *)getSupportedType;

@end

__attribute__((always_inline)) inline void OrgJodaTimeConvertAbstractConverter_init() {}

#endif // _OrgJodaTimeConvertAbstractConverter_H_
