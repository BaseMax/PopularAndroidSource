.class public final Lc/c/a/e/d/h/e/a/c/a/e;
.super Ljava/lang/Object;
.source "SubmitVideoDownloadResponseDto.kt"


# instance fields
.field public final keepDownloadedFile:Z
    .annotation runtime Lc/e/d/a/c;
        value = "keepDownloadedFile"
    .end annotation
.end field

.field public final message:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "message"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/a/c/a/e;->keepDownloadedFile:Z

    iget-object v2, p0, Lc/c/a/e/d/h/e/a/c/a/e;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/e/d/h/e/a/c/a/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/e/d/h/e/a/c/a/e;

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/a/c/a/e;->keepDownloadedFile:Z

    iget-boolean v3, p1, Lc/c/a/e/d/h/e/a/c/a/e;->keepDownloadedFile:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/c/a/e;->message:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/h/e/a/c/a/e;->message:Ljava/lang/String;

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

    iget-boolean v0, p0, Lc/c/a/e/d/h/e/a/c/a/e;->keepDownloadedFile:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/c/a/e;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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

    const-string v1, "SubmitVideoDownloadResponseDto(keepDownloadedFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/h/e/a/c/a/e;->keepDownloadedFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/c/a/e;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
