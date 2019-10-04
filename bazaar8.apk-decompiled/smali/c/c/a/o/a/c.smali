.class public final Lc/c/a/o/a/c;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "EqualSpacingItemDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/o/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/o/a/c$a;


# instance fields
.field public final b:I

.field public c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/o/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/o/a/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/o/a/c;->a:Lc/c/a/o/a/c$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput p1, p0, Lc/c/a/o/a/c;->b:I

    iput-object p2, p0, Lc/c/a/o/a/c;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$i;)I
    .locals 1

    .line 25
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

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
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p2

    const-string v0, "parent.getChildViewHolder(view)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->g()I

    move-result p2

    .line 2
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$t;->a()I

    move-result p4

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p3

    .line 4
    invoke-virtual {p0, p1, p3, p2, p4}, Lc/c/a/o/a/c;->a(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView$i;II)V

    return-void
.end method

.method public final a(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView$i;II)V
    .locals 5

    .line 5
    iget-object v0, p0, Lc/c/a/o/a/c;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lc/c/a/o/a/c;->a(Landroidx/recyclerview/widget/RecyclerView$i;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/o/a/c;->c:Ljava/lang/Integer;

    .line 6
    :cond_0
    iget-object v0, p0, Lc/c/a/o/a/c;->c:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 8
    iget p2, p0, Lc/c/a/o/a/c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 9
    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 10
    iget p2, p0, Lc/c/a/o/a/c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 11
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 13
    iget p2, p0, Lc/c/a/o/a/c;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 14
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 15
    iput p2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    .line 16
    :goto_2
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_6
    :goto_3
    const/4 v3, 0x2

    if-nez v0, :cond_7

    goto :goto_6

    .line 17
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_a

    instance-of v0, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_a

    .line 18
    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 19
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->S()I

    move-result p2

    .line 20
    div-int/2addr p4, p2

    .line 21
    iget v0, p0, Lc/c/a/o/a/c;->b:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 22
    rem-int v3, p3, p2

    add-int/lit8 v4, p2, -0x1

    if-ne v3, v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 23
    iget v0, p0, Lc/c/a/o/a/c;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 24
    div-int/2addr p3, p2

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_a
    :goto_6
    return-void
.end method
