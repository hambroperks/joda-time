//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/tz/Provider.java
//

#include "J2ObjC_source.h"
#include "java/util/Set.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/tz/Provider.h"

@interface OrgJodaTimeTzProvider : NSObject

@end

@implementation OrgJodaTimeTzProvider

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getZoneWithNSString:", "getZone", "Lorg.joda.time.DateTimeZone;", 0x401, NULL, NULL },
    { "getAvailableIDs", NULL, "Ljava.util.Set;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgJodaTimeTzProvider = { 2, "Provider", "org.joda.time.tz", NULL, 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeTzProvider;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJodaTimeTzProvider)
