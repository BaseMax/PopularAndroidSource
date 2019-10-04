.class public final Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;
.super Ljava/lang/Object;
.source "SubscriptionItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue(I)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;
    .locals 1

    .line 1
    invoke-static {}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->values()[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    move-result-object v0

    array-length v0, v0

    if-le p1, v0, :cond_0

    sget-object p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->UNKNOWN:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->values()[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    move-result-object v0

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method
