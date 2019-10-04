.class public final Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;
.super Ljava/lang/Object;
.source "DownloadInfoResponseDto.kt"


# instance fields
.field public final cdnUrls:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "cdnPrefix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final compatibleDevices:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "compatibleDevices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final downloadInfoDiffs:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "packageDiffs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;",
            ">;"
        }
    .end annotation
.end field

.field public final hash:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "hashCode"
    .end annotation
.end field

.field public final ipAddress:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "ipAddress"
    .end annotation
.end field

.field public final multiConnection:Z
    .annotation runtime Lc/e/d/a/c;
        value = "multiConnection"
    .end annotation
.end field

.field public final size:Ljava/lang/Long;
    .annotation runtime Lc/e/d/a/c;
        value = "packageSize"
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "token"
    .end annotation
.end field

.field public final versionCode:Ljava/lang/Long;
    .annotation runtime Lc/e/d/a/c;
        value = "versionCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->cdnUrls:Ljava/util/List;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->hash:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->size:Ljava/lang/Long;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->downloadInfoDiffs:Ljava/util/List;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->ipAddress:Ljava/lang/String;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->compatibleDevices:Ljava/util/List;

    iput-boolean p8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->multiConnection:Z

    iput-object p9, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->versionCode:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getCdnUrls()Ljava/util/List;
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
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->cdnUrls:Ljava/util/List;

    return-object v0
.end method

.method public final getCompatibleDevices()Ljava/util/List;
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
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->compatibleDevices:Ljava/util/List;

    return-object v0
.end method

.method public final getDownloadInfoDiffs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->downloadInfoDiffs:Ljava/util/List;

    return-object v0
.end method

.method public final getHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getIpAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getMultiConnection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->multiConnection:Z

    return v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->versionCode:Ljava/lang/Long;

    return-object v0
.end method
