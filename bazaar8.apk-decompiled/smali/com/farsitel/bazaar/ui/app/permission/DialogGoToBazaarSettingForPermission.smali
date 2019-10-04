.class public final Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;
.super Lc/c/a/d/f/l;
.source "DialogGoToBazaarSettingForPermission.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/d/f/l<",
        "Lh/h;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public final sa:Ljava/lang/String;

.field public ta:I

.field public ua:Lc/c/a/n/a/a/a;

.field public va:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    const-string v0, "LocationPermissionDialog"

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->sa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->va:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->sa:Ljava/lang/String;

    return-object v0
.end method

.method public Ta()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->ta:I

    return v0
.end method

.method public final Za()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/c/a/c/h/e;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d003b

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p1, Lc/c/a/e;->commitButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p1, Lc/c/a/e;->cancelButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->ua:Lc/c/a/n/a/a/a;

    const/4 p2, 0x0

    const-string v0, "args"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lc/c/a/n/a/a/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "title"

    if-eqz p1, :cond_1

    .line 6
    sget p1, Lc/c/a/e;->title:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 7
    sget p1, Lc/c/a/e;->title:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->ua:Lc/c/a/n/a/a/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    sget p1, Lc/c/a/e;->title:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 9
    :goto_0
    sget p1, Lc/c/a/e;->description:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "description"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->ua:Lc/c/a/n/a/a/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/n/a/a/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_3
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/a/a/a;->a:Lc/c/a/n/a/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/a/a/a$a;->a(Landroid/os/Bundle;)Lc/c/a/n/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->ua:Lc/c/a/n/a/a/a;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->va:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->va:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->va:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->va:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f0a0104

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-interface {p1, v0}, Lc/c/a/d/f/r;->a(Ljava/lang/Object;)V

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->Za()V

    .line 5
    invoke-virtual {p0}, Lb/o/a/d;->La()V

    goto :goto_2

    :cond_3
    :goto_1
    const v0, 0x7f0a00e7

    if-nez p1, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 7
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lc/c/a/d/f/r;->onCancel()V

    .line 8
    :cond_5
    invoke-virtual {p0}, Lb/o/a/d;->La()V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/app/permission/DialogGoToBazaarSettingForPermission;->Qa()V

    return-void
.end method
