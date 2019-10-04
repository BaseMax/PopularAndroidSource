.class public final Lc/c/a/e/f/a;
.super Ljava/lang/Object;
.source "App.kt"


# direct methods
.method public static final a(Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;)Lcom/farsitel/bazaar/data/entity/DownloadInfo;
    .locals 10

    const-string v0, "$this$toDownloadInfo"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->getCdnUrls()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->getHash()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {v4, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->getSize()Ljava/lang/Long;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->getDownloadInfoDiffs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 9
    check-cast v6, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;

    .line 10
    invoke-static {v6}, Lc/c/a/e/f/a;->a(Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;)Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v6, v0

    :goto_1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->getIpAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->getMultiConnection()Z

    move-result v8

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;->getVersionCode()Ljava/lang/Long;

    move-result-object v9

    .line 11
    new-instance p0, Lcom/farsitel/bazaar/data/entity/DownloadInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/math/BigInteger;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;ZLjava/lang/Long;)V

    return-object p0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;)Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;
    .locals 10

    const-string v0, "$this$toDownloadInfoDiff"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->getSize()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->getToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->getHash()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x10

    invoke-direct {v5, v1, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->getOldVersionCode()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoDiffDto;->getUpgradeVersionCode()J

    move-result-wide v8

    move-object v1, v0

    .line 4
    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;-><init>(JLjava/lang/String;Ljava/math/BigInteger;JJ)V

    return-object v0
.end method
