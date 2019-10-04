.class public final Lc/c/a/e/d/c/a/j;
.super Ljava/lang/Object;
.source "AppDetailResponseDto.kt"


# instance fields
.field public final iconUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "icon"
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "pressID"
    .end annotation
.end field

.field public final summery:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "summery"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field

.field public final uri:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "url"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/appdetail/Article;
    .locals 7

    .line 1
    new-instance v6, Lcom/farsitel/bazaar/common/model/appdetail/Article;

    iget-object v1, p0, Lc/c/a/e/d/c/a/j;->id:Ljava/lang/String;

    iget-object v2, p0, Lc/c/a/e/d/c/a/j;->title:Ljava/lang/String;

    iget-object v3, p0, Lc/c/a/e/d/c/a/j;->uri:Ljava/lang/String;

    iget-object v4, p0, Lc/c/a/e/d/c/a/j;->summery:Ljava/lang/String;

    iget-object v5, p0, Lc/c/a/e/d/c/a/j;->iconUrl:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/common/model/appdetail/Article;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/c/a/j;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/c/a/j;

    iget-object v0, p0, Lc/c/a/e/d/c/a/j;->id:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/c/a/j;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/c/a/j;->title:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/c/a/j;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/c/a/j;->uri:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/c/a/j;->uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/c/a/j;->summery:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/c/a/j;->summery:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/c/a/j;->iconUrl:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/c/a/j;->iconUrl:Ljava/lang/String;

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

    iget-object v0, p0, Lc/c/a/e/d/c/a/j;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/j;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/j;->uri:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/j;->summery:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/j;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArticleDto(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/j;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/j;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/j;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", summery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/j;->summery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/j;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
