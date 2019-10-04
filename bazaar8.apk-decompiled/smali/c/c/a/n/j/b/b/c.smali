.class public final Lc/c/a/n/j/b/b/c;
.super Lc/c/a/n/c/d/n;
.source "CrewItemViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Lc/c/a/f/Ib;

.field public final w:Lc/c/a/n/j/b/b/d$a;


# direct methods
.method public constructor <init>(Lc/c/a/f/Ib;Lc/c/a/n/j/b/b/d$a;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crewsPersonClickListener"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/c;->v:Lc/c/a/f/Ib;

    iput-object p2, p0, Lc/c/a/n/j/b/b/c;->w:Lc/c/a/n/j/b/b/d$a;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$w;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/cinema/CrewItem;Lc/c/a/n/j/b/b/d$a;)Lc/e/a/c/h/d;
    .locals 6

    .line 1
    new-instance v0, Lc/e/a/c/h/d;

    invoke-direct {v0, p1}, Lc/e/a/c/h/d;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lc/e/a/c/h/d;->setChipSpacingVertical(I)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lc/e/a/c/h/d;->setChipSpacingHorizontal(I)V

    .line 4
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/cinema/CrewItem;->getPersons()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/common/model/cinema/PersonModel;

    .line 6
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/PersonModel;->isLinkable()Z

    move-result v2

    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 7
    invoke-static {p1}, Lc/c/a/d/b/d;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0d00e1

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/widget/TextView;

    .line 8
    new-instance v3, Lc/c/a/n/j/b/b/b;

    invoke-direct {v3, v1, p1, p3, v0}, Lc/c/a/n/j/b/b/b;-><init>(Lcom/farsitel/bazaar/common/model/cinema/PersonModel;Landroid/content/Context;Lc/c/a/n/j/b/b/d$a;Lc/e/a/c/h/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 9
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    invoke-static {p1}, Lc/c/a/d/b/d;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0d00e2

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroid/widget/TextView;

    .line 11
    :goto_1
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/PersonModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v0
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/CrewItem;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/b/b/c;->v:Lc/c/a/f/Ib;

    iget-object v0, v0, Lc/c/a/f/Ib;->B:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/CrewItem;

    iget-object v2, p0, Lc/c/a/n/j/b/b/c;->w:Lc/c/a/n/j/b/b/d$a;

    invoke-virtual {p0, v1, p1, v2}, Lc/c/a/n/j/b/b/c;->a(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/cinema/CrewItem;Lc/c/a/n/j/b/b/d$a;)Lc/e/a/c/h/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
