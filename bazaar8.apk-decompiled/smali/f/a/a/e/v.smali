.class public Lf/a/a/e/v;
.super Lf/a/a/e/l;
.source "SplashPageFragment.java"


# static fields
.field public static Y:I = 0x5dc


# instance fields
.field public Z:Lf/a/a/g/d/a/b;

.field public aa:Landroid/os/Handler;

.field public ba:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/l;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/a/a/e/v;->ba:Z

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/v;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf/a/a/e/v;->ba:Z

    return p0
.end method

.method public static synthetic b(Lf/a/a/e/v;)Lf/a/a/g/d/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/v;->Z:Lf/a/a/g/d/a/b;

    return-object p0
.end method

.method public static synthetic c(Lf/a/a/e/v;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/v;->Ma()V

    return-void
.end method


# virtual methods
.method public final Ma()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/e/v;->Z:Lf/a/a/g/d/a/b;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/a/a/e/v;->aa:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lf/a/a/e/v;->aa:Landroid/os/Handler;

    .line 4
    :cond_0
    iget-object v0, p0, Lf/a/a/e/v;->aa:Landroid/os/Handler;

    new-instance v1, Lf/a/a/e/u;

    invoke-direct {v1, p0}, Lf/a/a/e/u;-><init>(Lf/a/a/e/v;)V

    sget v2, Lf/a/a/e/v;->Y:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lf/a/a/e/v;->aa:Landroid/os/Handler;

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-interface {v1, v0}, Lf/a/a/d/f;->b(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/Theme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lir/cafebazaar/inline/platform/InlineApplication;->a(Lir/cafebazaar/inline/ui/Theme;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v2

    .line 10
    invoke-interface {v1, v0}, Lf/a/a/d/f;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->b(Ljava/util/List;)V

    .line 11
    invoke-interface {v1, v0}, Lf/a/a/d/f;->h(Ljava/lang/Object;)Lf/a/a/d/a/a/c/b;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineApplication;->b()Lf/a/a/g/f/a/b;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lir/cafebazaar/inline/platform/InlineApplication;->a(Lf/a/a/e/g;Lf/a/a/d/a/a/c/b;)V

    .line 14
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/high16 v3, 0x4000000

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 18
    invoke-virtual {p0}, Lf/a/a/e/l;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/Theme;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 19
    :cond_3
    invoke-interface {v1, v0}, Lf/a/a/d/f;->e(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/inflaters/PageInflater;

    move-result-object v0

    check-cast v0, Lf/a/a/e/b/M;

    .line 20
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lf/a/a/g/d/d;->g()Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->c()V

    .line 22
    :cond_4
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lf/a/a/g/d/d;->g()Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    move-result-object v1

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->a(Ljava/lang/String;)V

    .line 24
    :cond_5
    invoke-virtual {v0}, Lf/a/a/e/b/M;->c()Lf/a/a/g/d/a/b;

    move-result-object v1

    iput-object v1, p0, Lf/a/a/e/v;->Z:Lf/a/a/g/d/a/b;

    .line 25
    invoke-virtual {v0, p1, p2, p0}, Lf/a/a/e/b/M;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 27
    new-instance v1, Lf/a/a/e/j;

    sget v2, Lf/a/a/g;->error_general:I

    .line 28
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lf/a/a/g;->error_try_again_later:I

    .line 29
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lf/a/a/g/c;->f()V

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public sa()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->sa()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/a/a/e/v;->ba:Z

    return-void
.end method

.method public ta()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ta()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/a/a/e/v;->ba:Z

    .line 3
    invoke-virtual {p0}, Lf/a/a/e/v;->Ma()V

    return-void
.end method
