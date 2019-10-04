.class public Lc/e/a/c/f/e;
.super Lb/i/k/a;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/c/f/h;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lc/e/a/c/f/h;


# direct methods
.method public constructor <init>(Lc/e/a/c/f/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/f/e;->d:Lc/e/a/c/f/h;

    invoke-direct {p0}, Lb/i/k/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/k/a/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lb/i/k/a;->a(Landroid/view/View;Lb/i/k/a/d;)V

    .line 2
    iget-object p1, p0, Lc/e/a/c/f/e;->d:Lc/e/a/c/f/h;

    iget-boolean p1, p1, Lc/e/a/c/f/h;->d:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    .line 3
    invoke-virtual {p2, p1}, Lb/i/k/a/d;->a(I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Lb/i/k/a/d;->e(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Lb/i/k/a/d;->e(Z)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 6
    iget-object v0, p0, Lc/e/a/c/f/e;->d:Lc/e/a/c/f/h;

    iget-boolean v1, v0, Lc/e/a/c/f/h;->d:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lb/i/k/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
