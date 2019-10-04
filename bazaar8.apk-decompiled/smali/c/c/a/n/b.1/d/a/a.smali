.class public final Lc/c/a/n/b/d/a/a;
.super Lc/c/a/n/c/d/a;
.source "ScreenshotAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/b/d/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:Lc/c/a/n/b/d/a/e$a;

.field public final k:Lc/c/a/n/b/d/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/n/b/d/a/e$a;Lc/c/a/n/b/d/a/a$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p2, p0, Lc/c/a/n/b/d/a/a;->j:Lc/c/a/n/b/d/a/e$a;

    iput-object p3, p0, Lc/c/a/n/b/d/a/a;->k:Lc/c/a/n/b/d/a/a$a;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070126

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lc/c/a/n/b/d/a/a;->f:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070077

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lc/c/a/n/b/d/a/a;->g:F

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070074

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lc/c/a/n/b/d/a/a;->h:F

    .line 5
    invoke-static {}, Lc/c/a/c/h/d;->b()I

    move-result p1

    iget p2, p0, Lc/c/a/n/b/d/a/a;->g:F

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lc/c/a/n/b/d/a/a;->h:F

    sub-float/2addr p1, p2

    const/16 p2, 0xa

    invoke-static {p2}, Lc/c/a/d/b/i;->a(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lc/c/a/n/b/d/a/a;->i:F

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/b/d/a/a;)Lc/c/a/n/b/d/a/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/d/a/a;->k:Lc/c/a/n/b/d/a/a$a;

    return-object p0
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/n;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/n;I)V

    .line 3
    instance-of v0, p1, Lc/c/a/n/b/d/a/e;

    const-string v1, "holder.itemView"

    if-eqz v0, :cond_0

    .line 4
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$j;

    iget v0, p0, Lc/c/a/n/b/d/a/a;->i:F

    float-to-int v0, v0

    iget v2, p0, Lc/c/a/n/b/d/a/a;->f:I

    invoke-direct {p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    .line 5
    iget v0, p0, Lc/c/a/n/b/d/a/a;->g:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 6
    iget v0, p0, Lc/c/a/n/b/d/a/a;->h:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 8
    :cond_0
    instance-of v0, p1, Lc/c/a/n/b/d/a/c;

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v2, -0x2

    iget v3, p0, Lc/c/a/n/b/d/a/a;->f:I

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    if-nez p2, :cond_1

    .line 10
    iget v2, p0, Lc/c/a/n/b/d/a/a;->g:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    iget v2, p0, Lc/c/a/n/b/d/a/a;->g:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 11
    invoke-virtual {p0}, Lc/c/a/n/c/d/a;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_2

    iget p2, p0, Lc/c/a/n/b/d/a/a;->g:F

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_2
    iget p2, p0, Lc/c/a/n/b/d/a/a;->g:F

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "invalid type, declare it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;->isImage()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/b/d/a/a;->a(Lc/c/a/n/c/d/n;I)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/b/d/a/d;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p2, Lc/c/a/n/b/d/a/e;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lc/c/a/f/sb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/sb;

    move-result-object p1

    const-string v0, "ItemScreenshotVideoBindi\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/b/d/a/a;->j:Lc/c/a/n/b/d/a/e$a;

    .line 5
    invoke-direct {p2, p1, v0}, Lc/c/a/n/b/d/a/e;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/b/d/a/e$a;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "invalid type, declare it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p2, Lc/c/a/n/b/d/a/c;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lc/c/a/f/qb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/qb;

    move-result-object p1

    const-string v0, "ItemScreenshotImageBindi\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/b/d/a/a;->h()Lc/c/a/n/b/d/a/b;

    move-result-object v0

    .line 10
    invoke-direct {p2, p1, v0}, Lc/c/a/n/b/d/a/c;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/b/d/a/c$a;)V

    :goto_0
    return-object p2
.end method

.method public bridge synthetic c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/b/d/a/a;->c(Landroid/view/ViewGroup;I)Lc/c/a/n/b/d/a/d;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lc/c/a/n/b/d/a/b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/d/a/b;

    invoke-direct {v0, p0}, Lc/c/a/n/b/d/a/b;-><init>(Lc/c/a/n/b/d/a/a;)V

    return-object v0
.end method
