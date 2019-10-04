.class public Lc/e/a/c/f/g;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/f/h;
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
    iput-object p1, p0, Lc/e/a/c/f/g;->a:Lc/e/a/c/f/h;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lc/e/a/c/f/g;->a:Lc/e/a/c/f/h;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method
