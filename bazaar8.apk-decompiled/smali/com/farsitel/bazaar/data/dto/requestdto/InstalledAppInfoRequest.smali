.class public final Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;
.super Ljava/lang/Object;
.source "GetUpgradableAppsRequestDto.kt"


# instance fields
.field public final installDelta:J
    .annotation runtime Lc/e/d/a/c;
        value = "installDelta"
    .end annotation
.end field

.field public final isPreInstall:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isPreInstall"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field

.field public final signs:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "signs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final updateDelta:J
    .annotation runtime Lc/e/d/a/c;
        value = "updateDelta"
    .end annotation
.end field

.field public final versionCode:J
    .annotation runtime Lc/e/d/a/c;
        value = "versionCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signs"

    invoke-static {p9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->versionCode:J

    iput-wide p4, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->installDelta:J

    iput-wide p6, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->updateDelta:J

    iput-boolean p8, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->isPreInstall:Z

    iput-object p9, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->signs:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;Ljava/lang/String;JJJZLjava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;
    .locals 10

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->versionCode:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->installDelta:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p10, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->updateDelta:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p6

    :goto_3
    and-int/lit8 v8, p10, 0x10

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->isPreInstall:Z

    goto :goto_4

    :cond_4
    move/from16 v8, p8

    :goto_4
    and-int/lit8 v9, p10, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->signs:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p9

    :goto_5
    move-object p1, v1

    move-wide p2, v2

    move-wide p4, v4

    move-wide/from16 p6, v6

    move/from16 p8, v8

    move-object/from16 p9, v9

    invoke-virtual/range {p0 .. p9}, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->copy(Ljava/lang/String;JJJZLjava/util/List;)Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->versionCode:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->installDelta:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->updateDelta:J

    return-wide v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->isPreInstall:Z

    return v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->signs:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JJJZLjava/util/List;)Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;"
        }
    .end annotation

    const-string v0, "packageName"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signs"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;

    move-object v1, v0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;-><init>(Ljava/lang/String;JJJZLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->versionCode:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->versionCode:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->installDelta:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->installDelta:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->updateDelta:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->updateDelta:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->isPreInstall:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->isPreInstall:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->signs:Ljava/util/List;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->signs:Ljava/util/List;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getInstallDelta()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->installDelta:J

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSigns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->signs:Ljava/util/List;

    return-object v0
.end method

.method public final getUpdateDelta()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->updateDelta:J

    return-wide v0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->versionCode:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->versionCode:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->installDelta:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->updateDelta:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->isPreInstall:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->signs:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPreInstall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->isPreInstall:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstalledAppInfoRequest(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", installDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->installDelta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updateDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->updateDelta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isPreInstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->isPreInstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", signs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;->signs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
