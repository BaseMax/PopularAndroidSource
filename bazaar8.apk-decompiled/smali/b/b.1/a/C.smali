.class public Lb/b/a/C;
.super Lb/o/a/d;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/o/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;I)V
    .locals 3

    .line 1
    instance-of v0, p1, Lb/b/a/B;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lb/b/a/B;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x18

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Lb/b/a/B;->a(I)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Lb/o/a/d;->a(Landroid/app/Dialog;I)V

    :goto_0
    return-void
.end method

.method public n(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Lb/b/a/B;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lb/o/a/d;->Oa()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lb/b/a/B;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
