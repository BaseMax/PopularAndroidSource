.class public final Lcom/farsitel/bazaar/data/entity/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.kt"


# instance fields
.field public final cdnUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final downloadInfoDiffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;",
            ">;"
        }
    .end annotation
.end field

.field public final hash:Ljava/math/BigInteger;

.field public final ipAddress:Ljava/lang/String;

.field public final multiConnection:Z

.field public final size:Ljava/lang/Long;

.field public final token:Ljava/lang/String;

.field public final versionCode:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/math/BigInteger;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;ZLjava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/math/BigInteger;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;",
            ">;",
            "Ljava/lang/String;",
            "Z",
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

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->cdnUrls:Ljava/util/List;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->hash:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->size:Ljava/lang/Long;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->downloadInfoDiffs:Ljava/util/List;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->ipAddress:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->multiConnection:Z

    iput-object p8, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->versionCode:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->cdnUrls:Ljava/util/List;

    return-object v0
.end method

.method public final getDownloadInfoDiff(JJ)Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->downloadInfoDiffs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;

    .line 3
    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->getOldVersionCode()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->getUpgradeVersionCode()J

    move-result-wide v3

    cmp-long v5, p3, v3

    if-nez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    move-object v1, v2

    .line 4
    :cond_2
    check-cast v1, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;

    :cond_3
    return-object v1
.end method

.method public final getHash()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->hash:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getIpAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getMultiConnection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->multiConnection:Z

    return v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode(Ljava/lang/Long;)J
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->versionCode:Ljava/lang/Long;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->versionCode:Ljava/lang/Long;

    return-object v0
.end method
