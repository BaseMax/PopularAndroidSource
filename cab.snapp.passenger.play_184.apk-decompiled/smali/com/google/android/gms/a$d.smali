.class public final Lcom/google/android/gms/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x0

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraMaxZoomPreference:I = 0x2

.field public static final MapAttrs_cameraMinZoomPreference:I = 0x3

.field public static final MapAttrs_cameraTargetLat:I = 0x4

.field public static final MapAttrs_cameraTargetLng:I = 0x5

.field public static final MapAttrs_cameraTilt:I = 0x6

.field public static final MapAttrs_cameraZoom:I = 0x7

.field public static final MapAttrs_latLngBoundsNorthEastLatitude:I = 0x8

.field public static final MapAttrs_latLngBoundsNorthEastLongitude:I = 0x9

.field public static final MapAttrs_latLngBoundsSouthWestLatitude:I = 0xa

.field public static final MapAttrs_latLngBoundsSouthWestLongitude:I = 0xb

.field public static final MapAttrs_liteMode:I = 0xc

.field public static final MapAttrs_mapType:I = 0xd

.field public static final MapAttrs_uiCompass:I = 0xe

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x10

.field public static final MapAttrs_uiScrollGestures:I = 0x11

.field public static final MapAttrs_uiTiltGestures:I = 0x12

.field public static final MapAttrs_uiZoomControls:I = 0x13

.field public static final MapAttrs_uiZoomGestures:I = 0x14

.field public static final MapAttrs_useViewLifecycle:I = 0x15

.field public static final MapAttrs_zOrderOnTop:I = 0x16

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 141
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/a$d;->LoadingImageView:[I

    const/16 v1, 0x17

    new-array v1, v1, [I

    .line 145
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/gms/a$d;->MapAttrs:[I

    new-array v0, v0, [I

    .line 169
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/a$d;->SignInButton:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400b0
        0x7f0401a2
        0x7f0401a3
    .end array-data

    :array_1
    .array-data 4
        0x7f040046
        0x7f040088
        0x7f040089
        0x7f04008a
        0x7f04008b
        0x7f04008c
        0x7f04008d
        0x7f04008e
        0x7f0401bc
        0x7f0401bd
        0x7f0401be
        0x7f0401bf
        0x7f040213
        0x7f040219
        0x7f040363
        0x7f040364
        0x7f040365
        0x7f040366
        0x7f040368
        0x7f040369
        0x7f04036a
        0x7f04036d
        0x7f04037a
    .end array-data

    :array_2
    .array-data 4
        0x7f040083
        0x7f0400c7
        0x7f0402a9
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
