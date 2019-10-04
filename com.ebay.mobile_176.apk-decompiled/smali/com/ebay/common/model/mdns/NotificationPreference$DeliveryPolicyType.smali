.class public final enum Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;
.super Ljava/lang/Enum;
.source "NotificationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/NotificationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryPolicyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

.field public static final enum DEFERRED:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

.field public static final enum QUIET_PERIOD:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

.field public static final enum REAL_TIME:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;


# instance fields
.field public apiValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 95
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    const-string v1, "REAL_TIME"

    const-string v2, "RealTime"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->REAL_TIME:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    .line 96
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    const-string v1, "QUIET_PERIOD"

    const-string v2, "QuietPeriod"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->QUIET_PERIOD:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    .line 97
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    const-string v1, "DEFERRED"

    const-string v2, "Deferred"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->DEFERRED:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    const/4 v0, 0x3

    .line 93
    new-array v0, v0, [Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->REAL_TIME:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->QUIET_PERIOD:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->DEFERRED:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->$VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

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

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput-object p3, p0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->apiValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;
    .locals 1

    .line 93
    const-class v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;
    .locals 1

    .line 93
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->$VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    invoke-virtual {v0}, [Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    return-object v0
.end method
