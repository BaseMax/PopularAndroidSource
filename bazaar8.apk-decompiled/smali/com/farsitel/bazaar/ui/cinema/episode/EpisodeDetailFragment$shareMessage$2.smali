.class public final Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$shareMessage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EpisodeDetailFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$shareMessage$2;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$shareMessage$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment$shareMessage$2;->this$0:Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;->e(Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;)Lc/c/a/n/j/d/t;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/n/j/d/t;->b(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getShareMessage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method
