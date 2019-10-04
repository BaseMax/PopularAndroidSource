.class public final enum Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;
.super Ljava/lang/Enum;
.source "ItemViewShipping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ItemViewShipping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShippingDisplayOrderEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

.field public static final enum COST:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

.field public static final enum EDD:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

.field public static final enum LOCATION:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

.field public static final enum SERVICE_NAME:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    const-string v1, "EDD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->EDD:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    .line 37
    new-instance v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    const-string v1, "COST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->COST:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    .line 38
    new-instance v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    const-string v1, "LOCATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->LOCATION:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    .line 39
    new-instance v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    const-string v1, "SERVICE_NAME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->SERVICE_NAME:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    sget-object v1, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->EDD:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->COST:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->LOCATION:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->SERVICE_NAME:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->$VALUES:[Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;
    .locals 1

    .line 34
    const-class v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;
    .locals 1

    .line 34
    sget-object v0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->$VALUES:[Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    invoke-virtual {v0}, [Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    return-object v0
.end method
