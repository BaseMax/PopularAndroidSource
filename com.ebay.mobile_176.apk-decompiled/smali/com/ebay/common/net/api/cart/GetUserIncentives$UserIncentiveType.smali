.class public final enum Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;
.super Ljava/lang/Enum;
.source "GetUserIncentives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/cart/GetUserIncentives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserIncentiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

.field public static final enum COUPON:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

.field public static final enum GIFTCARD:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

.field public static final enum GIFTCERTIFICATE:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

.field public static final enum REWARD:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

.field public static final enum VOUCHER:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    const-string v1, "GIFTCERTIFICATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->GIFTCERTIFICATE:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    .line 21
    new-instance v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    const-string v1, "VOUCHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->VOUCHER:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    .line 22
    new-instance v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    const-string v1, "GIFTCARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->GIFTCARD:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    .line 23
    new-instance v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    const-string v1, "COUPON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->COUPON:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    .line 24
    new-instance v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    const-string v1, "REWARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->REWARD:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    const/4 v0, 0x5

    .line 18
    new-array v0, v0, [Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    sget-object v1, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->GIFTCERTIFICATE:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->VOUCHER:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->GIFTCARD:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->COUPON:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->REWARD:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->$VALUES:[Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;
    .locals 1

    .line 18
    const-class v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;
    .locals 1

    .line 18
    sget-object v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->$VALUES:[Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    return-object v0
.end method
