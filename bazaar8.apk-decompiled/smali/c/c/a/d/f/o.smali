.class public abstract Lc/c/a/d/f/o;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.kt"

# interfaces
.implements Li/a/H;


# instance fields
.field public Y:Li/a/ra;

.field public Z:Landroidx/appcompat/widget/Toolbar;

.field public aa:Landroid/view/ViewGroup;

.field public final ba:Z

.field public ca:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/c/a/d/f/o;->ba:Z

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lc/c/a/d/f/o;->ca:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Ma()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/d/f/o;->ba:Z

    return v0
.end method

.method public final Na()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/o;->Z:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final Oa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public Pa()Lh/f/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/core/ui/BaseFragment$retryLoadData$1;->a:Lcom/farsitel/bazaar/core/ui/BaseFragment$retryLoadData$1;

    return-object v0
.end method

.method public a()Lh/c/e;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/d/f/o;->Y:Li/a/ra;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 18
    invoke-static {p1}, Lb/i/k/E;->a(Landroid/view/ViewGroup;)Lh/j/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lh/j/d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lc/c/a/d/f/o;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p2, :cond_9

    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    instance-of p2, p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$NotFound;

    if-eqz p2, :cond_0

    sget p2, Lc/c/a/d/e;->error_not_found:I

    goto :goto_0

    .line 7
    :cond_0
    instance-of p2, p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$NetworkConnection;

    if-eqz p2, :cond_2

    .line 8
    sget-object p2, Lc/c/a/d/d/e;->a:Lc/c/a/d/d/e$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v2, "requireContext()"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lc/c/a/d/d/e$a;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lc/c/a/d/e;->error_general:I

    goto :goto_0

    :cond_1
    sget p2, Lc/c/a/d/e;->error_network:I

    goto :goto_0

    .line 9
    :cond_2
    sget p2, Lc/c/a/d/e;->error_general:I

    .line 10
    :goto_0
    iget-object v0, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iget-object p2, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    sget v0, Lc/c/a/d/d;->retry:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lc/c/a/d/f/n;

    invoke-direct {v0, p0}, Lc/c/a/d/f/n;-><init>(Lc/c/a/d/f/o;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    .line 13
    sget p2, Lc/c/a/d/d;->notFoundText:I

    invoke-virtual {p0, p2}, Lc/c/a/d/f/o;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_5
    iget-object p1, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 15
    :cond_7
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 16
    :cond_8
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 17
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {p2, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->m()V

    :goto_2
    return-void

    :cond_a
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lc/c/a/d/d;->errorView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    return-void
.end method

.method public final b(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0, p1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/f/o;->Y:Li/a/ra;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v0, Lc/c/a/d/d;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lc/c/a/d/f/o;->Ma()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Lc/c/a/d/f/o;->Z:Landroidx/appcompat/widget/Toolbar;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lb/b/a/m;

    iget-object v0, p0, Lc/c/a/d/f/o;->Z:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Lb/b/a/m;->a(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/d/f/o;->ca:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/d/f/o;->ca:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/d/f/o;->ca:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/d/f/o;->ca:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public oa()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->oa()V

    .line 2
    iget-object v0, p0, Lc/c/a/d/f/o;->Y:Li/a/ra;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public qa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lc/c/a/d/f/o;->a(Landroid/view/ViewGroup;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lc/c/a/d/f/o;->a(Landroid/view/ViewGroup;)V

    .line 3
    iget-object v0, p0, Lc/c/a/d/f/o;->aa:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->qa()V

    .line 5
    invoke-virtual {p0}, Lc/c/a/d/f/o;->La()V

    return-void
.end method
