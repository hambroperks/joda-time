//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/chrono/StrictChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoStrictChronology")
#ifdef RESTRICT_OrgJodaTimeChronoStrictChronology
#define INCLUDE_ALL_OrgJodaTimeChronoStrictChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoStrictChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoStrictChronology

#if !defined (OrgJodaTimeChronoStrictChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoStrictChronology || defined(INCLUDE_OrgJodaTimeChronoStrictChronology))
#define OrgJodaTimeChronoStrictChronology_

#define RESTRICT_OrgJodaTimeChronoAssembledChronology 1
#define INCLUDE_OrgJodaTimeChronoAssembledChronology 1
#include "org/joda/time/chrono/AssembledChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

/*!
 @brief Wraps another Chronology, ensuring all the fields are strict.
 <p>
 StrictChronology is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 - seealso: StrictDateTimeField
 - seealso: LenientChronology
 */
@interface OrgJodaTimeChronoStrictChronology : OrgJodaTimeChronoAssembledChronology

#pragma mark Public

/*!
 @brief A strict chronology is only equal to a strict chronology with the
 same base chronology.
 @param obj  the object to compare to
 @return true if equal
 @since 1.4
 */
- (jboolean)isEqual:(id)obj;

/*!
 @brief Create a StrictChronology for any chronology.
 @param base the chronology to wrap
 @throws IllegalArgumentException if chronology is null
 */
+ (OrgJodaTimeChronoStrictChronology *)getInstanceWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base;

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

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoStrictChronology)

FOUNDATION_EXPORT OrgJodaTimeChronoStrictChronology *OrgJodaTimeChronoStrictChronology_getInstanceWithOrgJodaTimeChronology_(OrgJodaTimeChronology *base);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoStrictChronology)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoStrictChronology")
