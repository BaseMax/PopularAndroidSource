.class public final enum Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;
.super Ljava/lang/Enum;
.source "StoreAvailability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/inventory/StoreAvailability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvailabilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum IN_STOCK:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

.field public static final enum OUT_OF_STOCK:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

.field public static final enum SHIP_TO_STORE:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    const-string v1, "IN_STOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->IN_STOCK:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    .line 14
    new-instance v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    const-string v1, "OUT_OF_STOCK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->OUT_OF_STOCK:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    .line 15
    new-instance v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    const-string v1, "SHIP_TO_STORE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->SHIP_TO_STORE:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    sget-object v1, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->IN_STOCK:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->OUT_OF_STOCK:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->SHIP_TO_STORE:Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->$VALUES:[Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    .line 17
    new-instance v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType$1;

    invoke-direct {v0}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;
    .locals 1

    .line 11
    const-class v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;
    .locals 1

    .line 11
    sget-object v0, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->$VALUES:[Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    invoke-virtual {v0}, [Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/ebay/common/model/inventory/StoreAvailability$AvailabilityType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
