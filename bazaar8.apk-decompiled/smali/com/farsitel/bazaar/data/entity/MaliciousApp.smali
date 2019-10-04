.class public final Lcom/farsitel/bazaar/data/entity/MaliciousApp;
.super Ljava/lang/Object;
.source "Application.kt"


# instance fields
.field public final isNotified:Z

.field public final packageName:Ljava/lang/String;

.field public final reasonInfo:Ljava/lang/String;

.field public final reasonTitle:Ljava/lang/String;

.field public final versionCode:J

.field public final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    iput-object p5, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/MaliciousApp;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/MaliciousApp;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    :cond_4
    move-object v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-boolean p7, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    :cond_5
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-wide p5, v0

    move-object p7, v2

    move-object p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)Lcom/farsitel/bazaar/data/entity/MaliciousApp;
    .locals 9

    const-string v0, "packageName"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    move-object v1, v0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/data/entity/MaliciousApp;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    if-ne v1, p1, :cond_1

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

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    return-wide v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final isNotified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    return v0
.end method

.method public final toFlatPageItemApp(Landroid/content/Context;)Lcom/farsitel/bazaar/common/model/page/ListItem$App;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 2
    new-instance v27, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-object/from16 v3, v27

    .line 3
    iget-object v4, v0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    .line 4
    iget-wide v5, v0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v5, 0x1

    .line 5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v6, 0x0

    .line 6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v13, v14

    .line 7
    sget-object v6, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v8, v0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1, v8}, Lc/c/a/c/h/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v1, -0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v16, v17

    .line 9
    new-instance v1, Lc/c/a/c/d/c$j;

    invoke-direct {v1}, Lc/c/a/c/d/c$j;-><init>()V

    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 10
    iget-object v1, v0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    move-object/from16 v21, v1

    .line 11
    iget-object v1, v0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    move-object/from16 v22, v1

    const-string v5, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x180000

    const/16 v26, 0x0

    .line 12
    invoke-direct/range {v3 .. v26}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v3, v2

    move-object/from16 v4, v27

    .line 13
    invoke-direct/range {v3 .. v8}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;-><init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZILh/f/b/f;)V

    return-object v2
.end method

.method public final toMaliciousAppEntity()Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;
    .locals 9

    .line 1
    new-instance v8, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    .line 4
    iget-wide v3, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    .line 5
    iget-object v5, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    .line 6
    iget-object v6, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    .line 7
    iget-boolean v7, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    move-object v0, v8

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaliciousApp(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reasonTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->reasonInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->isNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
