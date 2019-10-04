.class public final Lcom/farsitel/bazaar/common/model/SubscriptionDetail;
.super Ljava/lang/Object;
.source "SubscriptionDetail.kt"


# instance fields
.field public final hasSubscription:Z

.field public final subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;


# direct methods
.method public constructor <init>(ZLcom/farsitel/bazaar/common/model/SubscriptionData;)V
    .locals 1

    const-string v0, "subscriptionData"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->hasSubscription:Z

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/SubscriptionDetail;ZLcom/farsitel/bazaar/common/model/SubscriptionData;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/SubscriptionDetail;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->hasSubscription:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->copy(ZLcom/farsitel/bazaar/common/model/SubscriptionData;)Lcom/farsitel/bazaar/common/model/SubscriptionDetail;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->hasSubscription:Z

    return v0
.end method

.method public final component2()Lcom/farsitel/bazaar/common/model/SubscriptionData;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;

    return-object v0
.end method

.method public final copy(ZLcom/farsitel/bazaar/common/model/SubscriptionData;)Lcom/farsitel/bazaar/common/model/SubscriptionDetail;
    .locals 1

    const-string v0, "subscriptionData"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;-><init>(ZLcom/farsitel/bazaar/common/model/SubscriptionData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->hasSubscription:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->hasSubscription:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getHasSubscription()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->hasSubscription:Z

    return v0
.end method

.method public final getSubscriptionData()Lcom/farsitel/bazaar/common/model/SubscriptionData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->hasSubscription:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/SubscriptionData;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriptionDetail(hasSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->hasSubscription:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/SubscriptionDetail;->subscriptionData:Lcom/farsitel/bazaar/common/model/SubscriptionData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
