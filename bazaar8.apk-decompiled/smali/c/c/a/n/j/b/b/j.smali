.class public final Lc/c/a/n/j/b/b/j;
.super Lc/c/a/n/c/d/n;
.source "SeasonEpisodeItemViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public v:Lc/c/a/n/c/c/a/a/a/i;

.field public final w:Lc/c/a/f/ha;


# direct methods
.method public constructor <init>(Lc/c/a/f/ha;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/j;->w:Lc/c/a/f/ha;

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/n/c/c/a/a/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/b/b/j;->v:Lc/c/a/n/c/c/a/a/a/i;

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/b/b/j;->w:Lc/c/a/f/ha;

    iget-object v0, p0, Lc/c/a/n/j/b/b/j;->v:Lc/c/a/n/c/c/a/a/a/i;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
