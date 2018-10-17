//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/chrono/ISOChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoISOChronology")
#ifdef RESTRICT_OrgJodaTimeChronoISOChronology
#define INCLUDE_ALL_OrgJodaTimeChronoISOChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoISOChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoISOChronology

#if !defined (OrgJodaTimeChronoISOChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoISOChronology || defined(INCLUDE_OrgJodaTimeChronoISOChronology))
#define OrgJodaTimeChronoISOChronology_

#define RESTRICT_OrgJodaTimeChronoAssembledChronology 1
#define INCLUDE_OrgJodaTimeChronoAssembledChronology 1
#include "org/joda/time/chrono/AssembledChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

/*!
 @brief Implements a chronology that follows the rules of the ISO8601 standard,
 which is compatible with Gregorian for all modern dates.
 When ISO does not define a field, but it can be determined (such as AM/PM)
 it is included.
 <p>
 With the exception of century related fields, ISOChronology is exactly the
 same as <code>GregorianChronology</code>. In this chronology, centuries and year
 of century are zero based. For all years, the century is determined by
 dropping the last two digits of the year, ignoring sign. The year of century
 is the value of the last two year digits.
 <p>
 ISOChronology is thread-safe and immutable.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeChronoISOChronology : OrgJodaTimeChronoAssembledChronology

#pragma mark Public

/*!
 @brief Checks if this chronology instance equals another.
 @param obj  the object to compare to
 @return true if equal
 @since 1.6
 */
- (jboolean)isEqual:(id)obj;

/*!
 @brief Gets an instance of the ISOChronology in the default time zone.
 @return a chronology in the default time zone
 */
+ (OrgJodaTimeChronoISOChronology *)getInstance;

/*!
 @brief Gets an instance of the ISOChronology in the given time zone.
 @param zone  the time zone to get the chronology in, null is default
 @return a chronology in the specified time zone
 */
+ (OrgJodaTimeChronoISOChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Gets an instance of the ISOChronology.
 The time zone of the returned instance is UTC.
 @return a singleton UTC instance of the chronology
 */
+ (OrgJodaTimeChronoISOChronology *)getInstanceUTC;

/*!
 @brief A suitable hash code for the chronology.
 @return the hash code
 @since 1.6
 */
- (NSUInteger)hash;

/*!
 @brief Gets a debugging toString.
 @return a debugging string
 */
- (NSString *)description;

/*!
 @brief Gets the Chronology in the UTC time zone.
 @return the chronology in UTC
 */
- (OrgJodaTimeChronology *)withUTC;

/*!
 @brief Gets the Chronology in a specific time zone.
 @param zone  the zone to get the chronology in, null is default
 @return the chronology
 */
- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Protected

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeChronoISOChronology)

FOUNDATION_EXPORT OrgJodaTimeChronoISOChronology *OrgJodaTimeChronoISOChronology_getInstanceUTC();

FOUNDATION_EXPORT OrgJodaTimeChronoISOChronology *OrgJodaTimeChronoISOChronology_getInstance();

FOUNDATION_EXPORT OrgJodaTimeChronoISOChronology *OrgJodaTimeChronoISOChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoISOChronology)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoISOChronology")
