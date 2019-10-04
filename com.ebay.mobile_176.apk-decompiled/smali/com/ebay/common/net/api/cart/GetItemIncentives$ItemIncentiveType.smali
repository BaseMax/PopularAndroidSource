.class public final enum Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;
.super Ljava/lang/Enum;
.source "GetItemIncentives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/cart/GetItemIncentives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemIncentiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

.field public static final enum COUPON:Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

.field public static final enum REWARD:Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    const-string v1, "COUPON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->COUPON:Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    .line 44
    new-instance v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    const-string v1, "REWARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->REWARD:Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    sget-object v1, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->COUPON:Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->REWARD:Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->$VALUES:[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;
    .locals 1

    .line 41
    const-class v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;
    .locals 1

    .line 41
    sget-object v0, Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->$VALUES:[Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;

    return-object v0
.end method
