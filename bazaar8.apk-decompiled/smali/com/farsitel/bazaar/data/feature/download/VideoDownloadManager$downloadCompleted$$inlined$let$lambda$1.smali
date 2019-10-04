.class public final Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoDownloadManager.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/i/A;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/c<",
        "Li/a/H;",
        "Lh/c/b<",
        "-",
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $entityId$inlined:Ljava/lang/String;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/e/d/i/A;


# direct methods
.method public constructor <init>(Lh/c/b;Lc/c/a/e/d/i/A;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->this$0:Lc/c/a/e/d/i/A;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->$entityId$inlined:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->this$0:Lc/c/a/e/d/i/A;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->$entityId$inlined:Ljava/lang/String;

    invoke-direct {v0, p2, v1, v2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;-><init>(Lh/c/b;Lc/c/a/e/d/i/A;Ljava/lang/String;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->label:I

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

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->this$0:Lc/c/a/e/d/i/A;

    invoke-static {p1}, Lc/c/a/e/d/i/A;->b(Lc/c/a/e/d/i/A;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->$entityId$inlined:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/g;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lc/c/a/e/g/g;->c()Li/a/b/p;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->CHECKING:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    iput v2, p0, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;->label:I

    invoke-static {p1, v1, p0}, Lc/c/a/c/a/a;->a(Li/a/b/x;Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lh/h;

    .line 6
    :cond_3
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
