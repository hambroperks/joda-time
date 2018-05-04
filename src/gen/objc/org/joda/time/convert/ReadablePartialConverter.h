//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/convert/ReadablePartialConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertReadablePartialConverter")
#ifdef RESTRICT_OrgJodaTimeConvertReadablePartialConverter
#define INCLUDE_ALL_OrgJodaTimeConvertReadablePartialConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertReadablePartialConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertReadablePartialConverter

#if !defined (OrgJodaTimeConvertReadablePartialConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertReadablePartialConverter || defined(INCLUDE_OrgJodaTimeConvertReadablePartialConverter))
#define OrgJodaTimeConvertReadablePartialConverter_

#define RESTRICT_OrgJodaTimeConvertAbstractConverter 1
#define INCLUDE_OrgJodaTimeConvertAbstractConverter 1
#include "org/joda/time/convert/AbstractConverter.h"

#define RESTRICT_OrgJodaTimeConvertPartialConverter 1
#define INCLUDE_OrgJodaTimeConvertPartialConverter 1
#include "org/joda/time/convert/PartialConverter.h"

@class IOSClass;
@class IOSIntArray;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;
@protocol OrgJodaTimeReadablePartial;

@interface OrgJodaTimeConvertReadablePartialConverter : OrgJodaTimeConvertAbstractConverter < OrgJodaTimeConvertPartialConverter >

#pragma mark Public

- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                     withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                   withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

- (IOSIntArray *)getPartialValuesWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)fieldSource
                                                         withId:(id)object
                                      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

- (IOSClass *)getSupportedType;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeConvertReadablePartialConverter)

inline OrgJodaTimeConvertReadablePartialConverter *OrgJodaTimeConvertReadablePartialConverter_get_INSTANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeConvertReadablePartialConverter *OrgJodaTimeConvertReadablePartialConverter_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeConvertReadablePartialConverter, INSTANCE, OrgJodaTimeConvertReadablePartialConverter *)

FOUNDATION_EXPORT void OrgJodaTimeConvertReadablePartialConverter_init(OrgJodaTimeConvertReadablePartialConverter *self);

FOUNDATION_EXPORT OrgJodaTimeConvertReadablePartialConverter *new_OrgJodaTimeConvertReadablePartialConverter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeConvertReadablePartialConverter *create_OrgJodaTimeConvertReadablePartialConverter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertReadablePartialConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertReadablePartialConverter")
