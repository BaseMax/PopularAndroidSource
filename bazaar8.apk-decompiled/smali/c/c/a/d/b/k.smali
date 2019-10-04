.class public final Lc/c/a/d/b/k;
.super Ljava/lang/Object;
.source "RecyclerViewExt.kt"


# direct methods
.method public static final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "$this$removeAllItemDecorations"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->j(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
