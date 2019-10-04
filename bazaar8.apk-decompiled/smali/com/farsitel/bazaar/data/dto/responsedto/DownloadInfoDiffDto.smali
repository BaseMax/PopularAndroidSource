.class public final Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;
.super Ljava/lang/Object;
.source "DownloadInfoResponseDto.kt"


# instance fields
.field public final hash:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "sha1hash"
    .end annotation
.end field

.field public final oldVersionCode:J
    .annotation runtime Lc/e/d/a/c;
        value = "oldVersionCode"
    .end annotation
.end field

.field public final size:J
    .annotation runtime Lc/e/d/a/c;
        value = "size"
    .end annotation
.end field

.field public final token:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "token"
    .end annotation
.end field

.field public final upgradeVersionCode:J
    .annotation runtime Lc/e/d/a/c;
        value = "newVersionCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "token"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->size:J

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->token:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->hash:Ljava/lang/String;

    iput-wide p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->oldVersionCode:J

    iput-wide p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->upgradeVersionCode:J

    return-void
.end method


# virtual methods
.method public final getHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getOldVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->oldVersionCode:J

    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->size:J

    return-wide v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpgradeVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->upgradeVersionCode:J

    return-wide v0
.end method
