.class public abstract Lc/c/a/d/f/e;
.super Lc/e/a/c/f/i;
.source "BaseDaggerBottomSheetDialogFragment.kt"


# instance fields
.field public ja:Lb/r/F$b;

.field public ka:Lc/c/a/d/d/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/c/f/i;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Qa()V
.end method

.method public final Ra()Lc/c/a/d/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/e;->ka:Lc/c/a/d/d/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "messageManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Sa()Lb/r/F$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/e;->ja:Lb/r/F$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Ta()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/o/a/d;->Ma()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ld/a/a/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 2
    invoke-super {p0, p1}, Lb/o/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sheetBehavior"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(I)V

    .line 6
    new-instance v0, Lc/c/a/d/f/d;

    invoke-direct {v0, p0}, Lc/c/a/d/f/d;-><init>(Lc/c/a/d/f/e;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lc/c/a/d/g;->CustomBottomSheetDialog:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lb/o/a/d;->b(II)V

    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lb/o/a/d;->qa()V

    invoke-virtual {p0}, Lc/c/a/d/f/e;->Qa()V

    return-void
.end method
