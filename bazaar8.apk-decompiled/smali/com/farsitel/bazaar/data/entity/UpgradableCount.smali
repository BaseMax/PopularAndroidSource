.class public final Lcom/farsitel/bazaar/data/entity/UpgradableCount;
.super Ljava/lang/Object;
.source "Application.kt"


# instance fields
.field public final maliciousAppCount:I

.field public final maliciousAppNotifier:I

.field public final needToShowBadge:Z

.field public final upgradableAppNotifier:I

.field public final upgradeableAppCount:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradeableAppCount:I

    iput p2, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppCount:I

    iput p3, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    iput p4, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

    .line 2
    iget p1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

    iget p2, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    add-int/2addr p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->needToShowBadge:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/UpgradableCount;IIIIILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/UpgradableCount;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradeableAppCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppCount:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->copy(IIII)Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradeableAppCount:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppCount:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

    return v0
.end method

.method public final copy(IIII)Lcom/farsitel/bazaar/data/entity/UpgradableCount;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradeableAppCount:I

    iget v3, p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradeableAppCount:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppCount:I

    iget v3, p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppCount:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    iget v3, p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

    iget p1, p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

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

.method public final getMaliciousAppCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppCount:I

    return v0
.end method

.method public final getMaliciousAppNotifier()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

    return v0
.end method

.method public final getNeedToShowBadge()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->needToShowBadge:Z

    return v0
.end method

.method public final getUpgradableAppNotifier()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    return v0
.end method

.method public final getUpgradeableAppCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradeableAppCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradeableAppCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradableCount(upgradeableAppCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradeableAppCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maliciousAppCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upgradableAppNotifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->upgradableAppNotifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maliciousAppNotifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->maliciousAppNotifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
