.class public Lcom/ebay/common/model/inventory/InventoryInfo;
.super Lcom/ebay/common/model/ParcelableHelper;
.source "InventoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;
    }
.end annotation


# static fields
.field static final BEARING_DUE_EAST:D

.field static final BEARING_DUE_NORTH:D

.field static final BEARING_DUE_SOUTH:D

.field static final BEARING_DUE_WEST:D

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/inventory/InventoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private availabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/inventory/StoreAvailability;",
            ">;"
        }
    .end annotation
.end field

.field private boundingBoxComponents:[D

.field private checkoutLineItemId:Ljava/lang/String;

.field private derivation:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

.field private estimatedDeliveryDate:Ljava/util/Date;

.field private forceInventoryLookup:Z

.field private itemSku:Ljava/lang/String;

.field private logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

.field private postalCode:Ljava/lang/String;

.field private queryLocation:Lcom/google/android/gms/maps/model/LatLng;

.field private searchRefinedPostalCode:Ljava/lang/String;

.field private selectedStore:Lcom/ebay/common/model/inventory/StoreAvailability;

.field private sellerUserId:Ljava/lang/String;

.field public site:Ljava/lang/String;

.field private userLocation:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 346
    new-instance v0, Lcom/ebay/common/model/inventory/InventoryInfo$1;

    invoke-direct {v0}, Lcom/ebay/common/model/inventory/InventoryInfo$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/inventory/InventoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-wide/16 v0, 0x0

    .line 437
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/ebay/common/model/inventory/InventoryInfo;->BEARING_DUE_NORTH:D

    const-wide v0, 0x4066800000000000L    # 180.0

    .line 438
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/ebay/common/model/inventory/InventoryInfo;->BEARING_DUE_SOUTH:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 439
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/ebay/common/model/inventory/InventoryInfo;->BEARING_DUE_EAST:D

    const-wide v0, 0x4070e00000000000L    # 270.0

    .line 440
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/ebay/common/model/inventory/InventoryInfo;->BEARING_DUE_WEST:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->searchRefinedPostalCode:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->postalCode:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->userLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 75
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->queryLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 76
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->boundingBoxComponents:[D

    .line 77
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    .line 78
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->selectedStore:Lcom/ebay/common/model/inventory/StoreAvailability;

    .line 79
    sget-object v1, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->UNKNOWN:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    iput-object v1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->derivation:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    .line 80
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->itemSku:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->sellerUserId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->checkoutLineItemId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->forceInventoryLookup:Z

    .line 84
    sget-object v1, Lcom/ebay/common/model/cart/LogisticsPlanType;->UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;

    iput-object v1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 85
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->estimatedDeliveryDate:Ljava/util/Date;

    .line 86
    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->site:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 362
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->forceInventoryLookup:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->searchRefinedPostalCode:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->postalCode:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 371
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->userLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 378
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->queryLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 380
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->boundingBoxComponents:[D

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    .line 385
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    :goto_1
    if-ge v1, v0, :cond_3

    .line 388
    iget-object v3, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    sget-object v4, Lcom/ebay/common/model/inventory/StoreAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->getFromValue(I)Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->derivation:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 395
    sget-object v0, Lcom/ebay/common/model/inventory/StoreAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/inventory/StoreAvailability;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->selectedStore:Lcom/ebay/common/model/inventory/StoreAvailability;

    .line 397
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->itemSku:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->sellerUserId:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->checkoutLineItemId:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/ebay/common/model/cart/LogisticsPlanType;->fromOrdinal(I)Lcom/ebay/common/model/cart/LogisticsPlanType;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 402
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->estimatedDeliveryDate:Ljava/util/Date;

    .line 403
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->site:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ebay/common/model/inventory/InventoryInfo$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ebay/common/model/inventory/InventoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ILjava/util/List;Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/cart/LogisticsPlanType;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "I",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/inventory/StoreAvailability;",
            ">;",
            "Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ebay/common/model/cart/LogisticsPlanType;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->postalCode:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->userLocation:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p2, :cond_0

    int-to-double v0, p3

    .line 96
    invoke-direct {p0, p2, v0, v1}, Lcom/ebay/common/model/inventory/InventoryInfo;->calculateBoundingBox(Lcom/google/android/gms/maps/model/LatLng;D)[D

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->boundingBoxComponents:[D

    :cond_0
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->queryLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 98
    iput-object p4, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    .line 99
    iput-object p5, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->derivation:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    .line 100
    iput-object p6, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->sellerUserId:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->itemSku:Ljava/lang/String;

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->forceInventoryLookup:Z

    if-eqz p8, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    sget-object p8, Lcom/ebay/common/model/cart/LogisticsPlanType;->UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;

    :goto_0
    iput-object p8, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 104
    iput-object p9, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->estimatedDeliveryDate:Ljava/util/Date;

    .line 105
    iput-object p10, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->site:Ljava/lang/String;

    return-void
.end method

.method private calculateBoundingBox(Lcom/google/android/gms/maps/model/LatLng;D)[D
    .locals 21

    move-object/from16 v0, p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v1, p2, v1

    const-wide v3, 0x40aef63333333333L    # 3963.1

    div-double/2addr v1, v3

    .line 447
    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 448
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 453
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 454
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    sget-wide v11, Lcom/ebay/common/model/inventory/InventoryInfo;->BEARING_DUE_NORTH:D

    .line 455
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    .line 453
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    .line 456
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 457
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    sget-wide v13, Lcom/ebay/common/model/inventory/InventoryInfo;->BEARING_DUE_SOUTH:D

    .line 458
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    add-double/2addr v9, v11

    .line 456
    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    .line 459
    sget-wide v11, Lcom/ebay/common/model/inventory/InventoryInfo;->BEARING_DUE_EAST:D

    .line 460
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    .line 461
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    .line 460
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    add-double/2addr v11, v5

    .line 462
    sget-wide v13, Lcom/ebay/common/model/inventory/InventoryInfo;->BEARING_DUE_WEST:D

    .line 463
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    .line 464
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v15, v15, v2

    sub-double/2addr v0, v15

    .line 463
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    add-double/2addr v5, v0

    .line 466
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 467
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 468
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    .line 469
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v19, v0

    move-wide v0, v2

    move-wide/from16 v2, v19

    :goto_0
    cmpg-double v6, v7, v4

    if-gez v6, :cond_1

    move-wide/from16 v19, v4

    move-wide v4, v7

    move-wide/from16 v7, v19

    :cond_1
    const/4 v6, 0x4

    .line 488
    new-array v6, v6, [D

    const/4 v9, 0x0

    aput-wide v0, v6, v9

    const/4 v0, 0x1

    aput-wide v4, v6, v0

    const/4 v0, 0x2

    aput-wide v2, v6, v0

    const/4 v0, 0x3

    aput-wide v7, v6, v0

    return-object v6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvailabilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/inventory/StoreAvailability;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    return-object v0
.end method

.method public getDerivation()Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->derivation:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    return-object v0
.end method

.method public getEstimatedDeliveryDate()Ljava/util/Date;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->estimatedDeliveryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getItemSku()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->itemSku:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsPlanType()Lcom/ebay/common/model/cart/LogisticsPlanType;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->queryLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getSearchRefinedPostalCode()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->searchRefinedPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedStore()Lcom/ebay/common/model/inventory/StoreAvailability;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->selectedStore:Lcom/ebay/common/model/inventory/StoreAvailability;

    return-object v0
.end method

.method public getSellerUserId()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->sellerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->userLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public isForceInventoryLookup()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->forceInventoryLookup:Z

    return v0
.end method

.method public setAvailabilities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/common/model/inventory/StoreAvailability;",
            ">;)V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    return-void
.end method

.method public setCheckoutLineItemId(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->checkoutLineItemId:Ljava/lang/String;

    return-void
.end method

.method public setDerivation(Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;)V
    .locals 1

    .line 219
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->derivation:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    .line 220
    sget-object v0, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->LATLNG:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->boundingBoxComponents:[D

    :cond_0
    return-void
.end method

.method public setEstimatedDeliveryDate(Ljava/util/Date;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->estimatedDeliveryDate:Ljava/util/Date;

    return-void
.end method

.method public setForceInventoryLookup(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->forceInventoryLookup:Z

    return-void
.end method

.method public setItemSku(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->itemSku:Ljava/lang/String;

    return-void
.end method

.method public setLogisticsPlanType(Lcom/ebay/common/model/cart/LogisticsPlanType;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    sget-object p1, Lcom/ebay/common/model/cart/LogisticsPlanType;->UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;

    :goto_0
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->postalCode:Ljava/lang/String;

    return-void
.end method

.method public setQueryLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->queryLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method

.method public setSearchRefinedPostalCode(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->searchRefinedPostalCode:Ljava/lang/String;

    return-void
.end method

.method public setSelectedStore(Lcom/ebay/common/model/inventory/StoreAvailability;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->selectedStore:Lcom/ebay/common/model/inventory/StoreAvailability;

    return-void
.end method

.method public setSellerUserId(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->sellerUserId:Ljava/lang/String;

    return-void
.end method

.method public setUserLocation(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 2

    .line 161
    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->userLocation:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_0

    int-to-double v0, p2

    .line 163
    invoke-direct {p0, p1, v0, v1}, Lcom/ebay/common/model/inventory/InventoryInfo;->calculateBoundingBox(Lcom/google/android/gms/maps/model/LatLng;D)[D

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->boundingBoxComponents:[D

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 289
    iget-boolean v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->forceInventoryLookup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->searchRefinedPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->userLocation:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->userLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 296
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->userLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->queryLocation:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->queryLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 304
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->queryLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    :goto_1
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->boundingBoxComponents:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 311
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->availabilities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/inventory/StoreAvailability;

    .line 316
    invoke-virtual {v3, p1, p2}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 320
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->derivation:Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;

    invoke-virtual {v0}, Lcom/ebay/common/model/inventory/InventoryInfo$ListDerivation;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->selectedStore:Lcom/ebay/common/model/inventory/StoreAvailability;

    if-eqz v0, :cond_4

    .line 326
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v0, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->selectedStore:Lcom/ebay/common/model/inventory/StoreAvailability;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/model/inventory/StoreAvailability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 330
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    :goto_3
    iget-object p2, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->itemSku:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object p2, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->sellerUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->checkoutLineItemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object p2, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->logisticsPlanType:Lcom/ebay/common/model/cart/LogisticsPlanType;

    invoke-virtual {p2}, Lcom/ebay/common/model/cart/LogisticsPlanType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object p2, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->estimatedDeliveryDate:Ljava/util/Date;

    if-eqz p2, :cond_5

    .line 338
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object p2, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->estimatedDeliveryDate:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_4

    .line 342
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    :goto_4
    iget-object p2, p0, Lcom/ebay/common/model/inventory/InventoryInfo;->site:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
