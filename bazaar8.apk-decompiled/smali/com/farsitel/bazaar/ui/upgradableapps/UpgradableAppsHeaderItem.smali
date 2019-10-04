.class public final Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;
.super Lcom/farsitel/bazaar/common/model/page/FeatureHeaderItem;
.source "UpgradableAppsAdapter.kt"


# instance fields
.field public showInstall:Z

.field public final upgradableAppCount:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/common/model/page/FeatureHeaderItem;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->upgradableAppCount:I

    iput-boolean p2, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->showInstall:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->showInstall:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->showInstall:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->upgradableAppCount:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;

    iget v1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->upgradableAppCount:I

    iget v3, p1, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->upgradableAppCount:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->showInstall:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->showInstall:Z

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

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->upgradableAppCount:I

    invoke-static {v0}, La;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->showInstall:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradableAppsHeaderItem(upgradableAppCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->upgradableAppCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showInstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->showInstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
