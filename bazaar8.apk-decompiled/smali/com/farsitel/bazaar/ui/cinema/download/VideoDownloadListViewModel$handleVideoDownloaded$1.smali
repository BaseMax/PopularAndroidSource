.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$handleVideoDownloaded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoDownloadListViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/c/l;->a(Landroidx/lifecycle/LiveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/n/j/c/l;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$handleVideoDownloaded$1;->this$0:Lc/c/a/n/j/c/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$handleVideoDownloaded$1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$handleVideoDownloaded$1;->this$0:Lc/c/a/n/j/c/l;

    invoke-static {v0, p1}, Lc/c/a/n/j/c/l;->a(Lc/c/a/n/j/c/l;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
