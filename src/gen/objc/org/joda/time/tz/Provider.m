//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/tz/Provider.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/tz/Provider.h"

@interface OrgJodaTimeTzProvider : NSObject

@end

@implementation OrgJodaTimeTzProvider

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeDateTimeZone;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(getZoneWithNSString:);
  methods[1].selector = @selector(getAvailableIDs);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getZone", "LNSString;", "()Ljava/util/Set<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgJodaTimeTzProvider = { "Provider", "org.joda.time.tz", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeTzProvider;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgJodaTimeTzProvider)
