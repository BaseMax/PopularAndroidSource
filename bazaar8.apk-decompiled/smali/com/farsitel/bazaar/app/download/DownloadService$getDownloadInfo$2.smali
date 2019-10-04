.class public final Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;
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
        "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
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

    iput-object p1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/ErrorModel;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 3

    const-string v0, "failure"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    .line 3
    sget-object v0, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->FAIL_DOWNLOAD_INFO:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->isFree()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7
    iget-object p1, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;->this$0:Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-static {p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Lcom/farsitel/bazaar/app/download/DownloadService;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;->$appDownloadModel:Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
