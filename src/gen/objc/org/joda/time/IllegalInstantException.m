//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/IllegalInstantException.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Throwable.h"
#include "org/joda/time/IllegalInstantException.h"
#include "org/joda/time/Instant.h"
#include "org/joda/time/format/DateTimeFormat.h"
#include "org/joda/time/format/DateTimeFormatter.h"

#define OrgJodaTimeIllegalInstantException_serialVersionUID 2858712538216LL

@interface OrgJodaTimeIllegalInstantException ()

+ (NSString *)createMessageWithLong:(jlong)instantLocal
                       withNSString:(NSString *)zoneId;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeIllegalInstantException, serialVersionUID, jlong)

__attribute__((unused)) static NSString *OrgJodaTimeIllegalInstantException_createMessageWithLong_withNSString_(jlong instantLocal, NSString *zoneId);

@implementation OrgJodaTimeIllegalInstantException

- (instancetype)initWithNSString:(NSString *)message {
  OrgJodaTimeIllegalInstantException_initWithNSString_(self, message);
  return self;
}

- (instancetype)initWithLong:(jlong)instantLocal
                withNSString:(NSString *)zoneId {
  OrgJodaTimeIllegalInstantException_initWithLong_withNSString_(self, instantLocal, zoneId);
  return self;
}

+ (NSString *)createMessageWithLong:(jlong)instantLocal
                       withNSString:(NSString *)zoneId {
  return OrgJodaTimeIllegalInstantException_createMessageWithLong_withNSString_(instantLocal, zoneId);
}

+ (jboolean)isIllegalInstantWithJavaLangThrowable:(JavaLangThrowable *)ex {
  return OrgJodaTimeIllegalInstantException_isIllegalInstantWithJavaLangThrowable_(ex);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "IllegalInstantException", NULL, 0x1, NULL, NULL },
    { "initWithLong:withNSString:", "IllegalInstantException", NULL, 0x1, NULL, NULL },
    { "createMessageWithLong:withNSString:", "createMessage", "Ljava.lang.String;", 0xa, NULL, NULL },
    { "isIllegalInstantWithJavaLangThrowable:", "isIllegalInstant", "Z", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgJodaTimeIllegalInstantException_serialVersionUID },
  };
  static const J2ObjcClassInfo _OrgJodaTimeIllegalInstantException = { 2, "IllegalInstantException", "org.joda.time", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeIllegalInstantException;
}

@end

void OrgJodaTimeIllegalInstantException_initWithNSString_(OrgJodaTimeIllegalInstantException *self, NSString *message) {
  JavaLangIllegalArgumentException_initWithNSString_(self, message);
}

OrgJodaTimeIllegalInstantException *new_OrgJodaTimeIllegalInstantException_initWithNSString_(NSString *message) {
  OrgJodaTimeIllegalInstantException *self = [OrgJodaTimeIllegalInstantException alloc];
  OrgJodaTimeIllegalInstantException_initWithNSString_(self, message);
  return self;
}

void OrgJodaTimeIllegalInstantException_initWithLong_withNSString_(OrgJodaTimeIllegalInstantException *self, jlong instantLocal, NSString *zoneId) {
  JavaLangIllegalArgumentException_initWithNSString_(self, OrgJodaTimeIllegalInstantException_createMessageWithLong_withNSString_(instantLocal, zoneId));
}

OrgJodaTimeIllegalInstantException *new_OrgJodaTimeIllegalInstantException_initWithLong_withNSString_(jlong instantLocal, NSString *zoneId) {
  OrgJodaTimeIllegalInstantException *self = [OrgJodaTimeIllegalInstantException alloc];
  OrgJodaTimeIllegalInstantException_initWithLong_withNSString_(self, instantLocal, zoneId);
  return self;
}

NSString *OrgJodaTimeIllegalInstantException_createMessageWithLong_withNSString_(jlong instantLocal, NSString *zoneId) {
  OrgJodaTimeIllegalInstantException_initialize();
  NSString *localDateTime = [((OrgJodaTimeFormatDateTimeFormatter *) nil_chk(OrgJodaTimeFormatDateTimeFormat_forPatternWithNSString_(@"yyyy-MM-dd'T'HH:mm:ss.SSS"))) printWithOrgJodaTimeReadableInstant:[new_OrgJodaTimeInstant_initWithLong_(instantLocal) autorelease]];
  NSString *zone = (zoneId != nil ? JreStrcat("$$C", @" (", zoneId, ')') : @"");
  return JreStrcat("$$$", @"Illegal instant due to time zone offset transition (daylight savings time 'gap'): ", localDateTime, zone);
}

jboolean OrgJodaTimeIllegalInstantException_isIllegalInstantWithJavaLangThrowable_(JavaLangThrowable *ex) {
  OrgJodaTimeIllegalInstantException_initialize();
  if ([ex isKindOfClass:[OrgJodaTimeIllegalInstantException class]]) {
    return YES;
  }
  while ([((JavaLangThrowable *) nil_chk(ex)) getCause] != nil && [ex getCause] != ex) {
    return OrgJodaTimeIllegalInstantException_isIllegalInstantWithJavaLangThrowable_([ex getCause]);
  }
  return NO;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeIllegalInstantException)
