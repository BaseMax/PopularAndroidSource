.class public final Lc/c/a/o/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "PageItemDecoration.kt"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc/c/a/o/a/d;->a:Landroid/graphics/Paint;

    .line 4
    invoke-static {p3}, Lc/c/a/d/b/i;->a(I)I

    move-result p3

    iput p3, p0, Lc/c/a/o/a/d;->b:I

    .line 5
    invoke-static {p4}, Lc/c/a/d/b/i;->a(I)I

    move-result p3

    iput p3, p0, Lc/c/a/o/a/d;->c:I

    .line 6
    iget-object p3, p0, Lc/c/a/o/a/d;->a:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p3, p0, Lc/c/a/o/a/d;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xf0

    .line 8
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    :goto_0
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IIIILh/f/b/f;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const p2, 0x7f06004a

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/16 p4, 0x10

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lc/c/a/o/a/d;-><init>(Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 10

    const-string v0, "c"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-ge v0, p3, :cond_4

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)I

    move-result v3

    .line 12
    invoke-virtual {p0, v3, v2, p3}, Lc/c/a/o/a/d;->a(III)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "view"

    .line 13
    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lc/c/a/o/a/d;->c:I

    int-to-float v3, v3

    add-float v5, v2, v3

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v6, v2

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lc/c/a/o/a/d;->c:I

    int-to-float v3, v3

    sub-float v7, v2, v3

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lc/c/a/o/a/d;->b:I

    add-int/2addr v1, v2

    int-to-float v8, v1

    iget-object v9, p0, Lc/c/a/o/a/d;->a:Landroid/graphics/Paint;

    move-object v4, p1

    .line 17
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_4
    return-void
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
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$t;->a()I

    move-result p4

    .line 2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result p2

    if-gez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)I

    move-result p3

    .line 4
    invoke-virtual {p0, p3, p2, p4}, Lc/c/a/o/a/d;->a(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lc/c/a/o/a/d;->b:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    .line 7
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(III)Z
    .locals 2

    .line 19
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_HAMI_INLINE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_HAMI_INLINE:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_VIDEO:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->LIST_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_SERIAL:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->EDITOR_CHOICE_HEADER:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    sub-int/2addr p3, v1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
