.class public final Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;
.super Ljava/lang/Object;
.source "UpgradableAppsResponseDto.kt"


# instance fields
.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field

.field public final reasonInfo:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "reasonInfo"
    .end annotation
.end field

.field public final reasonTitle:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "reasonTitle"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

    :cond_4
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-wide p5, v0

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;
    .locals 8

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

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

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    return-wide v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toMaliciousApp()Lcom/farsitel/bazaar/data/entity/MaliciousApp;
    .locals 9

    .line 1
    new-instance v8, Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    .line 4
    iget-wide v3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    .line 5
    iget-object v5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    .line 6
    iget-object v6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v8

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/farsitel/bazaar/data/entity/MaliciousApp;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaliciousAppsDto(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reasonTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->reasonInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
