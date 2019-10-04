.class public Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;
    }
.end annotation


# static fields
.field private static final ACCURACY_ALPHA_DEFAULT:F = 0.15f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_ZOOM_ICON_SCALE_DEFAULT:F = 1.0f

.field private static final MIN_ZOOM_ICON_SCALE_DEFAULT:F = 0.6f

.field private static final PADDING_DEFAULT:[I

.field private static final STALE_STATE_DELAY_MS:J = 0x7530L

.field private static final TRACKING_ANIMATION_DURATION_MULTIPLIER_DEFAULT:F = 1.1f


# instance fields
.field private accuracyAlpha:F

.field private accuracyAnimationEnabled:Z

.field private accuracyColor:I

.field private backgroundDrawable:I

.field private backgroundDrawableStale:I

.field private backgroundName:Ljava/lang/String;

.field private backgroundStaleName:Ljava/lang/String;

.field private backgroundStaleTintColor:Ljava/lang/Integer;

.field private backgroundTintColor:Ljava/lang/Integer;

.field private bearingDrawable:I

.field private bearingName:Ljava/lang/String;

.field private bearingTintColor:Ljava/lang/Integer;

.field private compassAnimationEnabled:Z

.field private elevation:F

.field private enableStaleState:Z

.field private foregroundDrawable:I

.field private foregroundDrawableStale:I

.field private foregroundName:Ljava/lang/String;

.field private foregroundStaleName:Ljava/lang/String;

.field private foregroundStaleTintColor:Ljava/lang/Integer;

.field private foregroundTintColor:Ljava/lang/Integer;

.field private gpsDrawable:I

.field private gpsName:Ljava/lang/String;

.field private layerAbove:Ljava/lang/String;

.field private layerBelow:Ljava/lang/String;

.field private maxZoomIconScale:F

.field private minZoomIconScale:F

.field private padding:[I

.field private staleStateTimeout:J

.field private trackingAnimationDurationMultiplier:F

.field private trackingGesturesManagement:Z

.field private trackingInitialMoveThreshold:F

.field private trackingMultiFingerMoveThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 60
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->PADDING_DEFAULT:[I

    .line 939
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$1;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$1;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(FIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;FZJ[IFFZFFLjava/lang/String;Ljava/lang/String;FZZ)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p24

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 152
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAlpha:F

    move v2, p2

    .line 153
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyColor:I

    move v2, p3

    .line 154
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawableStale:I

    move-object v2, p4

    .line 155
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    move v2, p5

    .line 156
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawableStale:I

    move-object v2, p6

    .line 157
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    move v2, p7

    .line 158
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable:I

    move-object v2, p8

    .line 159
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    move v2, p9

    .line 160
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawable:I

    move-object v2, p10

    .line 161
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    move v2, p11

    .line 162
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawable:I

    move-object/from16 v2, p12

    .line 163
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    move/from16 v2, p13

    .line 164
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingDrawable:I

    move-object/from16 v2, p14

    .line 165
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    move-object/from16 v2, p15

    .line 166
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    move-object/from16 v2, p16

    .line 167
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    move-object/from16 v2, p17

    .line 168
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    move-object/from16 v2, p18

    .line 169
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    move-object/from16 v2, p19

    .line 170
    iput-object v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    move/from16 v2, p20

    .line 171
    iput v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->elevation:F

    move/from16 v2, p21

    .line 172
    iput-boolean v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState:Z

    move-wide/from16 v2, p22

    .line 173
    iput-wide v2, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->staleStateTimeout:J

    if-eqz v1, :cond_0

    .line 177
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->padding:[I

    move/from16 v1, p25

    .line 178
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->maxZoomIconScale:F

    move/from16 v1, p26

    .line 179
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->minZoomIconScale:F

    move/from16 v1, p27

    .line 180
    iput-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement:Z

    move/from16 v1, p28

    .line 181
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    move/from16 v1, p29

    .line 182
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    move-object/from16 v1, p30

    .line 183
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 184
    iput-object v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    move/from16 v1, p32

    .line 185
    iput v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    move/from16 v1, p33

    .line 186
    iput-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->compassAnimationEnabled:Z

    move/from16 v1, p34

    .line 187
    iput-boolean v1, v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    return-void

    .line 175
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null padding"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static builder(Landroid/content/Context;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;
    .locals 1

    .line 332
    sget v0, Lcom/mapbox/mapboxsdk/R$style;->mapbox_LocationComponent:I

    invoke-static {p0, v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->toBuilder()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAttributes(Landroid/content/Context;I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;
    .locals 8

    .line 204
    sget-object v0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 207
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 208
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->enableStaleState(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7530

    .line 209
    invoke-virtual {v0, v2, v3}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->staleStateTimeout(J)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 210
    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->maxZoomIconScale(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    move-result-object v0

    const v3, 0x3f19999a    # 0.6f

    .line 211
    invoke-virtual {v0, v3}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->minZoomIconScale(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    move-result-object v0

    sget-object v4, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->PADDING_DEFAULT:[I

    .line 212
    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->padding([I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    move-result-object v0

    .line 214
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_foregroundDrawable:I

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->foregroundDrawable(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 216
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_foregroundTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_foregroundTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->foregroundTintColor(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 220
    :cond_0
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_backgroundDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->backgroundDrawable(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 222
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_backgroundTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_backgroundTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->backgroundTintColor(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 226
    :cond_1
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_foregroundDrawableStale:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->foregroundDrawableStale(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 228
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_foregroundStaleTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_foregroundStaleTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->foregroundStaleTintColor(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 232
    :cond_2
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_backgroundDrawableStale:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->backgroundDrawableStale(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 234
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_backgroundStaleTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_backgroundStaleTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->backgroundStaleTintColor(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 238
    :cond_3
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_bearingDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->bearingDrawable(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 240
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_bearingTintColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 241
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_bearingTintColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->bearingTintColor(Ljava/lang/Integer;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 244
    :cond_4
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_enableStaleState:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 245
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_enableStaleState:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->enableStaleState(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 248
    :cond_5
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_staleStateTimeout:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 249
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_staleStateTimeout:I

    const/16 v6, 0x7530

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->staleStateTimeout(J)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 252
    :cond_6
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_gpsDrawable:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->gpsDrawable(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 254
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_elevation:I

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 256
    sget v6, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_accuracyColor:I

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->accuracyColor(I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 258
    sget v5, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_accuracyAlpha:I

    const v6, 0x3e19999a    # 0.15f

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->accuracyAlpha(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 260
    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->elevation(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 262
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_trackingGesturesManagement:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->trackingGesturesManagement(Z)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 264
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_trackingInitialMoveThreshold:I

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_locationComponentTrackingInitialMoveThreshold:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 264
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->trackingInitialMoveThreshold(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 267
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_trackingMultiFingerMoveThreshold:I

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v6, Lcom/mapbox/mapboxsdk/R$dimen;->mapbox_locationComponentTrackingMultiFingerMoveThreshold:I

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 267
    invoke-virtual {p1, v4, p0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->trackingMultiFingerMoveThreshold(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 271
    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_iconPaddingLeft:I

    .line 272
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    aput v4, p0, v5

    sget v4, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_iconPaddingTop:I

    .line 273
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    aput v4, p0, v1

    const/4 v4, 0x2

    sget v6, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_iconPaddingRight:I

    .line 274
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aput v6, p0, v4

    const/4 v4, 0x3

    sget v6, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_iconPaddingBottom:I

    .line 275
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aput v5, p0, v4

    .line 271
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->padding([I)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 278
    sget p0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_layer_above:I

    .line 279
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->layerAbove(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 281
    sget p0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_layer_below:I

    .line 282
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 281
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->layerBelow(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 284
    sget p0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_minZoomIconScale:I

    invoke-virtual {p1, p0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 286
    sget v3, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_maxZoomIconScale:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 288
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->minZoomIconScale(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 289
    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->maxZoomIconScale(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 291
    sget p0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_trackingAnimationDurationMultiplier:I

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    .line 295
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->trackingAnimationDurationMultiplier(F)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    .line 297
    sget p0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_compassAnimationEnabled:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->access$002(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 301
    sget p0, Lcom/mapbox/mapboxsdk/R$styleable;->mapbox_LocationComponent_mapbox_accuracyAnimationEnabled:I

    invoke-virtual {p1, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->access$102(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 305
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;->build()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accuracyAlpha()F
    .locals 1

    .line 344
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAlpha:F

    return v0
.end method

.method public accuracyAnimationEnabled()Z
    .locals 1

    .line 740
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    return v0
.end method

.method public accuracyColor()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyColor:I

    return v0
.end method

.method public backgroundDrawable()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawable:I

    return v0
.end method

.method public backgroundDrawableStale()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawableStale:I

    return v0
.end method

.method public backgroundName()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    return-object v0
.end method

.method public backgroundStaleName()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    return-object v0
.end method

.method public backgroundStaleTintColor()Ljava/lang/Integer;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public backgroundTintColor()Ljava/lang/Integer;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public bearingDrawable()I
    .locals 1

    .line 501
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingDrawable:I

    return v0
.end method

.method public bearingName()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    return-object v0
.end method

.method public bearingTintColor()Ljava/lang/Integer;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public compassAnimationEnabled()Z
    .locals 1

    .line 731
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->compassAnimationEnabled:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public elevation()F
    .locals 1

    .line 589
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->elevation:F

    return v0
.end method

.method public enableStaleState()Z
    .locals 1

    .line 600
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 786
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_c

    .line 790
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    .line 792
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAlpha:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 795
    :cond_2
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyColor:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyColor:I

    if-eq v2, v3, :cond_3

    return v1

    .line 798
    :cond_3
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawableStale:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawableStale:I

    if-eq v2, v3, :cond_4

    return v1

    .line 801
    :cond_4
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawableStale:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawableStale:I

    if-eq v2, v3, :cond_5

    return v1

    .line 804
    :cond_5
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable:I

    if-eq v2, v3, :cond_6

    return v1

    .line 807
    :cond_6
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawable:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawable:I

    if-eq v2, v3, :cond_7

    return v1

    .line 810
    :cond_7
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawable:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawable:I

    if-eq v2, v3, :cond_8

    return v1

    .line 813
    :cond_8
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingDrawable:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingDrawable:I

    if-eq v2, v3, :cond_9

    return v1

    .line 816
    :cond_9
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->elevation:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->elevation:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a

    return v1

    .line 819
    :cond_a
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 822
    :cond_b
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->staleStateTimeout:J

    iget-wide v4, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->staleStateTimeout:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c

    return v1

    .line 825
    :cond_c
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->maxZoomIconScale:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->maxZoomIconScale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_d

    return v1

    .line 828
    :cond_d
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->minZoomIconScale:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->minZoomIconScale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_e

    return v1

    .line 831
    :cond_e
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement:Z

    if-eq v2, v3, :cond_f

    return v1

    .line 834
    :cond_f
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_10

    return v1

    .line 837
    :cond_10
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 840
    :cond_11
    iget v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_12

    return v1

    .line 843
    :cond_12
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->compassAnimationEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->compassAnimationEnabled:Z

    if-eq v2, v3, :cond_13

    return v1

    .line 846
    :cond_13
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    iget-boolean v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    if-eq v2, v3, :cond_14

    return v1

    .line 849
    :cond_14
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_0

    :cond_15
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_16

    :goto_0
    return v1

    .line 853
    :cond_16
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1

    :cond_17
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    if-eqz v2, :cond_18

    :goto_1
    return v1

    .line 857
    :cond_18
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_2

    :cond_19
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    if-eqz v2, :cond_1a

    :goto_2
    return v1

    .line 860
    :cond_1a
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_3

    :cond_1b
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    if-eqz v2, :cond_1c

    :goto_3
    return v1

    .line 863
    :cond_1c
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    if-eqz v2, :cond_1e

    :goto_4
    return v1

    .line 866
    :cond_1e
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_5

    :cond_1f
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    if-eqz v2, :cond_20

    :goto_5
    return v1

    .line 869
    :cond_20
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_6

    :cond_21
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_22

    :goto_6
    return v1

    .line 873
    :cond_22
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_7

    :cond_23
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_24

    :goto_7
    return v1

    .line 877
    :cond_24
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_25

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_8

    :cond_25
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_26

    :goto_8
    return v1

    .line 881
    :cond_26
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_27

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_9

    :cond_27
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_28

    :goto_9
    return v1

    .line 885
    :cond_28
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_29

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_a

    :cond_29
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_2a

    :goto_a
    return v1

    .line 889
    :cond_2a
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->padding:[I

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->padding:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 892
    :cond_2b
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    if-eqz v2, :cond_2c

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_b

    :cond_2c
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    if-eqz v2, :cond_2d

    :goto_b
    return v1

    .line 895
    :cond_2d
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    if-eqz v2, :cond_2e

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2e
    if-nez p1, :cond_2f

    return v0

    :cond_2f
    :goto_c
    return v1
.end method

.method public foregroundDrawable()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawable:I

    return v0
.end method

.method public foregroundDrawableStale()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawableStale:I

    return v0
.end method

.method public foregroundName()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    return-object v0
.end method

.method public foregroundStaleName()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    return-object v0
.end method

.method public foregroundStaleTintColor()Ljava/lang/Integer;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public foregroundTintColor()Ljava/lang/Integer;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public gpsDrawable()I
    .locals 1

    .line 420
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable:I

    return v0
.end method

.method public gpsName()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 900
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAlpha:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 901
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyColor:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 902
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawableStale:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 903
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 904
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawableStale:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 905
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 906
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 907
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 908
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawable:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 909
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 910
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawable:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 911
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 912
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingDrawable:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 913
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 914
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 915
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 916
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 917
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 918
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 919
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->elevation:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_c

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 920
    iget-boolean v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState:Z

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 921
    iget-wide v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->staleStateTimeout:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 922
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->padding:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 923
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->maxZoomIconScale:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_d

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :goto_d
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 924
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->minZoomIconScale:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_e

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 925
    iget-boolean v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement:Z

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 926
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_f

    .line 927
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    :goto_f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 928
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_10

    .line 929
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 930
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_11

    :cond_11
    const/4 v3, 0x0

    :goto_11
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 931
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_12

    :cond_12
    const/4 v3, 0x0

    :goto_12
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 932
    iget v3, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_13

    .line 933
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 934
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->compassAnimationEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 935
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public layerAbove()Ljava/lang/String;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    return-object v0
.end method

.method public layerBelow()Ljava/lang/String;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    return-object v0
.end method

.method public maxZoomIconScale()F
    .locals 1

    .line 643
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->maxZoomIconScale:F

    return v0
.end method

.method public minZoomIconScale()F
    .locals 1

    .line 653
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->minZoomIconScale:F

    return v0
.end method

.method public padding()[I
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->padding:[I

    return-object v0
.end method

.method public staleStateTimeout()J
    .locals 2

    .line 613
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->staleStateTimeout:J

    return-wide v0
.end method

.method public toBuilder()Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;
    .locals 2

    .line 319
    new-instance v0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$Builder;-><init>(Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationComponentOptions{accuracyAlpha="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accuracyColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundDrawableStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawableStale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundStaleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundDrawableStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawableStale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundStaleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bearingDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bearingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bearingTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundStaleTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundStaleTintColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->elevation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", enableStaleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", staleStateTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->staleStateTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->padding:[I

    .line 769
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxZoomIconScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->maxZoomIconScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minZoomIconScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->minZoomIconScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingGesturesManagement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInitialMoveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingMultiFingerMoveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", layerAbove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "layerBelow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "trackingAnimationDurationMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackingAnimationDurationMultiplier()F
    .locals 1

    .line 721
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    return v0
.end method

.method public trackingGesturesManagement()Z
    .locals 1

    .line 670
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement:Z

    return v0
.end method

.method public trackingInitialMoveThreshold()F
    .locals 1

    .line 679
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    return v0
.end method

.method public trackingMultiFingerMoveThreshold()F
    .locals 1

    .line 688
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 988
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 989
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawableStale()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 992
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 994
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 997
    :goto_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawableStale()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 999
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1001
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1004
    :goto_1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsDrawable()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1006
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1008
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->gpsName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1011
    :goto_2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundDrawable()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1015
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1018
    :goto_3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundDrawable()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 1020
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 1022
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1025
    :goto_4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingDrawable()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    .line 1027
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 1029
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    :goto_5
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_6

    .line 1033
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 1035
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->bearingTintColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    :goto_6
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_7

    .line 1039
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 1041
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundTintColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    :goto_7
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_8

    .line 1045
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 1047
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundTintColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    :goto_8
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_9

    .line 1051
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 1053
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->foregroundStaleTintColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    :goto_9
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_a

    .line 1057
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 1059
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->backgroundStaleTintColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    :goto_a
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->elevation()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1063
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->enableStaleState()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->staleStateTimeout()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1065
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->padding()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1066
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->maxZoomIconScale()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1067
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->minZoomIconScale()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1068
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingInitialMoveThreshold()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1070
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1071
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerAbove()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->layerBelow()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1073
    iget p2, p0, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1074
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->compassAnimationEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->accuracyAnimationEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
