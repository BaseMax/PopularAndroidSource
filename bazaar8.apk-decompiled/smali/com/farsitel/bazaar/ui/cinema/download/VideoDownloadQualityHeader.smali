.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final showVideoRemainingCount:Z

.field public final storageFreeSpace:Ljava/lang/String;

.field public final videoDesc:Ljava/lang/String;

.field public final videoName:Ljava/lang/String;

.field public final videoRemainingDownloadCount:I

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageFreeSpace"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->videoName:Ljava/lang/String;

    iput p2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->videoRemainingDownloadCount:I

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->storageFreeSpace:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->videoDesc:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;->HEADER:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->viewType:I

    .line 3
    iget p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->videoRemainingDownloadCount:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->showVideoRemainingCount:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/app/BazaarApp;->i:Lcom/farsitel/bazaar/app/BazaarApp$a;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/app/BazaarApp$a;->a()Lcom/farsitel/bazaar/app/BazaarApp;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->storageFreeSpace:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100222

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BazaarApp.instance.getSt\u2026pacity, storageFreeSpace)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->videoDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->videoName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;->viewType:I

    return v0
.end method
