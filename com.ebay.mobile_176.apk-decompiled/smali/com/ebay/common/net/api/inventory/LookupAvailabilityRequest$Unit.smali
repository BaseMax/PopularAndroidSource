.class public final enum Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;
.super Ljava/lang/Enum;
.source "LookupAvailabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

.field public static final enum KM:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

.field public static final enum MILE:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;


# instance fields
.field private displayString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    const-string v1, "KM"

    const-string v2, "km"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->KM:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    .line 36
    new-instance v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    const-string v1, "MILE"

    const-string v2, "mi"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->MILE:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    sget-object v1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->KM:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->MILE:Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->$VALUES:[Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->displayString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;
    .locals 1

    .line 33
    const-class v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;
    .locals 1

    .line 33
    sget-object v0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->$VALUES:[Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ebay/common/net/api/inventory/LookupAvailabilityRequest$Unit;->displayString:Ljava/lang/String;

    return-object v0
.end method
