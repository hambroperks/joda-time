//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/GenTz.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/GenTz.h"

@implementation OrgJodaTimeGenTz

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgJodaTimeGenTz_mainWithNSStringArray_(args);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeGenTz_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(mainWithNSStringArray:);
  methods[1].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "main", "[LNSString;" };
  static const J2ObjcClassInfo _OrgJodaTimeGenTz = { "GenTz", "org.joda.time", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeGenTz;
}

@end

void OrgJodaTimeGenTz_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgJodaTimeGenTz_initialize();
  create_OrgJodaTimeDateTime_initWithLong_(0);
}

void OrgJodaTimeGenTz_init(OrgJodaTimeGenTz *self) {
  NSObject_init(self);
}

OrgJodaTimeGenTz *new_OrgJodaTimeGenTz_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeGenTz, init)
}

OrgJodaTimeGenTz *create_OrgJodaTimeGenTz_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeGenTz, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeGenTz)
