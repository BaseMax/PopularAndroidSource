.class public final Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBoxViewModel.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/w/c;->a(Lh/f/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $searchTask:Lh/f/a/a;

.field public final synthetic this$0:Lc/c/a/n/w/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/w/c;Lh/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;->this$0:Lc/c/a/n/w/c;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;->$searchTask:Lh/f/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;->this$0:Lc/c/a/n/w/c;

    invoke-static {v0}, Lc/c/a/n/w/c;->e(Lc/c/a/n/w/c;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;->this$0:Lc/c/a/n/w/c;

    new-instance v1, Lc/c/a/n/w/b;

    invoke-direct {v1, p0}, Lc/c/a/n/w/b;-><init>(Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;)V

    invoke-static {v0, v1}, Lc/c/a/n/w/c;->a(Lc/c/a/n/w/c;Ljava/util/TimerTask;)V

    return-void
.end method
