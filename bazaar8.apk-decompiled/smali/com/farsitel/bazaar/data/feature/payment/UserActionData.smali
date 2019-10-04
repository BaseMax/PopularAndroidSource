.class public final Lcom/farsitel/bazaar/data/feature/payment/UserActionData;
.super Lcom/farsitel/bazaar/data/feature/payment/PaymentData;
.source "PaymentEntities.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;
    }
.end annotation


# instance fields
.field public final action:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

.field public final data:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/data/feature/payment/PaymentData;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->action:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->action:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->action:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->action:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->data:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->data:Ljava/lang/String;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->action:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->data:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserActionData(action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->action:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
