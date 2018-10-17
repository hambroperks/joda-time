//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/convert/DateConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertDateConverter")
#ifdef RESTRICT_OrgJodaTimeConvertDateConverter
#define INCLUDE_ALL_OrgJodaTimeConvertDateConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertDateConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertDateConverter

#if !defined (OrgJodaTimeConvertDateConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertDateConverter || defined(INCLUDE_OrgJodaTimeConvertDateConverter))
#define OrgJodaTimeConvertDateConverter_

#define RESTRICT_OrgJodaTimeConvertAbstractConverter 1
#define INCLUDE_OrgJodaTimeConvertAbstractConverter 1
#include "org/joda/time/convert/AbstractConverter.h"

#define RESTRICT_OrgJodaTimeConvertInstantConverter 1
#define INCLUDE_OrgJodaTimeConvertInstantConverter 1
#include "org/joda/time/convert/InstantConverter.h"

#define RESTRICT_OrgJodaTimeConvertPartialConverter 1
#define INCLUDE_OrgJodaTimeConvertPartialConverter 1
#include "org/joda/time/convert/PartialConverter.h"

@class IOSClass;
@class OrgJodaTimeChronology;

/*!
 @brief DateConverter converts a java util Date to an instant or partial.
 The Date is converted to milliseconds in the ISO chronology.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeConvertDateConverter : OrgJodaTimeConvertAbstractConverter < OrgJodaTimeConvertInstantConverter, OrgJodaTimeConvertPartialConverter >

#pragma mark Public

/*!
 @brief Gets the millis, which is the Date millis value.
 @param object  the Date to convert, must not be null
 @param chrono  the non-null result of getChronology
 @return the millisecond value
 @throws NullPointerException if the object is null
 @throws ClassCastException if the object is an invalid type
 */
- (jlong)getInstantMillisWithId:(id)object
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Returns Date.class.
 @return Date.class
 */
- (IOSClass *)getSupportedType;

#pragma mark Protected

/*!
 @brief Restricted constructor.
 */
- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeConvertDateConverter)

/*!
 @brief Singleton instance.
 */
inline OrgJodaTimeConvertDateConverter *OrgJodaTimeConvertDateConverter_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeConvertDateConverter *OrgJodaTimeConvertDateConverter_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeConvertDateConverter, INSTANCE, OrgJodaTimeConvertDateConverter *)

FOUNDATION_EXPORT void OrgJodaTimeConvertDateConverter_init(OrgJodaTimeConvertDateConverter *self);

FOUNDATION_EXPORT OrgJodaTimeConvertDateConverter *new_OrgJodaTimeConvertDateConverter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeConvertDateConverter *create_OrgJodaTimeConvertDateConverter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertDateConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertDateConverter")
