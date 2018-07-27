//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/convert/ReadablePeriodConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertReadablePeriodConverter")
#ifdef RESTRICT_OrgJodaTimeConvertReadablePeriodConverter
#define INCLUDE_ALL_OrgJodaTimeConvertReadablePeriodConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertReadablePeriodConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertReadablePeriodConverter

#if !defined (OrgJodaTimeConvertReadablePeriodConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertReadablePeriodConverter || defined(INCLUDE_OrgJodaTimeConvertReadablePeriodConverter))
#define OrgJodaTimeConvertReadablePeriodConverter_

#define RESTRICT_OrgJodaTimeConvertAbstractConverter 1
#define INCLUDE_OrgJodaTimeConvertAbstractConverter 1
#include "org/joda/time/convert/AbstractConverter.h"

#define RESTRICT_OrgJodaTimeConvertPeriodConverter 1
#define INCLUDE_OrgJodaTimeConvertPeriodConverter 1
#include "org/joda/time/convert/PeriodConverter.h"

@class IOSClass;
@class OrgJodaTimeChronology;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeReadWritablePeriod;

@interface OrgJodaTimeConvertReadablePeriodConverter : OrgJodaTimeConvertAbstractConverter < OrgJodaTimeConvertPeriodConverter >

#pragma mark Public

- (OrgJodaTimePeriodType *)getPeriodTypeWithId:(id)object;

- (IOSClass *)getSupportedType;

- (void)setIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)duration
                                          withId:(id)object
                       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeConvertReadablePeriodConverter)

inline OrgJodaTimeConvertReadablePeriodConverter *OrgJodaTimeConvertReadablePeriodConverter_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeConvertReadablePeriodConverter *OrgJodaTimeConvertReadablePeriodConverter_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeConvertReadablePeriodConverter, INSTANCE, OrgJodaTimeConvertReadablePeriodConverter *)

FOUNDATION_EXPORT void OrgJodaTimeConvertReadablePeriodConverter_init(OrgJodaTimeConvertReadablePeriodConverter *self);

FOUNDATION_EXPORT OrgJodaTimeConvertReadablePeriodConverter *new_OrgJodaTimeConvertReadablePeriodConverter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeConvertReadablePeriodConverter *create_OrgJodaTimeConvertReadablePeriodConverter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertReadablePeriodConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertReadablePeriodConverter")
