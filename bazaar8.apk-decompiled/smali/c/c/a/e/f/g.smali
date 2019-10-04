.class public final Lc/c/a/e/f/g;
.super Ljava/lang/Object;
.source "Mappers.kt"


# direct methods
.method public static final a(Lc/c/a/e/d/a/b/b/e;)J
    .locals 2

    const-string v0, "$this$toWaitingTime"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/e/d/a/b/b/e;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/data/entity/WaitingTime;->constructor-impl(J)J

    return-wide v0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;)Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;
    .locals 14

    const-string v0, "$this$toDownloadedVideoModel"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;

    .line 62
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoName()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoDesc()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getExpirationDate()J

    move-result-wide v8

    .line 69
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getShareLink()Ljava/lang/String;

    move-result-object v10

    .line 70
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getQualityString()Ljava/lang/String;

    move-result-object v11

    .line 71
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getDownloadPriceType()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v12

    .line 72
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getDownloadServerState()Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-result-object v13

    move-object v1, v0

    .line 73
    invoke-direct/range {v1 .. v13}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V

    return-object v0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;)Lcom/farsitel/bazaar/common/model/ShortInfo;
    .locals 2

    const-string v0, "$this$toVideoShotInfo"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/farsitel/bazaar/common/model/ShortInfo;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;->getMoreInfo()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/farsitel/bazaar/common/model/ShortInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lc/c/a/e/d/g/a/b;)Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;
    .locals 8

    const-string v0, "$this$toCategory"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;

    invoke-virtual {p0}, Lc/c/a/e/d/g/a/b;->b()I

    move-result v2

    invoke-virtual {p0}, Lc/c/a/e/d/g/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lc/c/a/e/d/g/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lc/c/a/e/d/g/a/b;->a()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lc/c/a/e/d/g/a/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lc/c/a/e/d/g/a/b;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v7, p0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;-><init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;)Lcom/farsitel/bazaar/common/model/page/ListItem$App;
    .locals 27

    const-string v0, "$this$toFlatPageApp"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 37
    new-instance v26, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-object/from16 v2, v26

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object v12, v13

    const/4 v5, -0x1

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v5, Lc/c/a/c/d/c$g;

    invoke-direct {v5}, Lc/c/a/c/d/c$g;-><init>()V

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v6}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x1e0000

    const/16 v25, 0x0

    .line 40
    invoke-direct/range {v2 .. v25}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, v0

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;-><init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZILh/f/b/f;)V

    return-object v0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/entity/UpgradableApp;)Lcom/farsitel/bazaar/common/model/page/ListItem$App;
    .locals 27

    const-string v0, "$this$toFlatPageItemApp"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 2
    new-instance v26, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-object/from16 v2, v26

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getVersionCode()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPrice()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPriceString()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object v12, v13

    const/4 v5, -0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v15, v16

    new-instance v5, Lc/c/a/c/d/c$l;

    invoke-direct {v5}, Lc/c/a/c/d/c$l;-><init>()V

    const/4 v7, 0x0

    invoke-static {v5, v7, v1, v7}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x1e0000

    const/16 v25, 0x0

    .line 5
    invoke-direct/range {v2 .. v25}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;-><init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZILh/f/b/f;)V

    return-object v0
.end method

.method public static final a(Ljava/util/List;ILcom/farsitel/bazaar/data/entity/RequestProperties;)Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/InstalledApp;",
            ">;I",
            "Lcom/farsitel/bazaar/data/entity/RequestProperties;",
            ")",
            "Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;"
        }
    .end annotation

    const-string v0, "$this$toDto"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/RequestProperties;->getAndroidClientInfo()Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DeviceInfo;->getSdkVersion()I

    move-result p2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Lcom/farsitel/bazaar/data/entity/InstalledApp;

    .line 18
    new-instance v12, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;

    .line 19
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/InstalledApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/InstalledApp;->getVersionCode()J

    move-result-wide v4

    .line 21
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/InstalledApp;->getInstallDelta()J

    move-result-wide v6

    .line 22
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/InstalledApp;->getUpdateDelta()J

    move-result-wide v8

    .line 23
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/InstalledApp;->isPreInstall()Z

    move-result v10

    .line 24
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/InstalledApp;->getSign()Ljava/util/List;

    move-result-object v11

    move-object v2, v12

    .line 25
    invoke-direct/range {v2 .. v11}, Lcom/farsitel/bazaar/data/dto/requestdto/InstalledAppInfoRequest;-><init>(Ljava/lang/String;JJJZLjava/util/List;)V

    .line 26
    invoke-interface {v0, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;

    invoke-direct {p0, p1, p2, v0}, Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;-><init>(IILjava/util/List;)V

    return-object p0
.end method

.method public static final a(Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;)Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;
    .locals 14

    const-string v0, "$this$toLocalDownloadedVideoEntity"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    .line 75
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getDownloadId()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoName()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoDesc()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getCoverUrl()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getExpirationDate()J

    move-result-wide v8

    .line 82
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getShareLink()Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getQualityString()Ljava/lang/String;

    move-result-object v11

    .line 84
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getDownloadPriceType()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v12

    .line 85
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getDownloadServerState()Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-result-object v13

    move-object v1, v0

    .line 86
    invoke-direct/range {v1 .. v13}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V

    return-object v0
.end method

.method public static final a(I)Lcom/farsitel/bazaar/data/entity/ErrorCode;
    .locals 6

    .line 10
    invoke-static {}, Lcom/farsitel/bazaar/data/entity/ErrorCode;->values()[Lcom/farsitel/bazaar/data/entity/ErrorCode;

    move-result-object v0

    .line 11
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 12
    invoke-virtual {v4}, Lcom/farsitel/bazaar/data/entity/ErrorCode;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/farsitel/bazaar/data/entity/ErrorCode;->UNKNOWN:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    :goto_3
    return-object v4
.end method

.method public static final a(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Lcom/farsitel/bazaar/data/entity/InstalledApp;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$toInstalledApp"

    invoke-static {v0, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/farsitel/bazaar/data/entity/InstalledApp;

    .line 53
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-static {v4, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static/range {p0 .. p0}, Lc/c/a/c/b/h;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v6

    .line 56
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "versionName"

    invoke-static {v8, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sub-long/2addr v9, v11

    const v3, 0xea60

    int-to-long v11, v3

    div-long/2addr v9, v11

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-wide v15, v9

    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sub-long/2addr v13, v9

    div-long v11, v13, v11

    .line 59
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lc/c/a/c/h/b;->b(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodingUtils.getCertifica\u2026ars(context, packageName)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lh/a/i;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v1, 0x80

    const/16 v17, 0x0

    move-object v3, v2

    move-wide v9, v15

    move-object v15, v0

    move/from16 v16, v1

    .line 60
    invoke-direct/range {v3 .. v17}, Lcom/farsitel/bazaar/data/entity/InstalledApp;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJZZLjava/util/List;ILh/f/b/f;)V

    return-object v2
.end method

.method public static final a(Lcom/farsitel/bazaar/data/entity/DownloadedApp;)Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;
    .locals 7

    const-string v0, "$this$toLocalDownloadedApp"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;

    .line 43
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/DownloadedApp;->isFree()Z

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v0
.end method

.method public static final a(Landroid/location/Location;)Lcom/farsitel/bazaar/data/entity/Location;
    .locals 5

    const-string v0, "$this$toLocationEntity"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/farsitel/bazaar/data/entity/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/farsitel/bazaar/data/entity/Location;-><init>(DD)V

    return-object v0
.end method

.method public static final a(Lc/c/a/e/d/a/b/b/n;)Lcom/farsitel/bazaar/data/entity/LoginResponse;
    .locals 2

    const-string v0, "$this$toLoginResponse"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/farsitel/bazaar/data/entity/LoginResponse;

    invoke-virtual {p0}, Lc/c/a/e/d/a/b/b/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc/c/a/e/d/a/b/b/n;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/farsitel/bazaar/data/entity/LoginResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Landroid/location/Address;Lcom/farsitel/bazaar/data/entity/Location;)Lcom/farsitel/bazaar/data/entity/Place;
    .locals 9

    const-string v0, "$this$toPlace"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/farsitel/bazaar/data/entity/Place;

    .line 30
    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NA"

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 32
    :goto_1
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 33
    :goto_2
    invoke-virtual {p0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, v2

    .line 34
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    move-object v6, p1

    .line 35
    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/data/entity/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/Location;J)V

    return-object v0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionItemDto;)Lcom/farsitel/bazaar/data/entity/SearchPrediction;
    .locals 3

    const-string v0, "$this$toSearchPrediction"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x373fe494

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    new-instance v0, Lcom/farsitel/bazaar/data/entity/SearchPrediction$History;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionItemDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionItemDto;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionItemDto;->getReferrer()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/farsitel/bazaar/data/entity/SearchPrediction$History;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_4
    :goto_1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/SearchPrediction$Normal;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionItemDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionItemDto;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionItemDto;->getReferrer()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/farsitel/bazaar/data/entity/SearchPrediction$Normal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;
    .locals 9

    const-string v0, "$this$toUpgradableApp"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 46
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree()Z

    move-result v4

    .line 48
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->getVersionCode()J

    move-result-wide v5

    .line 49
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified()Z

    move-result v7

    .line 50
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled()Z

    move-result v8

    const-string v3, ""

    move-object v1, v0

    .line 51
    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZJZZ)V

    return-object v0
.end method

.method public static final b(Lcom/farsitel/bazaar/data/entity/UpgradableApp;)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;
    .locals 10

    const-string v0, "$this$toLocalUpgradableApp"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getVersionCode()J

    move-result-wide v3

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isFree()Z

    move-result v5

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified()Z

    move-result v6

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled()Z

    move-result v7

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;-><init>(Ljava/lang/String;JZZZJ)V

    return-object v0
.end method
