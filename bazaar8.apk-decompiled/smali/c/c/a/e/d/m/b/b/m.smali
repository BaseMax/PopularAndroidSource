.class public final Lc/c/a/e/d/m/b/b/m;
.super Ljava/lang/Object;
.source "PaymentGatewayDto.kt"


# instance fields
.field public final agreement:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "agreement"
    .end annotation
.end field

.field public final code:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "code"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final icon:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "icon"
    .end annotation
.end field

.field public final price:J
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final rank:I
    .annotation runtime Lc/e/d/a/c;
        value = "rank"
    .end annotation
.end field

.field public final subDescription:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "subDescription"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "type"
    .end annotation
.end field


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/d/m/b/b/m;->rank:I

    return v0
.end method

.method public final b()Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;
    .locals 11

    .line 1
    new-instance v10, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->title:Ljava/lang/String;

    iget-object v2, p0, Lc/c/a/e/d/m/b/b/m;->icon:Ljava/lang/String;

    iget-object v3, p0, Lc/c/a/e/d/m/b/b/m;->type:Ljava/lang/String;

    iget-object v4, p0, Lc/c/a/e/d/m/b/b/m;->code:Ljava/lang/String;

    iget-object v5, p0, Lc/c/a/e/d/m/b/b/m;->agreement:Ljava/lang/String;

    iget-object v6, p0, Lc/c/a/e/d/m/b/b/m;->description:Ljava/lang/String;

    iget-object v7, p0, Lc/c/a/e/d/m/b/b/m;->subDescription:Ljava/lang/String;

    iget-wide v8, p0, Lc/c/a/e/d/m/b/b/m;->price:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/e/d/m/b/b/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/e/d/m/b/b/m;

    iget v1, p0, Lc/c/a/e/d/m/b/b/m;->rank:I

    iget v3, p1, Lc/c/a/e/d/m/b/b/m;->rank:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->title:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/m;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->icon:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/m;->icon:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->type:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/m;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->code:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/m;->code:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->agreement:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/m;->agreement:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->description:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/m;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->subDescription:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/m/b/b/m;->subDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lc/c/a/e/d/m/b/b/m;->price:J

    iget-wide v5, p1, Lc/c/a/e/d/m/b/b/m;->price:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lc/c/a/e/d/m/b/b/m;->rank:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->icon:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->type:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->code:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->agreement:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->description:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->subDescription:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lc/c/a/e/d/m/b/b/m;->price:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentGatewayDto(rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/m/b/b/m;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", agreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->agreement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/m;->subDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/e/d/m/b/b/m;->price:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
