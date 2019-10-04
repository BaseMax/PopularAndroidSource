.class public final Lc/c/a/n/u/d;
.super Lc/c/a/n/u/a;
.source "ReviewViewHolder.kt"


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;

.field public final w:Lc/c/a/n/u/b;

.field public final x:Lc/c/a/n/u/c;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/u/b;Lc/c/a/n/u/c;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/u/a;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/u/d;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/u/d;->w:Lc/c/a/n/u/b;

    iput-object p3, p0, Lc/c/a/n/u/d;->x:Lc/c/a/n/u/c;

    return-void
.end method


# virtual methods
.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/d;->v:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lc/c/a/n/u/d;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v0, p0, Lc/c/a/n/u/d;->w:Lc/c/a/n/u/b;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lc/c/a/n/u/d;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v0, p0, Lc/c/a/n/u/d;->x:Lc/c/a/n/u/c;

    const/16 v1, 0x1b

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
