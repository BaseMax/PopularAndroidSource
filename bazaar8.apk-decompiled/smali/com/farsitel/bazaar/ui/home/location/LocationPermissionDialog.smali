.class public final Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;
.super Lc/c/a/d/f/l;
.source "LocationPermissionDialog.kt"

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

.field public ua:Lc/c/a/n/x/a;

.field public va:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    const-string v0, "LocationPermissionDialog"

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->sa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->va:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->sa:Ljava/lang/String;

    return-object v0
.end method

.method public Ta()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->ta:I

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d003c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p1, Lc/c/a/e;->commitButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p1, Lc/c/a/e;->cancelButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget p1, Lc/c/a/e;->dontShowAgainShowCheckBox:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance p2, Lc/c/a/n/m/a/a;

    invoke-direct {p2, p0}, Lc/c/a/n/m/a/a;-><init>(Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->va:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->va:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->va:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->va:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const v1, 0x7f0a0104

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "settingViewModel"

    const-string v5, "dontShowAgainShowCheckBox"

    if-nez p1, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->ua:Lc/c/a/n/x/a;

    if-eqz p1, :cond_4

    sget v0, Lc/c/a/e;->dontShowAgainShowCheckBox:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {v0, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Lc/c/a/n/x/a;->d(Z)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lh/h;->a:Lh/h;

    invoke-interface {p1, v0}, Lc/c/a/d/f/r;->a(Ljava/lang/Object;)V

    .line 5
    :cond_3
    invoke-virtual {p0}, Lb/o/a/d;->Ma()V

    goto :goto_4

    .line 6
    :cond_4
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    const v1, 0x7f0a00e7

    if-nez p1, :cond_6

    goto :goto_4

    .line 7
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_a

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->ua:Lc/c/a/n/x/a;

    if-eqz p1, :cond_9

    sget v0, Lc/c/a/e;->dontShowAgainShowCheckBox:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {v0, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1, v2}, Lc/c/a/n/x/a;->d(Z)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lc/c/a/d/f/r;->onCancel()V

    .line 10
    :cond_8
    invoke-virtual {p0}, Lb/o/a/d;->Ma()V

    goto :goto_4

    .line 11
    :cond_9
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->Qa()V

    return-void
.end method
