.class public final Lc/c/a/n/j/b/b/e;
.super Lc/c/a/n/c/d/n;
.source "EpisodeItemViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Lc/c/a/f/da;

.field public final w:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;


# direct methods
.method public constructor <init>(Lc/c/a/f/da;Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/e;->v:Lc/c/a/f/da;

    iput-object p2, p0, Lc/c/a/n/j/b/b/e;->w:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/d/n;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/b/b/e;->v:Lc/c/a/f/da;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/b/b/e;->v:Lc/c/a/f/da;

    iget-object v0, p0, Lc/c/a/n/j/b/b/e;->w:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
