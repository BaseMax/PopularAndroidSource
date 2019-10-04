.class public Lcom/farsitel/bazaar/ui/home/HomeFragment;
.super Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;
.source "HomeFragment.kt"


# instance fields
.field public Ea:Lc/c/a/g/a;

.field public Fa:I

.field public Ga:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;-><init>()V

    const v0, 0x7f0d0055

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Fa:I

    return-void
.end method


# virtual methods
.method public final Ab()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/l/i;

    invoke-virtual {v0}, Lc/c/a/n/l/i;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    instance-of v1, v0, Lcom/farsitel/bazaar/ui/home/MainActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/farsitel/bazaar/ui/home/MainActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->D()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f10020f

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f10020c

    .line 4
    new-instance v2, Lc/c/a/n/m/c;

    invoke-direct {v2, v0, p0}, Lc/c/a/n/m/c;-><init>(Lcom/google/android/material/snackbar/Snackbar;Lcom/farsitel/bazaar/ui/home/HomeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06005a

    invoke-static {v1, v2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->m()V

    :cond_1
    return-void
.end method

.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Ga:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Fa:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;
    .locals 10

    .line 2
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v2

    new-instance v9, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    const-string v1, "home"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;ILh/f/b/f;)V

    return-object v9
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/c/n;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lc/c/a/e;->toolbarBazaar:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/HomeFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lc/c/a/n/m/a;

    invoke-direct {p2, p0}, Lc/c/a/n/m/a;-><init>(Lcom/farsitel/bazaar/ui/home/HomeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget p1, Lc/c/a/e;->toolbarWhatshot:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/HomeFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p2, Lc/c/a/n/m/b;

    invoke-direct {p2, p0}, Lc/c/a/n/m/b;-><init>(Lcom/farsitel/bazaar/ui/home/HomeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lc/c/a/e;->toolbarBazaar:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/HomeFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "toolbarBazaar"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/e/d/u/a;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 5
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6
    sget-object v2, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    .line 7
    sget p1, Lc/c/a/e;->toolbarBazaar:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/HomeFragment;->e(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v3, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/l/i;

    invoke-virtual {p1}, Lc/c/a/n/l/i;->q()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const p1, 0x7f08007e

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x34

    const/4 v10, 0x0

    .line 10
    invoke-static/range {v2 .. v10}, Lc/c/a/d/g/a/i;->a(Lc/c/a/d/g/a/i;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Ab()V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Ga:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Ga:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Ga:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/home/HomeFragment;->Ga:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/home/HomeFragment;->La()V

    return-void
.end method
