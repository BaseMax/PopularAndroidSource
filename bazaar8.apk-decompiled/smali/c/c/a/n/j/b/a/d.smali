.class public final Lc/c/a/n/j/b/a/d;
.super Lc/c/a/n/c/d/a;
.source "ScreenshotAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/j/b/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:Lb/g/b/c;

.field public final h:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

.field public final i:Lc/c/a/n/j/b/a/d$a;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;Lc/c/a/n/j/b/a/d$a;)V
    .locals 1

    const-string v0, "screenshots"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/b/a/d;->h:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    iput-object p2, p0, Lc/c/a/n/j/b/a/d;->i:Lc/c/a/n/j/b/a/d$a;

    const/16 p1, 0x9

    .line 2
    iput p1, p0, Lc/c/a/n/j/b/a/d;->f:I

    .line 3
    new-instance p1, Lb/g/b/c;

    invoke-direct {p1}, Lb/g/b/c;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/b/a/d;->g:Lb/g/b/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/b/a/d;I)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/j/b/a/d;->f(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/b/a/d;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/j/b/a/d;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/j/b/a/d;)Lc/c/a/n/j/b/a/d$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/b/a/d;->i:Lc/c/a/n/j/b/a/d$a;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lc/c/a/n/j/b/a/d;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public a(Lc/c/a/n/c/d/n;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/n;I)V

    .line 5
    invoke-virtual {p0, p2}, Lc/c/a/n/c/d/a;->b(I)I

    move-result v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->IMAGE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    .line 6
    instance-of v1, p1, Lc/c/a/n/j/b/b/g;

    if-eqz v1, :cond_1

    .line 7
    sget v1, Lc/c/a/e;->screenShotItemCardParent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    new-instance v1, Lc/c/a/n/j/b/a/e;

    invoke-direct {v1, p0, p1, p2}, Lc/c/a/n/j/b/a/e;-><init>(Lc/c/a/n/j/b/a/d;Lc/c/a/n/c/d/n;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget v0, p0, Lc/c/a/n/j/b/a/d;->f:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lc/c/a/n/j/b/a/d;->f:I

    if-eq v0, v1, :cond_0

    .line 9
    move-object v0, p1

    check-cast v0, Lc/c/a/n/j/b/b/g;

    iget-object v1, p0, Lc/c/a/n/j/b/a/d;->h:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lc/c/a/n/j/b/a/d;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lc/c/a/n/j/b/b/g;->c(I)V

    goto :goto_0

    .line 10
    :cond_0
    move-object v0, p1

    check-cast v0, Lc/c/a/n/j/b/b/g;

    invoke-virtual {v0}, Lc/c/a/n/j/b/b/g;->E()V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lc/c/a/n/c/d/a;->b(I)I

    move-result v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->BIG_IMAGE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    .line 13
    sget v0, Lc/c/a/e;->bigScreenShotItemCardParent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    new-instance v0, Lc/c/a/n/j/b/a/f;

    invoke-direct {v0, p0, p2}, Lc/c/a/n/j/b/a/f;-><init>(Lc/c/a/n/j/b/a/d;I)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 2
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/j/b/a/d;->a(Lc/c/a/n/c/d/n;I)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->IMAGE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 3
    new-instance p2, Lc/c/a/n/j/b/b/g;

    .line 4
    invoke-static {v0, p1, v2}, Lc/c/a/f/jc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/jc;

    move-result-object p1

    const-string v0, "ItemVideoDetailVideoScre\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p2, p1}, Lc/c/a/n/j/b/b/g;-><init>(Lc/c/a/f/jc;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->BIG_IMAGE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 7
    new-instance p2, Lc/c/a/n/j/b/b/f;

    .line 8
    invoke-static {v0, p1, v2}, Lc/c/a/f/dc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/dc;

    move-result-object p1

    const-string v0, "ItemVideoDetailVideoBigS\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p2, p1}, Lc/c/a/n/j/b/b/f;-><init>(Lc/c/a/f/dc;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->TRAILER_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 11
    new-instance p2, Lc/c/a/n/j/b/b/k;

    .line 12
    invoke-static {v0, p1, v2}, Lc/c/a/f/nc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/nc;

    move-result-object p1

    const-string v0, "ItemVideoDetailVideoTrai\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p2, p1}, Lc/c/a/n/j/b/b/k;-><init>(Landroidx/databinding/ViewDataBinding;)V

    .line 14
    iget-object p1, p0, Lc/c/a/n/j/b/a/d;->i:Lc/c/a/n/j/b/a/d$a;

    invoke-virtual {p2, p1}, Lc/c/a/n/j/b/b/k;->a(Lc/c/a/n/j/b/a/d$a;)V

    :goto_0
    return-object p2

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Invalid viewType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/a;->b(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->TRAILER_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public final h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/b/a/d;->h:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;->getItems()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 5
    instance-of v3, v2, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
