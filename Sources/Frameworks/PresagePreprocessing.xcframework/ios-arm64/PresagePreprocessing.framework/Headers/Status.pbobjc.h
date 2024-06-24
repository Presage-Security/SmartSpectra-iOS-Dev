// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: modules/messages/status.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30004
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30004 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum StatusCode

typedef GPB_ENUM(StatusCode) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  StatusCode_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  StatusCode_Ok = 0,
  StatusCode_NoFacesFound = 1,
  StatusCode_MoreThanOneFaceFound = 2,
  StatusCode_FaceNotCentered = 3,
  StatusCode_FaceTooBigOrTooSmall = 4,
  StatusCode_ImageTooDark = 5,
  StatusCode_ImageTooBright = 6,
  StatusCode_ChestTooFarOrNotEnoughShowing = 7,
  StatusCode_ProcessingNotStarted = 8,
};

GPBEnumDescriptor *StatusCode_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL StatusCode_IsValidValue(int32_t value);

#pragma mark - StatusRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
GPB_FINAL @interface StatusRoot : GPBRootObject
@end

#pragma mark - StatusValue

typedef GPB_ENUM(StatusValue_FieldNumber) {
  StatusValue_FieldNumber_Value = 1,
};

GPB_FINAL @interface StatusValue : GPBMessage


@property(nonatomic, readwrite) StatusCode value;

@end

/**
 * Fetches the raw value of a @c StatusValue's @c value property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t StatusValue_Value_RawValue(StatusValue *message);
/**
 * Sets the raw value of an @c StatusValue's @c value property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetStatusValue_Value_RawValue(StatusValue *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)