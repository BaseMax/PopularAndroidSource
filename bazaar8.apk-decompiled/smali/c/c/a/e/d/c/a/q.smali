.class public final Lc/c/a/e/d/c/a/q;
.super Ljava/lang/Object;
.source "AppDetailResponseDto.kt"


# instance fields
.field public final icon:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "icon"
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "id"
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "url"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/appdetail/Shamed;
    .locals 4

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    iget-object v1, p0, Lc/c/a/e/d/c/a/q;->id:Ljava/lang/String;

    iget-object v2, p0, Lc/c/a/e/d/c/a/q;->url:Ljava/lang/String;

    iget-object v3, p0, Lc/c/a/e/d/c/a/q;->icon:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/farsitel/bazaar/common/model/appdetail/Shamed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/c/a/q;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/c/a/q;

    iget-object v0, p0, Lc/c/a/e/d/c/a/q;->id:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/c/a/q;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/c/a/q;->url:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/c/a/q;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/c/a/q;->icon:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/c/a/q;->icon:Ljava/lang/String;

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

    iget-object v0, p0, Lc/c/a/e/d/c/a/q;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/q;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/q;->icon:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShamedDto(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/q;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/q;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/q;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method