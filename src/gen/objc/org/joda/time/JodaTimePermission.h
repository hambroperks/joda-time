//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/JodaTimePermission.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeJodaTimePermission")
#ifdef RESTRICT_OrgJodaTimeJodaTimePermission
#define INCLUDE_ALL_OrgJodaTimeJodaTimePermission 0
#else
#define INCLUDE_ALL_OrgJodaTimeJodaTimePermission 1
#endif
#undef RESTRICT_OrgJodaTimeJodaTimePermission

#if !defined (OrgJodaTimeJodaTimePermission_) && (INCLUDE_ALL_OrgJodaTimeJodaTimePermission || defined(INCLUDE_OrgJodaTimeJodaTimePermission))
#define OrgJodaTimeJodaTimePermission_

#define RESTRICT_JavaSecurityBasicPermission 1
#define INCLUDE_JavaSecurityBasicPermission 1
#include "java/security/BasicPermission.h"

/*!
 @brief JodaTimePermission is used for securing global method calls in the Joda-Time
 library.
 Since this class extends BasicPermission, asterisks may be used to
 denote wildcard permissions. The following permissions are supported:
 @code

  DateTimeZone
   .setDefault                 Allows a default DateTimeZone to be set
   .setProvider                Allows the DateTimeZone instance provider to be set
   .setNameProvider            Allows the DateTimeZone name provider to be set
  ConverterManager
   .alterInstantConverters     Allows an instant converter to be added or removed
   .alterPartialConverters     Allows a partial converter to be added or removed
   .alterDurationConverters    Allows a duration converter to be added or removed
   .alterPeriodConverters      Allows a period converter to be added or removed
   .alterIntervalConverters    Allows an interval converter to be added or removed
  CurrentTime.setProvider       Allows the current time provider to be set
  
@endcode
 <p>
 JodaTimePermission is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeJodaTimePermission : JavaSecurityBasicPermission

#pragma mark Public

/*!
 @brief Constructs a new permission object.
 @param name  the permission name
 */
- (instancetype)initWithNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeJodaTimePermission)

FOUNDATION_EXPORT void OrgJodaTimeJodaTimePermission_initWithNSString_(OrgJodaTimeJodaTimePermission *self, NSString *name);

FOUNDATION_EXPORT OrgJodaTimeJodaTimePermission *new_OrgJodaTimeJodaTimePermission_initWithNSString_(NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeJodaTimePermission *create_OrgJodaTimeJodaTimePermission_initWithNSString_(NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeJodaTimePermission)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeJodaTimePermission")
