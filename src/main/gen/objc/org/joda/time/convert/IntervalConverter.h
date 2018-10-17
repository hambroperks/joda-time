//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/convert/IntervalConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertIntervalConverter")
#ifdef RESTRICT_OrgJodaTimeConvertIntervalConverter
#define INCLUDE_ALL_OrgJodaTimeConvertIntervalConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertIntervalConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertIntervalConverter

#if !defined (OrgJodaTimeConvertIntervalConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertIntervalConverter || defined(INCLUDE_OrgJodaTimeConvertIntervalConverter))
#define OrgJodaTimeConvertIntervalConverter_

#define RESTRICT_OrgJodaTimeConvertConverter 1
#define INCLUDE_OrgJodaTimeConvertConverter 1
#include "org/joda/time/convert/Converter.h"

@class OrgJodaTimeChronology;
@protocol OrgJodaTimeReadWritableInterval;

/*!
 @brief IntervalConverter defines how an object is converted to an interval.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@protocol OrgJodaTimeConvertIntervalConverter < OrgJodaTimeConvertConverter, JavaObject >

/*!
 @brief Checks if the input is a ReadableInterval.
 <p>
 If it is, then the calling code should cast and copy the fields directly.
 @param object  the object to convert, must not be null
 @param chrono  the chronology to use, may be null
 @return true if the input is a ReadableInterval
 @throws ClassCastException if the object is invalid
 */
- (jboolean)isReadableIntervalWithId:(id)object
           withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Extracts interval endpoint values from an object of this converter's
 type, and sets them into the given ReadWritableInterval.
 @param writableInterval  interval to get modified, not null
 @param object  the object to convert, must not be null
 @param chrono  the chronology to use, may be null
 @throws ClassCastException if the object is invalid
 */
- (void)setIntoWithOrgJodaTimeReadWritableInterval:(id<OrgJodaTimeReadWritableInterval>)writableInterval
                                            withId:(id)object
                         withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeConvertIntervalConverter)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertIntervalConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertIntervalConverter")
