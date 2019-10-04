.class public final Lc/c/a/e/d/a/b/b/j;
.super Ljava/lang/Object;
.source "RegisterDeviceAndGetInfoResponseDto.kt"


# instance fields
.field public final appHomePreferences:Lc/c/a/e/d/a/b/b/i;
    .annotation runtime Lc/e/d/a/c;
        value = "appHome"
    .end annotation
.end field

.field public final categoriesPreferences:Lc/c/a/e/d/a/b/b/i;
    .annotation runtime Lc/e/d/a/c;
        value = "categories"
    .end annotation
.end field

.field public final gameHomePreferences:Lc/c/a/e/d/a/b/b/i;
    .annotation runtime Lc/e/d/a/c;
        value = "gameHome"
    .end annotation
.end field

.field public final homePreferences:Lc/c/a/e/d/a/b/b/i;
    .annotation runtime Lc/e/d/a/c;
        value = "home"
    .end annotation
.end field

.field public final myBazaarPreferences:Lc/c/a/e/d/a/b/b/i;
    .annotation runtime Lc/e/d/a/c;
        value = "myBazaar"
    .end annotation
.end field

.field public final searchPreferences:Lc/c/a/e/d/a/b/b/i;
    .annotation runtime Lc/e/d/a/c;
        value = "search"
    .end annotation
.end field

.field public final videoHomePreferences:Lc/c/a/e/d/a/b/b/i;
    .annotation runtime Lc/e/d/a/c;
        value = "videoHome"
    .end annotation
.end field


# virtual methods
.method public final a()Lc/c/a/e/d/a/b/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->appHomePreferences:Lc/c/a/e/d/a/b/b/i;

    return-object v0
.end method

.method public final b()Lc/c/a/e/d/a/b/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->categoriesPreferences:Lc/c/a/e/d/a/b/b/i;

    return-object v0
.end method

.method public final c()Lc/c/a/e/d/a/b/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->gameHomePreferences:Lc/c/a/e/d/a/b/b/i;

    return-object v0
.end method

.method public final d()Lc/c/a/e/d/a/b/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->homePreferences:Lc/c/a/e/d/a/b/b/i;

    return-object v0
.end method

.method public final e()Lc/c/a/e/d/a/b/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->myBazaarPreferences:Lc/c/a/e/d/a/b/b/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/a/b/b/j;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/a/b/b/j;

    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->appHomePreferences:Lc/c/a/e/d/a/b/b/i;

    iget-object v1, p1, Lc/c/a/e/d/a/b/b/j;->appHomePreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->categoriesPreferences:Lc/c/a/e/d/a/b/b/i;

    iget-object v1, p1, Lc/c/a/e/d/a/b/b/j;->categoriesPreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->gameHomePreferences:Lc/c/a/e/d/a/b/b/i;

    iget-object v1, p1, Lc/c/a/e/d/a/b/b/j;->gameHomePreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->homePreferences:Lc/c/a/e/d/a/b/b/i;

    iget-object v1, p1, Lc/c/a/e/d/a/b/b/j;->homePreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->myBazaarPreferences:Lc/c/a/e/d/a/b/b/i;

    iget-object v1, p1, Lc/c/a/e/d/a/b/b/j;->myBazaarPreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->searchPreferences:Lc/c/a/e/d/a/b/b/i;

    iget-object v1, p1, Lc/c/a/e/d/a/b/b/j;->searchPreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->videoHomePreferences:Lc/c/a/e/d/a/b/b/i;

    iget-object p1, p1, Lc/c/a/e/d/a/b/b/j;->videoHomePreferences:Lc/c/a/e/d/a/b/b/i;

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

.method public final f()Lc/c/a/e/d/a/b/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->searchPreferences:Lc/c/a/e/d/a/b/b/i;

    return-object v0
.end method

.method public final g()Lc/c/a/e/d/a/b/b/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->videoHomePreferences:Lc/c/a/e/d/a/b/b/i;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/d/a/b/b/j;->appHomePreferences:Lc/c/a/e/d/a/b/b/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/e/d/a/b/b/i;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/a/b/b/j;->categoriesPreferences:Lc/c/a/e/d/a/b/b/i;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/c/a/e/d/a/b/b/i;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/a/b/b/j;->gameHomePreferences:Lc/c/a/e/d/a/b/b/i;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lc/c/a/e/d/a/b/b/i;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/a/b/b/j;->homePreferences:Lc/c/a/e/d/a/b/b/i;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lc/c/a/e/d/a/b/b/i;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/a/b/b/j;->myBazaarPreferences:Lc/c/a/e/d/a/b/b/i;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lc/c/a/e/d/a/b/b/i;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/a/b/b/j;->searchPreferences:Lc/c/a/e/d/a/b/b/i;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lc/c/a/e/d/a/b/b/i;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/a/b/b/j;->videoHomePreferences:Lc/c/a/e/d/a/b/b/i;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lc/c/a/e/d/a/b/b/i;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationItemsPreferencesDto(appHomePreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/j;->appHomePreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categoriesPreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/j;->categoriesPreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameHomePreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/j;->gameHomePreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", homePreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/j;->homePreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myBazaarPreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/j;->myBazaarPreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchPreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/j;->searchPreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoHomePreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/j;->videoHomePreferences:Lc/c/a/e/d/a/b/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
