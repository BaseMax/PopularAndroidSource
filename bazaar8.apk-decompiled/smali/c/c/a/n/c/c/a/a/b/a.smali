.class public final Lc/c/a/n/c/c/a/a/b/a;
.super Lc/c/a/n/c/d/a;
.source "AppItemVitrinAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/page/PageAppItem;",
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

    const-class v2, Lc/c/a/n/c/c/a/a/b/a;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "itemWidthSize"

    const-string v4, "getItemWidthSize()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/n/c/c/a/a/b/a;->f:[Lh/i/i;

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

    iput-object v0, p0, Lc/c/a/n/c/c/a/a/b/a;->g:Lh/g/c;

    .line 3
    invoke-static {}, Lc/c/a/c/h/d;->b()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd147ae147ae148L    # 0.27

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lc/c/a/n/c/c/a/a/b/a;->f(I)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/n;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/page/PageAppItem;",
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

    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/b/a;->h()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/c/a/a/b/a;->a(Lc/c/a/n/c/d/n;I)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/page/PageAppItem;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/c/a/f/zc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/zc;

    move-result-object p1

    const-string v0, "ItemVitrinAppBinding.inf\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method

.method public final f(I)V
    .locals 3

    iget-object v0, p0, Lc/c/a/n/c/c/a/a/b/a;->g:Lh/g/c;

    sget-object v1, Lc/c/a/n/c/c/a/a/b/a;->f:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;Ljava/lang/Object;)V

    return-void
.end method

.method public final h()I
    .locals 3

    iget-object v0, p0, Lc/c/a/n/c/c/a/a/b/a;->g:Lh/g/c;

    sget-object v1, Lc/c/a/n/c/c/a/a/b/a;->f:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
