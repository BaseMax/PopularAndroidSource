.class public final Lc/c/a/d/b/f;
.super Ljava/lang/Object;
.source "FragmentExt.kt"


# direct methods
.method public static final a(Landroidx/fragment/app/Fragment;II)V
    .locals 1

    const-string v0, "$this$toastMessage"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/Fragment;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lc/c/a/d/b/f;->a(Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method public static final a(Landroidx/fragment/app/Fragment;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "$this$hideKeyboard"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lc/c/a/d/b/a;->a(Landroid/app/Activity;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/Fragment;Landroid/os/IBinder;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lc/c/a/d/b/f;->a(Landroidx/fragment/app/Fragment;Landroid/os/IBinder;)V

    return-void
.end method
