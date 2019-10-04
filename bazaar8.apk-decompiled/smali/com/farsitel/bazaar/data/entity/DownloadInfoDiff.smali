.class public final Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;
.super Ljava/lang/Object;
.source "DownloadInfo.kt"


# instance fields
.field public final hash:Ljava/math/BigInteger;

.field public final oldVersionCode:J

.field public final size:J

.field public final token:Ljava/lang/String;

.field public final upgradeVersionCode:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/math/BigInteger;JJ)V
    .locals 1

    const-string v0, "token"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->size:J

    iput-object p3, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->token:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->hash:Ljava/math/BigInteger;

    iput-wide p5, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->oldVersionCode:J

    iput-wide p7, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->upgradeVersionCode:J

    return-void
.end method


# virtual methods
.method public final getHash()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->hash:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getOldVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->oldVersionCode:J

    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->size:J

    return-wide v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpgradeVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->upgradeVersionCode:J

    return-wide v0
.end method
