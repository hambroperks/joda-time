//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/UTCDateTimeZone.java
//

#include "J2ObjC_source.h"
#include "java/util/SimpleTimeZone.h"
#include "java/util/TimeZone.h"
#include "org/joda/time/DateTimeZone.h"
#include "org/joda/time/UTCDateTimeZone.h"

inline jlong OrgJodaTimeUTCDateTimeZone_get_serialVersionUID(void);
#define OrgJodaTimeUTCDateTimeZone_serialVersionUID -3513011772763289092LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeUTCDateTimeZone, serialVersionUID, jlong)

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeUTCDateTimeZone)

OrgJodaTimeDateTimeZone *OrgJodaTimeUTCDateTimeZone_INSTANCE;

@implementation OrgJodaTimeUTCDateTimeZone

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeUTCDateTimeZone_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getNameKeyWithLong:(jlong)instant {
  return @"UTC";
}

- (jint)getOffsetWithLong:(jlong)instant {
  return 0;
}

- (jint)getStandardOffsetWithLong:(jlong)instant {
  return 0;
}

- (jint)getOffsetFromLocalWithLong:(jlong)instantLocal {
  return 0;
}

- (jboolean)isFixed {
  return true;
}

- (jlong)nextTransitionWithLong:(jlong)instant {
  return instant;
}

- (jlong)previousTransitionWithLong:(jlong)instant {
  return instant;
}

- (JavaUtilTimeZone *)toTimeZone {
  return create_JavaUtilSimpleTimeZone_initWithInt_withNSString_(0, [self getID]);
}

- (jboolean)isEqual:(id)obj {
  return ([obj isKindOfClass:[OrgJodaTimeUTCDateTimeZone class]]);
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk([self getID])) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilTimeZone;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getNameKeyWithLong:);
  methods[2].selector = @selector(getOffsetWithLong:);
  methods[3].selector = @selector(getStandardOffsetWithLong:);
  methods[4].selector = @selector(getOffsetFromLocalWithLong:);
  methods[5].selector = @selector(isFixed);
  methods[6].selector = @selector(nextTransitionWithLong:);
  methods[7].selector = @selector(previousTransitionWithLong:);
  methods[8].selector = @selector(toTimeZone);
  methods[9].selector = @selector(isEqual:);
  methods[10].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LOrgJodaTimeDateTimeZone;", .constantValue.asLong = 0, 0x18, -1, 10, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeUTCDateTimeZone_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getNameKey", "J", "getOffset", "getStandardOffset", "getOffsetFromLocal", "nextTransition", "previousTransition", "equals", "LNSObject;", "hashCode", &OrgJodaTimeUTCDateTimeZone_INSTANCE };
  static const J2ObjcClassInfo _OrgJodaTimeUTCDateTimeZone = { "UTCDateTimeZone", "org.joda.time", ptrTable, methods, fields, 7, 0x10, 11, 2, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeUTCDateTimeZone;
}

+ (void)initialize {
  if (self == [OrgJodaTimeUTCDateTimeZone class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeUTCDateTimeZone_INSTANCE, new_OrgJodaTimeUTCDateTimeZone_init());
    J2OBJC_SET_INITIALIZED(OrgJodaTimeUTCDateTimeZone)
  }
}

@end

void OrgJodaTimeUTCDateTimeZone_init(OrgJodaTimeUTCDateTimeZone *self) {
  OrgJodaTimeDateTimeZone_initWithNSString_(self, @"UTC");
}

OrgJodaTimeUTCDateTimeZone *new_OrgJodaTimeUTCDateTimeZone_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeUTCDateTimeZone, init)
}

OrgJodaTimeUTCDateTimeZone *create_OrgJodaTimeUTCDateTimeZone_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeUTCDateTimeZone, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeUTCDateTimeZone)
