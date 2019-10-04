.class public final Lc/c/a/n/j/d/s;
.super Ljava/lang/Object;
.source "EpisodeDetailViewModel.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/d/s;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lc/c/a/n/j/d/s;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lc/c/a/n/j/d/t;->a(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lc/c/a/n/j/d/s;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-static {v0, p1}, Lc/c/a/n/j/d/t;->a(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/j/d/s;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-static {v0}, Lc/c/a/n/j/d/t;->c(Lc/c/a/n/j/d/t;)Lb/r/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getVideoState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/n/j/d/s;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-virtual {p1}, Lc/c/a/n/j/d/t;->n()I

    move-result p1

    if-ltz p1, :cond_0

    .line 6
    iget-object v0, p0, Lc/c/a/n/j/d/s;->a:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;->this$0:Lc/c/a/n/j/d/t;

    invoke-static {v0}, Lc/c/a/n/j/d/t;->d(Lc/c/a/n/j/d/t;)Lb/r/r;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/r/t;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/s;->a(Ljava/lang/Boolean;)V

    return-void
.end method
