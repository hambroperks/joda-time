//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/convert/ReadableIntervalConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertReadableIntervalConverter")
#ifdef RESTRICT_OrgJodaTimeConvertReadableIntervalConverter
#define INCLUDE_ALL_OrgJodaTimeConvertReadableIntervalConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertReadableIntervalConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertReadableIntervalConverter

#if !defined (OrgJodaTimeConvertReadableIntervalConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertReadableIntervalConverter || defined(INCLUDE_OrgJodaTimeConvertReadableIntervalConverter))
#define OrgJodaTimeConvertReadableIntervalConverter_

#define RESTRICT_OrgJodaTimeConvertAbstractConverter 1
#define INCLUDE_OrgJodaTimeConvertAbstractConverter 1
#include "org/joda/time/convert/AbstractConverter.h"

#define RESTRICT_OrgJodaTimeConvertIntervalConverter 1
#define INCLUDE_OrgJodaTimeConvertIntervalConverter 1
#include "org/joda/time/convert/IntervalConverter.h"

#define RESTRICT_OrgJodaTimeConvertDurationConverter 1
#define INCLUDE_OrgJodaTimeConvertDurationConverter 1
#include "org/joda/time/convert/DurationConverter.h"

#define RESTRICT_OrgJodaTimeConvertPeriodConverter 1
#define INCLUDE_OrgJodaTimeConvertPeriodConverter 1
#include "org/joda/time/convert/PeriodConverter.h"

@class IOSClass;
@class OrgJodaTimeChronology;
@protocol OrgJodaTimeReadWritableInterval;
@protocol OrgJodaTimeReadWritablePeriod;

/*!
 @brief Converts intervals into durations of any requested period type.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeConvertReadableIntervalConverter : OrgJodaTimeConvertAbstractConverter < OrgJodaTimeConvertIntervalConverter, OrgJodaTimeConvertDurationConverter, OrgJodaTimeConvertPeriodConverter >

#pragma mark Public

/*!
 @brief Gets the millisecond length of the interval.
 @param object the interval
 */
- (jlong)getDurationMillisWithId:(id)object;

/*!
 @brief Returns ReadableInterval.class.
 */
- (IOSClass *)getSupportedType;

/*!
 @brief Checks if the input is a ReadableInterval.
 <p>
  If it is, then the calling code should cast and copy the fields directly.
 @param object the object to convert, must not be null
 @param chrono the chronology to use, may be null
 @return true if the input is a ReadableInterval
 @throw ClassCastExceptionif the object is invalid
 */
- (jboolean)isReadableIntervalWithId:(id)object
           withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Extracts interval endpoint values from an object of this converter's
  type, and sets them into the given ReadWritableInterval.
 @param writableInterval interval to get modified, not null
 @param object the object to convert, must not be null
 @param chrono the chronology to use, may be null
 @throw ClassCastExceptionif the object is invalid
 */
- (void)setIntoWithOrgJodaTimeReadWritableInterval:(id<OrgJodaTimeReadWritableInterval>)writableInterval
                                            withId:(id)object
                         withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Sets the values of the mutable duration from the specified interval.
 @param writablePeriod the period to modify
 @param object the interval to set from
 @param chrono the chronology to use
 */
- (void)setIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)writablePeriod
                                          withId:(id)object
                       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

#pragma mark Protected

/*!
 @brief Restricted constructor.
 */
- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeConvertReadableIntervalConverter)

/*!
 @brief Singleton instance.
 */
inline OrgJodaTimeConvertReadableIntervalConverter *OrgJodaTimeConvertReadableIntervalConverter_get_INSTANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeConvertReadableIntervalConverter *OrgJodaTimeConvertReadableIntervalConverter_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeConvertReadableIntervalConverter, INSTANCE, OrgJodaTimeConvertReadableIntervalConverter *)

FOUNDATION_EXPORT void OrgJodaTimeConvertReadableIntervalConverter_init(OrgJodaTimeConvertReadableIntervalConverter *self);

FOUNDATION_EXPORT OrgJodaTimeConvertReadableIntervalConverter *new_OrgJodaTimeConvertReadableIntervalConverter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeConvertReadableIntervalConverter *create_OrgJodaTimeConvertReadableIntervalConverter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertReadableIntervalConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertReadableIntervalConverter")
