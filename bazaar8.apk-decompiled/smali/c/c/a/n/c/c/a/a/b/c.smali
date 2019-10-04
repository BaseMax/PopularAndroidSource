.class public final Lc/c/a/n/c/c/a/a/b/c;
.super Lc/c/a/n/c/d/a;
.source "MovieItemVitrinAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/page/MovieItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lh/i/i;


# instance fields
.field public final g:Lh/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lc/c/a/n/c/c/a/a/b/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "itemWidthSize"

    const-string v4, "getItemWidthSize()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/n/c/c/a/a/b/c;->f:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    .line 2
    sget-object v0, Lh/g/a;->a:Lh/g/a;

    invoke-virtual {v0}, Lh/g/a;->a()Lh/g/c;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/c/a/a/b/c;->g:Lh/g/c;

    .line 3
    invoke-static {}, Lc/c/a/c/h/d;->b()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd147ae147ae148L    # 0.27

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lc/c/a/n/c/c/a/a/b/c;->f(I)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/n;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/page/MovieItem;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/n;I)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/b/c;->h()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public b(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/MovieItem;

    .line 3
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    if-eqz v0, :cond_1

    .line 6
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_SERIAL:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result p1

    goto :goto_0

    .line 7
    :cond_1
    instance-of p1, p1, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    :goto_0
    return p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/c/a/a/b/c;->a(Lc/c/a/n/c/d/n;I)V

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
            "Lcom/farsitel/bazaar/common/model/page/MovieItem;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_SERIAL:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    const-string v1, "ItemVitrinSerialBinding.\u2026.context), parent, false)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Dc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Dc;

    move-result-object p1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 4
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Fc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Fc;

    move-result-object p1

    const-string v0, "ItemVitrinVideoBinding.i\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 6
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Dc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Dc;

    move-result-object p1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    :goto_0
    return-object p2

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(I)V
    .locals 3

    iget-object v0, p0, Lc/c/a/n/c/c/a/a/b/c;->g:Lh/g/c;

    sget-object v1, Lc/c/a/n/c/c/a/a/b/c;->f:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;Ljava/lang/Object;)V

    return-void
.end method

.method public final h()I
    .locals 3

    iget-object v0, p0, Lc/c/a/n/c/c/a/a/b/c;->g:Lh/g/c;

    sget-object v1, Lc/c/a/n/c/c/a/a/b/c;->f:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
