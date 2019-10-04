.class public final Lc/c/a/o/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "CustomItemDecoration.kt"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput p1, p0, Lc/c/a/o/a/a;->c:I

    .line 2
    iget p1, p0, Lc/c/a/o/a/a;->c:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lc/c/a/o/a/a;->a:I

    mul-int/lit8 p2, p2, 0x2

    .line 3
    iput p2, p0, Lc/c/a/o/a/a;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result p2

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)I

    move-result p3

    const v0, 0x7f0d00c6

    if-ne p3, v0, :cond_1

    .line 4
    iget p3, p0, Lc/c/a/o/a/a;->b:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 6
    :cond_1
    iget p3, p0, Lc/c/a/o/a/a;->b:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 7
    iput p3, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    if-nez p2, :cond_2

    .line 8
    iget p3, p0, Lc/c/a/o/a/a;->a:I

    goto :goto_2

    :cond_2
    iget p3, p0, Lc/c/a/o/a/a;->c:I

    :goto_2
    iput p3, p1, Landroid/graphics/Rect;->top:I

    if-ne p2, p4, :cond_3

    .line 9
    iget p2, p0, Lc/c/a/o/a/a;->a:I

    goto :goto_3

    :cond_3
    iget p2, p0, Lc/c/a/o/a/a;->c:I

    :goto_3
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 10
    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
.end method
