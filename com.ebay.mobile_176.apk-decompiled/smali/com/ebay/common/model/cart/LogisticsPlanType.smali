.class public final enum Lcom/ebay/common/model/cart/LogisticsPlanType;
.super Ljava/lang/Enum;
.source "LogisticsPlanType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/cart/LogisticsPlanType$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/cart/LogisticsPlanType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/cart/LogisticsPlanType;

.field public static final enum EBAY_NOW:Lcom/ebay/common/model/cart/LogisticsPlanType;

.field public static final enum GLOBAL_SHIPPING:Lcom/ebay/common/model/cart/LogisticsPlanType;

.field public static final enum ISPU:Lcom/ebay/common/model/cart/LogisticsPlanType;

.field public static final enum PUDO:Lcom/ebay/common/model/cart/LogisticsPlanType;

.field public static final enum SHIP_TO_HOME:Lcom/ebay/common/model/cart/LogisticsPlanType;

.field public static final enum UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;


# instance fields
.field public final altName:Ljava/lang/String;

.field public final longName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 18
    new-instance v0, Lcom/ebay/common/model/cart/LogisticsPlanType;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/common/model/cart/LogisticsPlanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/cart/LogisticsPlanType;->UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 19
    new-instance v0, Lcom/ebay/common/model/cart/LogisticsPlanType;

    const-string v1, "SHIP_TO_HOME"

    const-string v2, "ShipToHome"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ebay/common/model/cart/LogisticsPlanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/cart/LogisticsPlanType;->SHIP_TO_HOME:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 20
    new-instance v0, Lcom/ebay/common/model/cart/LogisticsPlanType;

    const-string v1, "EBAY_NOW"

    const-string v2, "ValetService"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/ebay/common/model/cart/LogisticsPlanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/cart/LogisticsPlanType;->EBAY_NOW:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 21
    new-instance v0, Lcom/ebay/common/model/cart/LogisticsPlanType;

    const-string v1, "ISPU"

    const-string v2, "InStorePickup"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/ebay/common/model/cart/LogisticsPlanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/cart/LogisticsPlanType;->ISPU:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 22
    new-instance v0, Lcom/ebay/common/model/cart/LogisticsPlanType;

    const-string v1, "GLOBAL_SHIPPING"

    const-string v2, "GlobalShipping"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/ebay/common/model/cart/LogisticsPlanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/cart/LogisticsPlanType;->GLOBAL_SHIPPING:Lcom/ebay/common/model/cart/LogisticsPlanType;

    .line 23
    new-instance v0, Lcom/ebay/common/model/cart/LogisticsPlanType;

    const-string v1, "PUDO"

    const-string v2, "PickupAndDropoff"

    const-string v8, "PickUpDropOff"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/ebay/common/model/cart/LogisticsPlanType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/cart/LogisticsPlanType;->PUDO:Lcom/ebay/common/model/cart/LogisticsPlanType;

    const/4 v0, 0x6

    .line 15
    new-array v0, v0, [Lcom/ebay/common/model/cart/LogisticsPlanType;

    sget-object v1, Lcom/ebay/common/model/cart/LogisticsPlanType;->UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/model/cart/LogisticsPlanType;->SHIP_TO_HOME:Lcom/ebay/common/model/cart/LogisticsPlanType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/model/cart/LogisticsPlanType;->EBAY_NOW:Lcom/ebay/common/model/cart/LogisticsPlanType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/model/cart/LogisticsPlanType;->ISPU:Lcom/ebay/common/model/cart/LogisticsPlanType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/model/cart/LogisticsPlanType;->GLOBAL_SHIPPING:Lcom/ebay/common/model/cart/LogisticsPlanType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/model/cart/LogisticsPlanType;->PUDO:Lcom/ebay/common/model/cart/LogisticsPlanType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/ebay/common/model/cart/LogisticsPlanType;->$VALUES:[Lcom/ebay/common/model/cart/LogisticsPlanType;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/ebay/common/model/cart/LogisticsPlanType;->longName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/ebay/common/model/cart/LogisticsPlanType;->altName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/ebay/common/model/cart/LogisticsPlanType;->longName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/ebay/common/model/cart/LogisticsPlanType;->altName:Ljava/lang/String;

    return-void
.end method

.method public static fromOrdinal(I)Lcom/ebay/common/model/cart/LogisticsPlanType;
    .locals 5

    .line 50
    invoke-static {}, Lcom/ebay/common/model/cart/LogisticsPlanType;->values()[Lcom/ebay/common/model/cart/LogisticsPlanType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    invoke-virtual {v3}, Lcom/ebay/common/model/cart/LogisticsPlanType;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    sget-object p0, Lcom/ebay/common/model/cart/LogisticsPlanType;->UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;

    return-object p0
.end method

.method public static fromToken(Ljava/lang/String;)Lcom/ebay/common/model/cart/LogisticsPlanType;
    .locals 5

    .line 42
    invoke-static {}, Lcom/ebay/common/model/cart/LogisticsPlanType;->values()[Lcom/ebay/common/model/cart/LogisticsPlanType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 43
    iget-object v4, v3, Lcom/ebay/common/model/cart/LogisticsPlanType;->longName:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/ebay/common/model/cart/LogisticsPlanType;->altName:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    .line 45
    :cond_2
    sget-object p0, Lcom/ebay/common/model/cart/LogisticsPlanType;->UNKNOWN:Lcom/ebay/common/model/cart/LogisticsPlanType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/cart/LogisticsPlanType;
    .locals 1

    .line 15
    const-class v0, Lcom/ebay/common/model/cart/LogisticsPlanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/cart/LogisticsPlanType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/cart/LogisticsPlanType;
    .locals 1

    .line 15
    sget-object v0, Lcom/ebay/common/model/cart/LogisticsPlanType;->$VALUES:[Lcom/ebay/common/model/cart/LogisticsPlanType;

    invoke-virtual {v0}, [Lcom/ebay/common/model/cart/LogisticsPlanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/cart/LogisticsPlanType;

    return-object v0
.end method
