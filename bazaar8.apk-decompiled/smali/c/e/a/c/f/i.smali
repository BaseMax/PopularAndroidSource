.class public Lc/e/a/c/f/i;
.super Lb/b/a/C;
.source "BottomSheetDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/b/a/C;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Lc/e/a/c/f/h;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lb/o/a/d;->Oa()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lc/e/a/c/f/h;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
