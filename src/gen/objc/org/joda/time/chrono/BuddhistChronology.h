//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/chrono/BuddhistChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoBuddhistChronology")
#ifdef RESTRICT_OrgJodaTimeChronoBuddhistChronology
#define INCLUDE_ALL_OrgJodaTimeChronoBuddhistChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoBuddhistChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoBuddhistChronology

#if !defined (OrgJodaTimeChronoBuddhistChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoBuddhistChronology || defined(INCLUDE_OrgJodaTimeChronoBuddhistChronology))
#define OrgJodaTimeChronoBuddhistChronology_

#define RESTRICT_OrgJodaTimeChronoAssembledChronology 1
#define INCLUDE_OrgJodaTimeChronoAssembledChronology 1
#include "org/joda/time/chrono/AssembledChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

@interface OrgJodaTimeChronoBuddhistChronology : OrgJodaTimeChronoAssembledChronology

#pragma mark Public

- (jboolean)isEqual:(id)obj;

+ (OrgJodaTimeChronoBuddhistChronology *)getInstance;

+ (OrgJodaTimeChronoBuddhistChronology *)getInstanceWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

+ (OrgJodaTimeChronoBuddhistChronology *)getInstanceUTC;

- (NSUInteger)hash;

- (NSString *)description;

- (OrgJodaTimeChronology *)withUTC;

- (OrgJodaTimeChronology *)withZoneWithOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

#pragma mark Protected

- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeChronoBuddhistChronology)

inline jint OrgJodaTimeChronoBuddhistChronology_get_BE(void);
#define OrgJodaTimeChronoBuddhistChronology_BE 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeChronoBuddhistChronology, BE, jint)

FOUNDATION_EXPORT OrgJodaTimeChronoBuddhistChronology *OrgJodaTimeChronoBuddhistChronology_getInstanceUTC(void);

FOUNDATION_EXPORT OrgJodaTimeChronoBuddhistChronology *OrgJodaTimeChronoBuddhistChronology_getInstance(void);

FOUNDATION_EXPORT OrgJodaTimeChronoBuddhistChronology *OrgJodaTimeChronoBuddhistChronology_getInstanceWithOrgJodaTimeDateTimeZone_(OrgJodaTimeDateTimeZone *zone);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoBuddhistChronology)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoBuddhistChronology")
