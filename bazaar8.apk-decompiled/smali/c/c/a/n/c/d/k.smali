.class public abstract Lc/c/a/n/c/d/k;
.super Lc/c/a/n/c/d/f;
.source "BaseRecyclerWithTitleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Params:",
        "Ljava/lang/Object;",
        "VM:",
        "Lc/c/a/n/c/d/g<",
        "TT;TParams;>;>",
        "Lc/c/a/n/c/d/f<",
        "TT;TParams;TVM;>;"
    }
.end annotation


# instance fields
.field public final wa:Ljava/lang/String;

.field public xa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lc/c/a/n/c/d/k;->wa:Ljava/lang/String;

    const v0, 0x7f0d005d

    .line 3
    iput v0, p0, Lc/c/a/n/c/d/k;->xa:I

    return-void
.end method


# virtual methods
.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/c/d/k;->xa:I

    return v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lc/c/a/e;->titleTextView:I

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/n/c/d/k;->rb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/c/a/n/c/d/k;->sb()V

    .line 4
    sget p1, Lc/c/a/e;->backButton:I

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/f;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    if-eqz p1, :cond_1

    new-instance p2, Lc/c/a/n/c/d/i;

    invoke-direct {p2, p0}, Lc/c/a/n/c/d/i;-><init>(Lc/c/a/n/c/d/k;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->La()V

    return-void
.end method

.method public qb()Lc/c/a/n/c/d/l;
    .locals 8

    .line 1
    new-instance v7, Lc/c/a/n/c/d/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc/c/a/n/c/d/l;-><init>(IIILh/f/a/a;ILh/f/b/f;)V

    return-object v7
.end method

.method public rb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/k;->wa:Ljava/lang/String;

    return-object v0
.end method

.method public final sb()V
    .locals 5

    .line 1
    sget v0, Lc/c/a/e;->emptyView:I

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a0156

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    sget v2, Lc/c/a/e;->emptyView:I

    invoke-virtual {p0, v2}, Lc/c/a/n/c/d/f;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    const v3, 0x7f0a0157

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 3
    :goto_1
    sget v3, Lc/c/a/e;->emptyView:I

    invoke-virtual {p0, v3}, Lc/c/a/n/c/d/f;->e(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    const v1, 0x7f0a0155

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4
    :cond_2
    invoke-virtual {p0}, Lc/c/a/n/c/d/k;->qb()Lc/c/a/n/c/d/l;

    move-result-object v3

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v3}, Lc/c/a/n/c/d/l;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {v3}, Lc/c/a/n/c/d/l;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_4
    invoke-virtual {v3}, Lc/c/a/n/c/d/l;->a()Lh/f/a/a;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_8

    .line 8
    invoke-static {v1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v3}, Lc/c/a/n/c/d/l;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 10
    invoke-static {v1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 11
    new-instance v0, Lc/c/a/n/c/d/j;

    invoke-direct {v0, v3}, Lc/c/a/n/c/d/j;-><init>(Lc/c/a/n/c/d/l;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_2
    return-void
.end method
