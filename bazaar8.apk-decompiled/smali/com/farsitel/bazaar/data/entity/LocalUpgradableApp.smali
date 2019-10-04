.class public final Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;
.super Ljava/lang/Object;
.source "LocalUpgradableApp.kt"


# instance fields
.field public final isFree:Z

.field public final isNotified:Z

.field public final isUpdateEnabled:Z

.field public final lastUpdateTime:J

.field public final packageName:Ljava/lang/String;

.field public final versionCode:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JZZZJ)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->versionCode:J

    iput-boolean p4, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree:Z

    iput-boolean p5, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified:Z

    iput-boolean p6, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled:Z

    iput-wide p7, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->lastUpdateTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JZZZJILh/f/b/f;)V
    .locals 10

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move/from16 v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-wide/from16 v8, p7

    .line 2
    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;-><init>(Ljava/lang/String;JZZZJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;Ljava/lang/String;JZZZJILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->versionCode:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree:Z

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified:Z

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled:Z

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->lastUpdateTime:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p7

    :goto_5
    move-object p1, v1

    move-wide p2, v2

    move p4, v4

    move p5, v5

    move p6, v6

    move-wide/from16 p7, v7

    invoke-virtual/range {p0 .. p8}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->copy(Ljava/lang/String;JZZZJ)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->versionCode:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled:Z

    return v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->lastUpdateTime:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;JZZZJ)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;
    .locals 10

    const-string v0, "packageName"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-object v1, v0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;-><init>(Ljava/lang/String;JZZZJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->versionCode:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->versionCode:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->lastUpdateTime:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->lastUpdateTime:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_4

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

.method public final getLastUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->lastUpdateTime:J

    return-wide v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->versionCode:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->versionCode:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->lastUpdateTime:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public final isFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree:Z

    return v0
.end method

.method public final isNotified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified:Z

    return v0
.end method

.method public final isUpdateEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalUpgradableApp(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
