//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/convert/ReadableDurationConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertReadableDurationConverter")
#ifdef RESTRICT_OrgJodaTimeConvertReadableDurationConverter
#define INCLUDE_ALL_OrgJodaTimeConvertReadableDurationConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertReadableDurationConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertReadableDurationConverter

#if !defined (OrgJodaTimeConvertReadableDurationConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertReadableDurationConverter || defined(INCLUDE_OrgJodaTimeConvertReadableDurationConverter))
#define OrgJodaTimeConvertReadableDurationConverter_

#define RESTRICT_OrgJodaTimeConvertAbstractConverter 1
#define INCLUDE_OrgJodaTimeConvertAbstractConverter 1
#include "org/joda/time/convert/AbstractConverter.h"

#define RESTRICT_OrgJodaTimeConvertDurationConverter 1
#define INCLUDE_OrgJodaTimeConvertDurationConverter 1
#include "org/joda/time/convert/DurationConverter.h"

#define RESTRICT_OrgJodaTimeConvertPeriodConverter 1
#define INCLUDE_OrgJodaTimeConvertPeriodConverter 1
#include "org/joda/time/convert/PeriodConverter.h"

@class IOSClass;
@class OrgJodaTimeChronology;
@protocol OrgJodaTimeReadWritablePeriod;

/*!
 @brief ReadableDurationConverter extracts milliseconds and chronology from a ReadableDuration.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeConvertReadableDurationConverter : OrgJodaTimeConvertAbstractConverter < OrgJodaTimeConvertDurationConverter, OrgJodaTimeConvertPeriodConverter >

#pragma mark Public

/*!
 @brief Extracts the millis from an object of this convertor's type.
 @param object the object to convert, must not be null
 @return the millisecond value
 @throw NullPointerExceptionif the object is null
 @throw ClassCastExceptionif the object is an invalid type
 @throw IllegalArgumentExceptionif the object is invalid
 */
- (jlong)getDurationMillisWithId:(id)object;

/*!
 @brief Returns ReadableDuration.class.
 @return ReadableDuration.class
 */
- (IOSClass *)getSupportedType;

/*!
 @brief Extracts duration values from an object of this converter's type, and
  sets them into the given ReadWritableDuration.
 @param writablePeriod period to get modified
 @param object the object to convert, must not be null
 @param chrono the chronology to use, must not be null
 @throw NullPointerExceptionif the duration or object is null
 @throw ClassCastExceptionif the object is an invalid type
 @throw IllegalArgumentExceptionif the object is invalid
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

J2OBJC_STATIC_INIT(OrgJodaTimeConvertReadableDurationConverter)

/*!
 @brief Singleton instance.
 */
inline OrgJodaTimeConvertReadableDurationConverter *OrgJodaTimeConvertReadableDurationConverter_get_INSTANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeConvertReadableDurationConverter *OrgJodaTimeConvertReadableDurationConverter_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeConvertReadableDurationConverter, INSTANCE, OrgJodaTimeConvertReadableDurationConverter *)

FOUNDATION_EXPORT void OrgJodaTimeConvertReadableDurationConverter_init(OrgJodaTimeConvertReadableDurationConverter *self);

FOUNDATION_EXPORT OrgJodaTimeConvertReadableDurationConverter *new_OrgJodaTimeConvertReadableDurationConverter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeConvertReadableDurationConverter *create_OrgJodaTimeConvertReadableDurationConverter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertReadableDurationConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertReadableDurationConverter")
