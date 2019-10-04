.class public final Lc/c/a/n/t/b/b;
.super Lc/c/a/d/f/l;
.source "ChangePhoneNumberDialog.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/d/f/l<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final sa:Ljava/lang/String;

.field public ta:Lc/c/a/n/t/b/c;

.field public ua:Ljava/lang/String;

.field public va:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    const-string v0, "ChangePhoneNumberDialog"

    .line 2
    iput-object v0, p0, Lc/c/a/n/t/b/b;->sa:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/t/b/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/b/b;->ua:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "phoneNumber"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lc/c/a/n/t/b/b;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/t/b/b;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/t/b/b;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc/c/a/n/t/b/b;->ua:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/t/b/b;)Lc/c/a/n/t/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/b/b;->ta:Lc/c/a/n/t/b/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/t/b/b;->va:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/b/b;->sa:Ljava/lang/String;

    return-object v0
.end method

.method public final Za()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/t/b/b;->ab()V

    return-void
.end method

.method public final _a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lc/c/a/n/t/b/b;->ua:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lc/c/a/d/f/r;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "phoneNumber"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lb/o/a/d;->La()V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0039

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 6
    sget p1, Lc/c/a/e;->dialogButtonLayout:I

    invoke-virtual {p0, p1}, Lc/c/a/n/t/b/b;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;

    new-instance p2, Lc/c/a/n/t/b/a;

    invoke-direct {p2, p0}, Lc/c/a/n/t/b/a;-><init>(Lc/c/a/n/t/b/b;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setOnClickListener(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc/c/a/n/t/b/b;->Za()V

    goto :goto_1

    .line 9
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/t/b/b;->_a()V

    goto :goto_1

    .line 10
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lc/c/a/n/t/b/b;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public final ab()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->errorTextView:I

    invoke-virtual {p0, v0}, Lc/c/a/n/t/b/b;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "errorTextView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Wa()Lb/r/F$b;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/t/b/c;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast p1, Lc/c/a/n/t/b/c;

    .line 5
    invoke-virtual {p1}, Lc/c/a/n/t/b/c;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/profile/phonenumber/ChangePhoneNumberDialog$onCreate$1$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/profile/phonenumber/ChangePhoneNumberDialog$onCreate$1$1;-><init>(Lc/c/a/n/t/b/b;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 6
    iput-object p1, p0, Lc/c/a/n/t/b/b;->ta:Lc/c/a/n/t/b/c;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lc/c/a/n/t/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lc/c/a/e;->errorTextView:I

    invoke-virtual {p0, v0}, Lc/c/a/n/t/b/b;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "errorTextView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    sget v0, Lc/c/a/e;->errorTextView:I

    invoke-virtual {p0, v0}, Lc/c/a/n/t/b/b;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/t/b/b;->va:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/t/b/b;->va:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/t/b/b;->va:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/n/t/b/b;->va:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/t/b/b;->Qa()V

    return-void
.end method
