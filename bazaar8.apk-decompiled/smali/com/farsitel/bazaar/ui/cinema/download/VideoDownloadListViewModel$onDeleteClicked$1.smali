.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoDownloadListViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/c/l;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/b<",
        "Lh/c/b<",
        "-",
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$onDeleteClicked$1"
    f = "VideoDownloadListViewModel.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $videoId:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lc/c/a/n/j/c/l;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/c/l;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->this$0:Lc/c/a/n/j/c/l;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->$videoId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Lh/c/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->this$0:Lc/c/a/n/j/c/l;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->$videoId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;-><init>(Lc/c/a/n/j/c/l;Ljava/lang/String;Lh/c/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/c/b;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->a(Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->this$0:Lc/c/a/n/j/c/l;

    invoke-static {p1}, Lc/c/a/n/j/c/l;->d(Lc/c/a/n/j/c/l;)Lc/c/a/b/d/o;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->$videoId:Ljava/lang/String;

    iput v2, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;->label:I

    invoke-virtual {p1, v1, p0}, Lc/c/a/b/d/o;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
