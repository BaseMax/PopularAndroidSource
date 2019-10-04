.class public final Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$videoPurchasedLiveData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoDetailViewModel.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/k/s;-><init>(Lc/c/a/e/d/h/e/a;Lc/c/a/e/d/h/e/a/c;Lc/c/a/b/d/o;Lc/c/a/b/d/m;Lc/c/a/d/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/n/j/k/s;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/k/s;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$videoPurchasedLiveData$2;->this$0:Lc/c/a/n/j/k/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$videoPurchasedLiveData$2;->this$0:Lc/c/a/n/j/k/s;

    invoke-static {v0}, Lc/c/a/n/j/k/s;->b(Lc/c/a/n/j/k/s;)Lc/c/a/b/d/m;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$videoPurchasedLiveData$2;->this$0:Lc/c/a/n/j/k/s;

    invoke-static {v1}, Lc/c/a/n/j/k/s;->f(Lc/c/a/n/j/k/s;)Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/d/m;->b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$videoPurchasedLiveData$2;->invoke()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
