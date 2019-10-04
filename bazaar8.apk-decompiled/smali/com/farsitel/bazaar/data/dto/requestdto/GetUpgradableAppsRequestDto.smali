.class public final Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;
.super Ljava/lang/Object;
.source "GetUpgradableAppsRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.getUpgradableAppsRequest"
.end annotation


# instance fields
.field public final deviceID:I
    .annotation runtime Lc/e/d/a/c;
        value = "deviceID"
    .end annotation
.end field

.field public final installedApps:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "installedAppsInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final sdkVersion:I
    .annotation runtime Lc/e/d/a/c;
        value = "sdkVersion"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "installedApps"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->deviceID:I

    iput p2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->sdkVersion:I

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->installedApps:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;IILjava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->deviceID:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->sdkVersion:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->installedApps:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->copy(IILjava/util/List;)Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->deviceID:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->sdkVersion:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->installedApps:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IILjava/util/List;)Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;",
            ">;)",
            "Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;"
        }
    .end annotation

    const-string v0, "installedApps"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;

    invoke-direct {v0, p1, p2, p3}, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;-><init>(IILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->deviceID:I

    iget v3, p1, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->deviceID:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->sdkVersion:I

    iget v3, p1, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->sdkVersion:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->installedApps:Ljava/util/List;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->installedApps:Ljava/util/List;

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

.method public final getDeviceID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->deviceID:I

    return v0
.end method

.method public final getInstalledApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->installedApps:Ljava/util/List;

    return-object v0
.end method

.method public final getSdkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->sdkVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->deviceID:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->sdkVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->installedApps:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetUpgradableAppsRequestDto(deviceID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->deviceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->sdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", installedApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;->installedApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
