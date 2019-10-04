.class public final Lc/c/a/n/c/d/d;
.super Ljava/lang/Object;
.source "BaseRecyclerDaggerFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/d/f;->n(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/d/f;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lc/c/a/n/c/d/f;II)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/d/d;->a:Lc/c/a/n/c/d/f;

    iput p2, p0, Lc/c/a/n/c/d/d;->b:I

    iput p3, p0, Lc/c/a/n/c/d/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/d;->a:Lc/c/a/n/c/d/f;

    invoke-virtual {v0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 2
    iget v1, p0, Lc/c/a/n/c/d/d;->b:I

    iget v2, p0, Lc/c/a/n/c/d/d;->c:I

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(II)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
