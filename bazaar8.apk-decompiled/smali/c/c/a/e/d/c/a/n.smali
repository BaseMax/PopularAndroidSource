.class public final Lc/c/a/e/d/c/a/n;
.super Ljava/lang/Object;
.source "AppDetailResponseDto.kt"


# instance fields
.field public final changeLog:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "changeLog"
    .end annotation
.end field

.field public final haveAdNetwork:Ljava/lang/Boolean;
    .annotation runtime Lc/e/d/a/c;
        value = "haveAdNetwork"
    .end annotation
.end field

.field public final id:I
    .annotation runtime Lc/e/d/a/c;
        value = "packageID"
    .end annotation
.end field

.field public final lastUpdated:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "lastUpdated"
    .end annotation
.end field

.field public final lastUpdatedTimeFromEpoch:Ljava/lang/Long;
    .annotation runtime Lc/e/d/a/c;
        value = "lastUpdatedTimeFromEpoch"
    .end annotation
.end field

.field public final minSdkVersion:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "minimumSDKVersion"
    .end annotation
.end field

.field public final packageDiffs:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "packageDiffs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/c/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final packageHash:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageHash"
    .end annotation
.end field

.field public final packageSize:Ljava/lang/Long;
    .annotation runtime Lc/e/d/a/c;
        value = "packageSize"
    .end annotation
.end field

.field public final packageToken:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageToken"
    .end annotation
.end field

.field public final permissionDescriptions:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "permissionDescriptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final permissions:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "permissions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
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

.field public final versionCode:J
    .annotation runtime Lc/e/d/a/c;
        value = "versionCode"
    .end annotation
.end field

.field public final versionName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "versionName"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/appdetail/Package;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget v2, v0, Lc/c/a/e/d/c/a/n;->id:I

    iget-object v3, v0, Lc/c/a/e/d/c/a/n;->packageSize:Ljava/lang/Long;

    iget-object v4, v0, Lc/c/a/e/d/c/a/n;->packageToken:Ljava/lang/String;

    iget-object v5, v0, Lc/c/a/e/d/c/a/n;->packageHash:Ljava/lang/String;

    iget-wide v6, v0, Lc/c/a/e/d/c/a/n;->versionCode:J

    iget-object v8, v0, Lc/c/a/e/d/c/a/n;->versionName:Ljava/lang/String;

    iget-object v9, v0, Lc/c/a/e/d/c/a/n;->changeLog:Ljava/lang/String;

    .line 2
    iget-object v10, v0, Lc/c/a/e/d/c/a/n;->minSdkVersion:Ljava/lang/String;

    iget-object v11, v0, Lc/c/a/e/d/c/a/n;->lastUpdated:Ljava/lang/String;

    iget-object v12, v0, Lc/c/a/e/d/c/a/n;->lastUpdatedTimeFromEpoch:Ljava/lang/Long;

    iget-object v13, v0, Lc/c/a/e/d/c/a/n;->permissions:Ljava/util/List;

    iget-object v14, v0, Lc/c/a/e/d/c/a/n;->haveAdNetwork:Ljava/lang/Boolean;

    .line 3
    iget-object v1, v0, Lc/c/a/e/d/c/a/n;->packageDiffs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    const/16 v14, 0xa

    invoke-static {v1, v14}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 6
    check-cast v14, Lc/c/a/e/d/c/a/m;

    .line 7
    invoke-virtual {v14}, Lc/c/a/e/d/c/a/m;->a()Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v19, v14

    const/4 v1, 0x0

    move-object v15, v1

    :cond_1
    iget-object v1, v0, Lc/c/a/e/d/c/a/n;->permissionDescriptions:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lc/c/a/e/d/c/a/n;->verboseSize:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lc/c/a/e/d/c/a/n;->verboseSizeLabel:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 8
    new-instance v20, Lcom/farsitel/bazaar/common/model/appdetail/Package;

    move-object/from16 v1, v20

    move-object/from16 v14, v19

    invoke-direct/range {v1 .. v18}, Lcom/farsitel/bazaar/common/model/appdetail/Package;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/e/d/c/a/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/e/d/c/a/n;

    iget v1, p0, Lc/c/a/e/d/c/a/n;->id:I

    iget v3, p1, Lc/c/a/e/d/c/a/n;->id:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageSize:Ljava/lang/Long;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->packageSize:Ljava/lang/Long;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageToken:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->packageToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageHash:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->packageHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lc/c/a/e/d/c/a/n;->versionCode:J

    iget-wide v5, p1, Lc/c/a/e/d/c/a/n;->versionCode:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->versionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->changeLog:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->changeLog:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->minSdkVersion:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->minSdkVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->lastUpdated:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->lastUpdated:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->lastUpdatedTimeFromEpoch:Ljava/lang/Long;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->lastUpdatedTimeFromEpoch:Ljava/lang/Long;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->permissions:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->permissions:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->haveAdNetwork:Ljava/lang/Boolean;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->haveAdNetwork:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageDiffs:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->packageDiffs:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->permissionDescriptions:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->permissionDescriptions:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->verboseSize:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/n;->verboseSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->verboseSizeLabel:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/c/a/n;->verboseSizeLabel:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lc/c/a/e/d/c/a/n;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageSize:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageHash:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lc/c/a/e/d/c/a/n;->versionCode:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->changeLog:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->minSdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->lastUpdated:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->lastUpdatedTimeFromEpoch:Ljava/lang/Long;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->permissions:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->haveAdNetwork:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageDiffs:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->permissionDescriptions:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->verboseSize:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->verboseSizeLabel:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_d
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageDto(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/n;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/e/d/c/a/n;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", changeLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->changeLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->minSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdatedTimeFromEpoch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->lastUpdatedTimeFromEpoch:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", haveAdNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->haveAdNetwork:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageDiffs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->packageDiffs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permissionDescriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->permissionDescriptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->verboseSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseSizeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/n;->verboseSizeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
