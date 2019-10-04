.class public final Lc/c/a/n/j/b/a/c;
.super Lc/c/a/n/c/d/a;
.source "GenreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;)V
    .locals 1

    const-string v0, "videoInfoClickListener"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/b/a/c;->f:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/f/na;->a(Landroid/view/LayoutInflater;)Lc/c/a/f/na;

    move-result-object p1

    const-string p2, "ItemGenreBinding.inflate\u2026ter.from(parent.context))"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lc/c/a/n/j/b/a/c;->f:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    const/16 v0, 0x29

    invoke-virtual {p1, v0, p2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method
