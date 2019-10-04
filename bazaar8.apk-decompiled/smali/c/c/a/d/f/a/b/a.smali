.class public final Lc/c/a/d/f/a/b/a;
.super Lb/o/a/d;
.source "ProgressDialog.kt"


# instance fields
.field public final ja:Ljava/lang/String;

.field public ka:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/o/a/d;-><init>()V

    const-string v0, "ProgressDialog"

    .line 2
    iput-object v0, p0, Lc/c/a/d/f/a/b/a;->ja:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lc/c/a/d/f/a/b/a;->ka:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lc/c/a/d/e;->dialog_progress:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, v0}, Lb/o/a/d;->k(Z)V

    return-object p1
.end method

.method public final a(Lb/o/a/n;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/c/a/d/f/a/b/a;->ja:Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Lc/c/a/d/f/a/b/a;->ja:Ljava/lang/String;

    const-string v0, "show() cannot perform after onSavedInstance"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public qa()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/o/a/d;->Na()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lb/o/a/d;->qa()V

    .line 4
    invoke-virtual {p0}, Lc/c/a/d/f/a/b/a;->Qa()V

    return-void
.end method
