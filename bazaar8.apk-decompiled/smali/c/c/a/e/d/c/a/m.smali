.class public final Lc/c/a/e/d/c/a/m;
.super Ljava/lang/Object;
.source "AppDetailResponseDto.kt"


# instance fields
.field public final newVersionCode:I
    .annotation runtime Lc/e/d/a/c;
        value = "newVersionCode"
    .end annotation
.end field

.field public final oldVersionCode:I
    .annotation runtime Lc/e/d/a/c;
        value = "oldVersionCode"
    .end annotation
.end field

.field public final sha1hash:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "sha1hash"
    .end annotation
.end field

.field public final size:J
    .annotation runtime Lc/e/d/a/c;
        value = "size"
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "token"
    .end annotation
.end field

.field public final verboseSize:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "verboseSize"
    .end annotation
.end field

.field public final verboseSizeLabel:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "verboseSizeLabel"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;
    .locals 10

    .line 1
    new-instance v9, Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    .line 2
    iget-wide v1, p0, Lc/c/a/e/d/c/a/m;->size:J

    iget v3, p0, Lc/c/a/e/d/c/a/m;->oldVersionCode:I

    iget v4, p0, Lc/c/a/e/d/c/a/m;->newVersionCode:I

    iget-object v5, p0, Lc/c/a/e/d/c/a/m;->sha1hash:Ljava/lang/String;

    iget-object v6, p0, Lc/c/a/e/d/c/a/m;->token:Ljava/lang/String;

    iget-object v7, p0, Lc/c/a/e/d/c/a/m;->verboseSize:Ljava/lang/String;

    iget-object v8, p0, Lc/c/a/e/d/c/a/m;->verboseSizeLabel:Ljava/lang/String;

    move-object v0, v9

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;-><init>(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lc/c/a/e/d/c/a/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lc/c/a/e/d/c/a/m;

    iget-wide v3, p0, Lc/c/a/e/d/c/a/m;->size:J

    iget-wide v5, p1, Lc/c/a/e/d/c/a/m;->size:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lc/c/a/e/d/c/a/m;->oldVersionCode:I

    iget v3, p1, Lc/c/a/e/d/c/a/m;->oldVersionCode:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lc/c/a/e/d/c/a/m;->newVersionCode:I

    iget v3, p1, Lc/c/a/e/d/c/a/m;->newVersionCode:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/e/d/c/a/m;->sha1hash:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/m;->sha1hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/e/d/c/a/m;->token:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/m;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/e/d/c/a/m;->verboseSize:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/m;->verboseSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/e/d/c/a/m;->verboseSizeLabel:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/c/a/m;->verboseSizeLabel:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lc/c/a/e/d/c/a/m;->size:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lc/c/a/e/d/c/a/m;->oldVersionCode:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lc/c/a/e/d/c/a/m;->newVersionCode:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lc/c/a/e/d/c/a/m;->sha1hash:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lc/c/a/e/d/c/a/m;->token:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lc/c/a/e/d/c/a/m;->verboseSize:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lc/c/a/e/d/c/a/m;->verboseSizeLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageDiffDto(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/e/d/c/a/m;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", oldVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/m;->oldVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/m;->newVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sha1hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/m;->sha1hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/m;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/m;->verboseSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseSizeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/m;->verboseSizeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
