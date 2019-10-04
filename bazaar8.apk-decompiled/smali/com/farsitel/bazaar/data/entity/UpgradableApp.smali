.class public final Lcom/farsitel/bazaar/data/entity/UpgradableApp;
.super Lcom/farsitel/bazaar/data/entity/Application;
.source "Application.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;


# instance fields
.field public final isFree:Z

.field public final isUpdateEnabled:Z

.field public final isUpdateNotified:Z

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final price:I

.field public final priceString:Ljava/lang/String;

.field public final versionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->Companion:Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJZZ)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/data/entity/Application;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree:Z

    iput-wide p4, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->versionCode:J

    iput-boolean p6, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified:Z

    iput-boolean p7, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    iput p1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->price:I

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    const-string p1, "1000"

    :goto_1
    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->priceString:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/UpgradableApp;Ljava/lang/String;Ljava/lang/String;ZJZZILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result p3

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->versionCode:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p6, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified:Z

    :cond_4
    move v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-boolean p7, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled:Z

    :cond_5
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move-wide p6, v1

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->copy(Ljava/lang/String;Ljava/lang/String;ZJZZ)Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result v0

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->versionCode:J

    return-wide v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZJZZ)Lcom/farsitel/bazaar/data/entity/UpgradableApp;
    .locals 9

    const-string v0, "packageName"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    move-object v1, v0

    move v4, p3

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZJZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->versionCode:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->versionCode:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled:Z

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->price:I

    return v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->versionCode:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->versionCode:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public isFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree:Z

    return v0
.end method

.method public final isUpdateEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled:Z

    return v0
.end method

.method public final isUpdateNotified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradableApp(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
