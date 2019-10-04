.class public final Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayInfoViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V
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
    c = "com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoViewModel$successPlayInfo$1"
    f = "PlayInfoViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $playInfo:Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

.field public label:I

.field public final synthetic this$0:Lc/c/a/n/j/b/c/b;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/b/c/b;Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->$playInfo:Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

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

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->$playInfo:Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;-><init>(Lc/c/a/n/j/b/c/b;Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;Lh/c/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/c/b;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->a(Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    invoke-static {p1}, Lc/c/a/n/j/b/c/b;->b(Lc/c/a/n/j/b/c/b;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->$playInfo:Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->isAddToPlayedList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->this$0:Lc/c/a/n/j/b/c/b;

    invoke-static {v0}, Lc/c/a/n/j/b/c/b;->c(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/n/b;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;->$playInfo:Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->getDetails()Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc/c/a/e/d/n/b;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;)V

    .line 5
    :cond_0
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
