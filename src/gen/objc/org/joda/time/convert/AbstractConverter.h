//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/convert/AbstractConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertAbstractConverter")
#ifdef RESTRICT_OrgJodaTimeConvertAbstractConverter
#define INCLUDE_ALL_OrgJodaTimeConvertAbstractConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertAbstractConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertAbstractConverter

#if !defined (OrgJodaTimeConvertAbstractConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertAbstractConverter || defined(INCLUDE_OrgJodaTimeConvertAbstractConverter))
#define OrgJodaTimeConvertAbstractConverter_

#define RESTRICT_OrgJodaTimeConvertConverter 1
#define INCLUDE_OrgJodaTimeConvertConverter 1
#include "org/joda/time/convert/Converter.h"

@class IOSIntArray;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeFormatDateTimeFormatter;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief AbstractConverter simplifies the process of implementing a converter.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeConvertAbstractConverter : NSObject < OrgJodaTimeConvertConverter >

#pragma mark Public

/*!
 @brief Extracts the chronology from an object of this convertor's type
  where the chronology is specified.
 <p>
  This implementation returns the chronology specified, or the
  ISO chronology in the default zone if null passed in.
 @param object the object to convert
 @param chrono the chronology to use, null means ISO default
 @return the chronology, never null
 */
- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                     withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Extracts the chronology from an object of this convertor's type
  where the time zone is specified.
 <p>
  This implementation returns the ISO chronology.
 @param object the object to convert
 @param zone the specified zone to use, null means default zone
 @return the chronology, never null
 */
- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                   withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Extracts the millis from an object of this convertor's type.
 <p>
  This implementation returns the current time.
 @param object the object to convert
 @param chrono the chronology to use, which is always non-null
 @return the millisecond value
 */
- (jlong)getInstantMillisWithId:(id)object
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Extracts the values of the partial from an object of this converter's type.
 The chrono parameter is a hint to the converter, should it require a
  chronology to aid in conversion. 
 <p>
  This implementation calls <code>Chronology)</code>.
 @param fieldSource a partial that provides access to the fields.   This partial may be incomplete and only getFieldType(int) should be used
 @param object the object to convert
 @param chrono the chronology to use, which is the non-null result of getChronology()
 @return the array of field values that match the fieldSource, must be non-null valid
 @throw ClassCastExceptionif the object is invalid
 */
- (IOSIntArray *)getPartialValuesWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)fieldSource
                                                         withId:(id)object
                                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Extracts the values of the partial from an object of this converter's type.
 The chrono parameter is a hint to the converter, should it require a
  chronology to aid in conversion. 
 <p>
  This implementation calls <code>Object, Chronology)</code>.
 @param fieldSource a partial that provides access to the fields.   This partial may be incomplete and only getFieldType(int) should be used
 @param object the object to convert
 @param chrono the chronology to use, which is the non-null result of getChronology()
 @param parser if converting from a String, the given parser is preferred
 @return the array of field values that match the fieldSource, must be non-null valid
 @throw ClassCastExceptionif the object is invalid
 @since 1.3
 */
- (IOSIntArray *)getPartialValuesWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)fieldSource
                                                         withId:(id)object
                                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono
                         withOrgJodaTimeFormatDateTimeFormatter:(OrgJodaTimeFormatDateTimeFormatter *)parser;

/*!
 @brief Selects a suitable period type for the given object.
 @param object the object to examine
 @return the period type, never null
 */
- (OrgJodaTimePeriodType *)getPeriodTypeWithId:(id)object;

/*!
 @brief Checks if the input is a ReadableInterval.
 <p>
  If it is, then the calling code should cast and copy the fields directly.
 @param object the object to convert
 @param chrono the chronology to use, may be null
 @return true if the input is a ReadableInterval
 */
- (jboolean)isReadableIntervalWithId:(id)object
           withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Gets a debugging string version of this converter.
 @return a debugging string
 */
- (NSString *)description;

#pragma mark Protected

/*!
 @brief Restricted constructor.
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeConvertAbstractConverter)

FOUNDATION_EXPORT void OrgJodaTimeConvertAbstractConverter_init(OrgJodaTimeConvertAbstractConverter *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertAbstractConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertAbstractConverter")
