//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/LenientChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoLenientChronology")
#ifdef RESTRICT_OrgJodaTimeChronoLenientChronology
#define INCLUDE_ALL_OrgJodaTimeChronoLenientChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoLenientChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoLenientChronology

#if !defined (OrgJodaTimeChronoLenientChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoLenientChronology || defined(INCLUDE_OrgJodaTimeChronoLenientChronology))
#define OrgJodaTimeChronoLenientChronology_

#define RESTRICT_OrgJodaTimeChronoAssembledChronology 1
#define INCLUDE_OrgJodaTimeChronoAssembledChronology 1
#include "org/joda/time/chrono/AssembledChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

/*!
 @brief Wraps another Chronology, ensuring all the fields are lenient.
 <p>
  LenientChronology is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 - seealso: LenientDateTimeField
 - seealso: StrictChronology
 */
@interface OrgJodaTimeChronoLenientChronology : OrgJodaTimeChronoAssembledChronology

#pragma mark Public

/*!
 @brief A lenient chronology is only equal to a lenient chronology with the
  same base chronology.
 @param obj the object to compare to
 @return true if equal
 @since 1.4
 */
- (jboolean)isEqual:(id)obj;

/*!
 @brief Create a LenientChronology for any chronology.
 @param base the chronology to wrap
 @throw IllegalArgumentExceptionif chronology is null
 */
+ (OrgJodaTimeChronoLenientChronology *)getInstanceWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base;

/*!
 @brief A suitable hashcode for the chronology.
 @return the hashcode
 @since 1.4
 */
- (NSUInteger)hash;

/*!
 @brief A debugging string for the chronology.
 @return the debugging string
 */
- (NSString *)description;

- (OrgJodaTimeChronology *)withUTC;

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Protected

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)arg0
                                       withId:(id)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoLenientChronology)

FOUNDATION_EXPORT OrgJodaTimeChronoLenientChronology *OrgJodaTimeChronoLenientChronology_getInstanceWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoLenientChronology)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoLenientChronology")
