.class public final Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;
.super Ljava/lang/Object;
.source "ThirdPartyPendingResult.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final comment:Ljava/lang/String;

.field public final rate:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "comment"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->rate:I

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->comment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->rate:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    iget v1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->rate:I

    iget v3, p1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->rate:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->comment:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->comment:Ljava/lang/String;

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

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->rate:I

    invoke-static {v0}, La;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->comment:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThirdPartyPendingResult(rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
