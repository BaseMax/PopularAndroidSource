.class public final Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadService.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/app/download/DownloadService;->b(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/data/entity/DownloadInfo;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

.field public final synthetic this$0:Lcom/farsitel/bazaar/app/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->a(Lcom/farsitel/bazaar/data/entity/DownloadInfo;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/DownloadInfo;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "downloadInfo"

    invoke-static {v0, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-static {v2}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-static {v3}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Lcom/farsitel/bazaar/app/download/DownloadService;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v3, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getInstalledVersionCode()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, -0x1

    .line 5
    :goto_0
    iget-object v5, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getVersionCode()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getVersionCode(Ljava/lang/Long;)J

    move-result-wide v5

    .line 6
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getDownloadInfoDiff(JJ)Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;

    move-result-object v3

    .line 7
    new-instance v15, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    .line 8
    iget-object v4, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 9
    iget-object v4, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getAppName()Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v4, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->isFree()Z

    move-result v7

    .line 11
    iget-object v4, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getReferrer()Ljava/lang/String;

    move-result-object v8

    .line 12
    iget-object v4, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getVersionCode()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getVersionCode(Ljava/lang/Long;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 13
    iget-object v4, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getInstalledVersionCode()Ljava/lang/Long;

    move-result-object v10

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getCdnUrls()Ljava/util/List;

    move-result-object v11

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getToken()Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getHash()Ljava/math/BigInteger;

    move-result-object v13

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getSize()Ljava/lang/Long;

    move-result-object v14

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 18
    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->getToken()Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_2
    move-object/from16 v16, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 19
    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->getHash()Ljava/math/BigInteger;

    move-result-object v17

    goto :goto_2

    :cond_3
    move-object/from16 v17, v4

    :goto_2
    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/DownloadInfoDiff;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    .line 21
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/DownloadInfo;->getMultiConnection()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object v4, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    .line 23
    invoke-direct/range {v4 .. v19}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Long;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 24
    iget-object v3, v1, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-static {v3, v0}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    .line 25
    :goto_4
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
