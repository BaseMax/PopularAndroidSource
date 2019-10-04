.class public abstract Lc/c/a/d/f/l;
.super Ld/a/a/d;
.source "BaseDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld/a/a/d;"
    }
.end annotation


# instance fields
.field public ka:Lb/r/F$b;

.field public la:Landroid/app/Dialog;

.field public ma:Lc/c/a/d/f/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/d/f/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field public na:Ljava/lang/Integer;

.field public oa:Z

.field public pa:I

.field public qa:Z

.field public ra:Lc/c/a/d/f/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/a/a/d;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc/c/a/d/f/l;->pa:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/c/a/d/f/l;->qa:Z

    return-void
.end method


# virtual methods
.method public abstract Qa()V
.end method

.method public final Ra()Lc/c/a/d/f/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/d/f/r<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/l;->ma:Lc/c/a/d/f/r;

    return-object v0
.end method

.method public abstract Sa()Ljava/lang/String;
.end method

.method public Ta()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/f/l;->pa:I

    return v0
.end method

.method public Ua()Lc/c/a/d/f/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/l;->ra:Lc/c/a/d/f/q;

    return-object v0
.end method

.method public Va()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/l;->na:Ljava/lang/Integer;

    return-object v0
.end method

.method public final Wa()Lb/r/F$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/l;->ka:Lb/r/F$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModelFactory"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Xa()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/d/f/l;->qa:Z

    return v0
.end method

.method public Ya()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/d/f/l;->oa:Z

    return v0
.end method

.method public final a(Lb/o/a/n;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Sa()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "show() cannot perform after onSavedInstance"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Lc/c/a/d/f/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/d/f/r<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/d/f/l;->ma:Lc/c/a/d/f/r;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->b(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Va()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lb/o/a/d;->Na()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "dialog!!"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public n(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ya()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-super {p0, p1}, Lb/b/a/C;->n(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    const-string v0, "super.onCreateDialog(sav\u2026TCH_PARENT)\n            }"

    .line 8
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/d/f/l;->la:Landroid/app/Dialog;

    goto :goto_0

    .line 9
    :cond_1
    invoke-super {p0, p1}, Lb/b/a/C;->n(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/d/f/l;->la:Landroid/app/Dialog;

    .line 10
    :goto_0
    iget-object p1, p0, Lc/c/a/d/f/l;->la:Landroid/app/Dialog;

    const/4 v0, 0x0

    const-string v1, "dialogInstance"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ta()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Xa()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lb/o/a/d;->k(Z)V

    .line 13
    iget-object v2, p0, Lc/c/a/d/f/l;->la:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ua()Lc/c/a/d/f/q;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    iget-object v2, p0, Lc/c/a/d/f/l;->la:Landroid/app/Dialog;

    if-eqz v2, :cond_5

    new-instance v3, Lc/c/a/d/f/k;

    invoke-direct {v3, p1}, Lc/c/a/d/f/k;-><init>(Lc/c/a/d/f/q;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_6
    :goto_2
    iget-object p1, p0, Lc/c/a/d/f/l;->la:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_8
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lc/c/a/d/f/l;->ma:Lc/c/a/d/f/r;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/c/a/d/f/r;->onCancel()V

    :cond_0
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
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Qa()V

    return-void
.end method
