//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/base/AbstractDuration.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/annotation/Annotation.h"
#include "org/joda/convert/ToString.h"
#include "org/joda/time/Duration.h"
#include "org/joda/time/Period.h"
#include "org/joda/time/ReadableDuration.h"
#include "org/joda/time/base/AbstractDuration.h"
#include "org/joda/time/format/FormatUtils.h"

#pragma clang diagnostic ignored "-Wprotocol"

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeBaseAbstractDuration__Annotations$0();

@implementation OrgJodaTimeBaseAbstractDuration

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeBaseAbstractDuration_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgJodaTimeDuration *)toDuration {
  return create_OrgJodaTimeDuration_initWithLong_([self getMillis]);
}

- (OrgJodaTimePeriod *)toPeriod {
  return create_OrgJodaTimePeriod_initWithLong_([self getMillis]);
}

- (jint)compareToWithId:(id<OrgJodaTimeReadableDuration>)other {
  cast_check(other, OrgJodaTimeReadableDuration_class_());
  jlong thisMillis = [self getMillis];
  jlong otherMillis = [((id<OrgJodaTimeReadableDuration>) nil_chk(other)) getMillis];
  if (thisMillis < otherMillis) {
    return -1;
  }
  if (thisMillis > otherMillis) {
    return 1;
  }
  return 0;
}

- (jboolean)isEqualWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  if (duration == nil) {
    duration = JreLoadStatic(OrgJodaTimeDuration, ZERO);
  }
  return [self compareToWithId:duration] == 0;
}

- (jboolean)isLongerThanWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  if (duration == nil) {
    duration = JreLoadStatic(OrgJodaTimeDuration, ZERO);
  }
  return [self compareToWithId:duration] > 0;
}

- (jboolean)isShorterThanWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  if (duration == nil) {
    duration = JreLoadStatic(OrgJodaTimeDuration, ZERO);
  }
  return [self compareToWithId:duration] < 0;
}

- (jboolean)isEqual:(id)duration {
  if (self == duration) {
    return true;
  }
  if ([OrgJodaTimeReadableDuration_class_() isInstance:duration] == false) {
    return false;
  }
  id<OrgJodaTimeReadableDuration> other = (id<OrgJodaTimeReadableDuration>) cast_check(duration, OrgJodaTimeReadableDuration_class_());
  return [self getMillis] == [((id<OrgJodaTimeReadableDuration>) nil_chk(other)) getMillis];
}

- (NSUInteger)hash {
  jlong len = [self getMillis];
  return (jint) (len ^ (JreURShift64(len, 32)));
}

- (NSString *)description {
  jlong millis = [self getMillis];
  JavaLangStringBuffer *buf = create_JavaLangStringBuffer_init();
  [buf appendWithNSString:@"PT"];
  jboolean negative = (millis < 0);
  OrgJodaTimeFormatFormatUtils_appendUnpaddedIntegerWithJavaLangStringBuffer_withLong_(buf, millis);
  while ([buf length] < (negative ? 7 : 6)) {
    [buf insertWithInt:negative ? 3 : 2 withNSString:@"0"];
  }
  if ((millis / 1000) * 1000 == millis) {
    [buf setLengthWithInt:[buf length] - 3];
  }
  else {
    [buf insertWithInt:[buf length] - 3 withNSString:@"."];
  }
  [buf appendWithChar:'S'];
  return [buf description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDuration;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriod;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, 9, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toDuration);
  methods[2].selector = @selector(toPeriod);
  methods[3].selector = @selector(compareToWithId:);
  methods[4].selector = @selector(isEqualWithOrgJodaTimeReadableDuration:);
  methods[5].selector = @selector(isLongerThanWithOrgJodaTimeReadableDuration:);
  methods[6].selector = @selector(isShorterThanWithOrgJodaTimeReadableDuration:);
  methods[7].selector = @selector(isEqual:);
  methods[8].selector = @selector(hash);
  methods[9].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compareTo", "LOrgJodaTimeReadableDuration;", "isEqual", "isLongerThan", "isShorterThan", "equals", "LNSObject;", "hashCode", "toString", (void *)&OrgJodaTimeBaseAbstractDuration__Annotations$0 };
  static const J2ObjcClassInfo _OrgJodaTimeBaseAbstractDuration = { "AbstractDuration", "org.joda.time.base", ptrTable, methods, NULL, 7, 0x401, 10, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeBaseAbstractDuration;
}

@end

void OrgJodaTimeBaseAbstractDuration_init(OrgJodaTimeBaseAbstractDuration *self) {
  NSObject_init(self);
}

IOSObjectArray *OrgJodaTimeBaseAbstractDuration__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertToString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseAbstractDuration)
