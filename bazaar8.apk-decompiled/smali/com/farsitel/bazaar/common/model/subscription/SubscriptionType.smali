.class public final enum Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;
.super Ljava/lang/Enum;
.source "SubscriptionItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

.field public static final enum APP:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    const/4 v2, 0x0

    const-string v3, "APP"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;->APP:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;->$VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;->$VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    return-object v0
.end method