.class public final Lc/c/a/e/d/a/b/b/l;
.super Ljava/lang/Object;
.source "RegisterDeviceAndGetInfoResponseDto.kt"


# instance fields
.field public final bazaarLatestVersionCode:I
    .annotation runtime Lc/e/d/a/c;
        value = "bazaarLatestVersionCode"
    .end annotation
.end field

.field public final bazaarLogo:Lc/c/a/e/d/a/b/b/b;
    .annotation runtime Lc/e/d/a/c;
        value = "bazaarLogo"
    .end annotation
.end field

.field public final deviceID:I
    .annotation runtime Lc/e/d/a/c;
        value = "deviceID"
    .end annotation
.end field

.field public final forceUpdate:Lc/c/a/e/d/a/b/b/c;
    .annotation runtime Lc/e/d/a/c;
        value = "forceUpdate"
    .end annotation
.end field

.field public final isTopChartsVisible:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isTopChartsVisible"
    .end annotation
.end field

.field public final isUpdateAllEnabled:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isUpdateAllEnabled"
    .end annotation
.end field

.field public final isVideoPrimaryButtonInListVisible:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isVideoPrimaryButtonInListVisible"
    .end annotation
.end field

.field public final kidsPreferences:Lc/c/a/e/d/a/b/b/g;
    .annotation runtime Lc/e/d/a/c;
        value = "kidsPreference"
    .end annotation
.end field

.field public final navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;
    .annotation runtime Lc/e/d/a/c;
        value = "tabBarsPreference"
    .end annotation
.end field


# virtual methods
.method public final a()Lc/c/a/e/g/f;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    new-instance v21, Lc/c/a/e/g/f;

    move-object/from16 v1, v21

    .line 2
    iget v2, v0, Lc/c/a/e/d/a/b/b/l;->deviceID:I

    .line 3
    iget v3, v0, Lc/c/a/e/d/a/b/b/l;->bazaarLatestVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4
    iget-object v3, v0, Lc/c/a/e/d/a/b/b/l;->bazaarLogo:Lc/c/a/e/d/a/b/b/b;

    invoke-virtual {v3}, Lc/c/a/e/d/a/b/b/b;->a()Ljava/lang/String;

    move-result-object v8

    .line 5
    iget-object v3, v0, Lc/c/a/e/d/a/b/b/l;->bazaarLogo:Lc/c/a/e/d/a/b/b/b;

    invoke-virtual {v3}, Lc/c/a/e/d/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v9

    .line 6
    iget-object v3, v0, Lc/c/a/e/d/a/b/b/l;->bazaarLogo:Lc/c/a/e/d/a/b/b/b;

    invoke-virtual {v3}, Lc/c/a/e/d/a/b/b/b;->b()Ljava/lang/String;

    move-result-object v10

    .line 7
    iget-object v3, v0, Lc/c/a/e/d/a/b/b/l;->forceUpdate:Lc/c/a/e/d/a/b/b/c;

    invoke-virtual {v3}, Lc/c/a/e/d/a/b/b/c;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 8
    iget-object v3, v0, Lc/c/a/e/d/a/b/b/l;->forceUpdate:Lc/c/a/e/d/a/b/b/c;

    invoke-virtual {v3}, Lc/c/a/e/d/a/b/b/c;->c()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 9
    iget-object v3, v0, Lc/c/a/e/d/a/b/b/l;->forceUpdate:Lc/c/a/e/d/a/b/b/c;

    invoke-virtual {v3}, Lc/c/a/e/d/a/b/b/c;->a()Ljava/lang/String;

    move-result-object v7

    .line 10
    iget-boolean v3, v0, Lc/c/a/e/d/a/b/b/l;->isUpdateAllEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 11
    iget-boolean v11, v0, Lc/c/a/e/d/a/b/b/l;->isTopChartsVisible:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 12
    iget-boolean v11, v0, Lc/c/a/e/d/a/b/b/l;->isVideoPrimaryButtonInListVisible:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 13
    iget-object v12, v0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-virtual {v12}, Lc/c/a/e/d/a/b/b/j;->a()Lc/c/a/e/d/a/b/b/i;

    move-result-object v12

    invoke-virtual {v12}, Lc/c/a/e/d/a/b/b/i;->a()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 14
    iget-object v13, v0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-virtual {v13}, Lc/c/a/e/d/a/b/b/j;->d()Lc/c/a/e/d/a/b/b/i;

    move-result-object v13

    invoke-virtual {v13}, Lc/c/a/e/d/a/b/b/i;->a()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 15
    iget-object v14, v0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-virtual {v14}, Lc/c/a/e/d/a/b/b/j;->b()Lc/c/a/e/d/a/b/b/i;

    move-result-object v14

    invoke-virtual {v14}, Lc/c/a/e/d/a/b/b/i;->a()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 16
    iget-object v15, v0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-virtual {v15}, Lc/c/a/e/d/a/b/b/j;->c()Lc/c/a/e/d/a/b/b/i;

    move-result-object v15

    invoke-virtual {v15}, Lc/c/a/e/d/a/b/b/i;->a()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v22, v1

    .line 17
    iget-object v1, v0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/j;->g()Lc/c/a/e/d/a/b/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/i;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 18
    iget-object v1, v0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/j;->e()Lc/c/a/e/d/a/b/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/i;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 19
    iget-object v1, v0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/j;->f()Lc/c/a/e/d/a/b/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/i;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 20
    iget-object v1, v0, Lc/c/a/e/d/a/b/b/l;->kidsPreferences:Lc/c/a/e/d/a/b/b/g;

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/g;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v1, v22

    .line 21
    invoke-direct/range {v1 .. v20}, Lc/c/a/e/g/f;-><init>(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v21
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lc/c/a/e/d/a/b/b/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lc/c/a/e/d/a/b/b/l;

    iget v1, p0, Lc/c/a/e/d/a/b/b/l;->deviceID:I

    iget v3, p1, Lc/c/a/e/d/a/b/b/l;->deviceID:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget v1, p0, Lc/c/a/e/d/a/b/b/l;->bazaarLatestVersionCode:I

    iget v3, p1, Lc/c/a/e/d/a/b/b/l;->bazaarLatestVersionCode:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->bazaarLogo:Lc/c/a/e/d/a/b/b/b;

    iget-object v3, p1, Lc/c/a/e/d/a/b/b/l;->bazaarLogo:Lc/c/a/e/d/a/b/b/b;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->forceUpdate:Lc/c/a/e/d/a/b/b/c;

    iget-object v3, p1, Lc/c/a/e/d/a/b/b/l;->forceUpdate:Lc/c/a/e/d/a/b/b/c;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    iget-object v3, p1, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->kidsPreferences:Lc/c/a/e/d/a/b/b/g;

    iget-object v3, p1, Lc/c/a/e/d/a/b/b/l;->kidsPreferences:Lc/c/a/e/d/a/b/b/g;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isVideoPrimaryButtonInListVisible:Z

    iget-boolean v3, p1, Lc/c/a/e/d/a/b/b/l;->isVideoPrimaryButtonInListVisible:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isTopChartsVisible:Z

    iget-boolean v3, p1, Lc/c/a/e/d/a/b/b/l;->isTopChartsVisible:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isUpdateAllEnabled:Z

    iget-boolean p1, p1, Lc/c/a/e/d/a/b/b/l;->isUpdateAllEnabled:Z

    if-ne v1, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lc/c/a/e/d/a/b/b/l;->deviceID:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/a/b/b/l;->bazaarLatestVersionCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->bazaarLogo:Lc/c/a/e/d/a/b/b/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/b;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->forceUpdate:Lc/c/a/e/d/a/b/b/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/c;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/j;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->kidsPreferences:Lc/c/a/e/d/a/b/b/g;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lc/c/a/e/d/a/b/b/g;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isVideoPrimaryButtonInListVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isTopChartsVisible:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isUpdateAllEnabled:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterDeviceAndGetInfoResponseDto(deviceID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/a/b/b/l;->deviceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bazaarLatestVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/a/b/b/l;->bazaarLatestVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bazaarLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->bazaarLogo:Lc/c/a/e/d/a/b/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forceUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->forceUpdate:Lc/c/a/e/d/a/b/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", navigationItemsPreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->navigationItemsPreferences:Lc/c/a/e/d/a/b/b/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kidsPreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/a/b/b/l;->kidsPreferences:Lc/c/a/e/d/a/b/b/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoPrimaryButtonInListVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isVideoPrimaryButtonInListVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTopChartsVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isTopChartsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateAllEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/a/b/b/l;->isUpdateAllEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
