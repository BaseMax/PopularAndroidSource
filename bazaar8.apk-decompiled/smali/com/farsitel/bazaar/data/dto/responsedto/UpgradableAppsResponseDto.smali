.class public final Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;
.super Ljava/lang/Object;
.source "UpgradableAppsResponseDto.kt"


# instance fields
.field public final maliciousApps:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "maliciousApps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;",
            ">;"
        }
    .end annotation
.end field

.field public final upgradableApps:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "upgradableApps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->copy(Ljava/util/List;Ljava/util/List;)Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppDto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;)Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;",
            ">;)",
            "Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;"
        }
    .end annotation

    new-instance v0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    iget-object v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

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

.method public final getMaliciousApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

    return-object v0
.end method

.method public final getUpgradableApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradableAppsResponseDto(upgradableApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maliciousApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUpgradableApps()Lcom/farsitel/bazaar/data/entity/UpgradableApps;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->upgradableApps:Ljava/util/List;

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppDto;

    .line 5
    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppDto;->toUpgradableApp()Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/UpgradableAppsResponseDto;->maliciousApps:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;

    .line 10
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/MaliciousAppsDto;->toMaliciousApp()Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v3

    .line 11
    :cond_3
    new-instance v0, Lcom/farsitel/bazaar/data/entity/UpgradableApps;

    invoke-direct {v0, v2, v3}, Lcom/farsitel/bazaar/data/entity/UpgradableApps;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
