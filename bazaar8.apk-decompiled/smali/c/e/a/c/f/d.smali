.class public Lc/e/a/c/f/d;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/c/f/h;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/f/h;


# direct methods
.method public constructor <init>(Lc/e/a/c/f/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/f/d;->a:Lc/e/a/c/f/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/e/a/c/f/d;->a:Lc/e/a/c/f/h;

    iget-boolean v0, p1, Lc/e/a/c/f/h;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/e/a/c/f/d;->a:Lc/e/a/c/f/h;

    invoke-virtual {p1}, Lc/e/a/c/f/h;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lc/e/a/c/f/d;->a:Lc/e/a/c/f/h;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method
