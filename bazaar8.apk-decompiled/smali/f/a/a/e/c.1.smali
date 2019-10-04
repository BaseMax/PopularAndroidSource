.class public Lf/a/a/e/c;
.super Lf/a/a/e/l;
.source "CommonPageFragment.java"


# instance fields
.field public Y:Landroid/view/View;

.field public Z:Lf/a/a/g/b/a;

.field public final aa:Landroid/support/v4/media/session/MediaControllerCompat$a;

.field public ba:Lf/a/a/g/d;

.field public ca:Lf/a/a/g/d/b/f;

.field public da:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

.field public ea:Z

.field public fa:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/l;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/g/b/a;

    invoke-direct {v0}, Lf/a/a/g/b/a;-><init>()V

    iput-object v0, p0, Lf/a/a/e/c;->Z:Lf/a/a/g/b/a;

    .line 3
    new-instance v0, Lf/a/a/e/a;

    invoke-direct {v0, p0}, Lf/a/a/e/a;-><init>(Lf/a/a/e/c;)V

    iput-object v0, p0, Lf/a/a/e/c;->aa:Landroid/support/v4/media/session/MediaControllerCompat$a;

    .line 4
    new-instance v0, Lf/a/a/g/d;

    invoke-direct {v0}, Lf/a/a/g/d;-><init>()V

    iput-object v0, p0, Lf/a/a/e/c;->ba:Lf/a/a/g/d;

    .line 5
    new-instance v0, Lf/a/a/e/b;

    invoke-direct {v0, p0}, Lf/a/a/e/b;-><init>(Lf/a/a/e/c;)V

    iput-object v0, p0, Lf/a/a/e/c;->fa:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/c;)Lf/a/a/g/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/c;->Z:Lf/a/a/g/b/a;

    return-object p0
.end method

.method public static synthetic a(Lf/a/a/e/c;Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)Lir/cafebazaar/inline/ux/audio/MediaPlayerService;
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/c;->da:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    return-object p1
.end method

.method public static synthetic a(Lf/a/a/e/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lf/a/a/e/c;->ea:Z

    return p1
.end method

.method public static synthetic b(Lf/a/a/e/c;)Lir/cafebazaar/inline/ux/audio/MediaPlayerService;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/c;->da:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    return-object p0
.end method


# virtual methods
.method public final Ma()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf/a/a/e/c;->ea:Z

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    const-class v2, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0}, Lf/a/a/e/l;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lf/a/a/e/l;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    const-string v2, "KEY_THEME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/e/c;->fa:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    return-void
.end method

.method public Na()Lf/a/a/g/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/c;->Z:Lf/a/a/g/b/a;

    return-object v0
.end method

.method public Oa()Lf/a/a/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/c;->ba:Lf/a/a/g/d;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-interface {v1, v0}, Lf/a/a/d/f;->b(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/Theme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lir/cafebazaar/inline/platform/InlineApplication;->a(Lir/cafebazaar/inline/ui/Theme;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v2

    .line 11
    invoke-interface {v1, v0}, Lf/a/a/d/f;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->b(Ljava/util/List;)V

    .line 12
    invoke-interface {v1, v0}, Lf/a/a/d/f;->h(Ljava/lang/Object;)Lf/a/a/d/a/a/c/b;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineApplication;->b()Lf/a/a/g/f/a/b;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lir/cafebazaar/inline/platform/InlineApplication;->a(Lf/a/a/e/g;Lf/a/a/d/a/a/c/b;)V

    .line 15
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/high16 v3, 0x4000000

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 19
    invoke-virtual {p0}, Lf/a/a/e/l;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/Theme;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 20
    :cond_3
    invoke-interface {v1, v0}, Lf/a/a/d/f;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-interface {v1, v0}, Lf/a/a/d/f;->k(Ljava/lang/Object;)Lf/a/a/e/t;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lf/a/a/e/t;->b()Lir/cafebazaar/inline/ui/inflaters/PageInflater;

    move-result-object v3

    check-cast v3, Lf/a/a/e/b/l;

    .line 23
    invoke-interface {v1}, Lf/a/a/d/f;->a()Lf/a/a/a/b/c;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Lf/a/a/e/t;->a(Lf/a/a/e/g;Lf/a/a/a/b/c;)V

    .line 24
    invoke-virtual {v2}, Lf/a/a/e/t;->a()V

    goto :goto_1

    .line 25
    :cond_4
    invoke-interface {v1, v0}, Lf/a/a/d/f;->e(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/inflaters/PageInflater;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lf/a/a/e/b/l;

    .line 26
    :goto_1
    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 27
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lf/a/a/g/d/d;->g()Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->c()V

    .line 28
    :cond_5
    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 29
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lf/a/a/g/d/d;->g()Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    move-result-object v2

    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->a(Ljava/lang/String;)V

    .line 30
    :cond_6
    invoke-interface {v1, v0}, Lf/a/a/d/f;->f(Ljava/lang/Object;)Lf/a/a/a/b/f;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 31
    invoke-virtual {v2, p0}, Lf/a/a/a/b/f;->a(Lf/a/a/e/g;)V

    .line 32
    :cond_7
    iget-object v2, p0, Lf/a/a/e/c;->ca:Lf/a/a/g/d/b/f;

    invoke-interface {v1, v0}, Lf/a/a/d/f;->g(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lf/a/a/g/d/b/f;->a(Ljava/util/Collection;)V

    .line 33
    invoke-virtual {v3, p1, p2, p0}, Lf/a/a/e/b/l;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 35
    new-instance v1, Lf/a/a/e/j;

    sget v2, Lf/a/a/g;->error_general:I

    .line 36
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lf/a/a/g;->error_try_again_later:I

    .line 37
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lf/a/a/g/c;->f()V

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 42
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/app/Activity;Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 44
    :cond_0
    iget-object p1, p0, Lf/a/a/e/c;->aa:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    :cond_1
    return-void
.end method

.method public a(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lf/a/a/e/c;->Y:Landroid/view/View;

    return-void
.end method

.method public aa()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/c;->Y:Landroid/view/View;

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Lf/a/a/e/c;->Ma()V

    .line 11
    new-instance p1, Lf/a/a/g/d/b/f;

    invoke-direct {p1, p0}, Lf/a/a/g/d/b/f;-><init>(Lf/a/a/e/g;)V

    iput-object p1, p0, Lf/a/a/e/c;->ca:Lf/a/a/g/d/b/f;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lf/a/a/d/f;->e(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/inflaters/PageInflater;

    move-result-object p1

    check-cast p1, Lf/a/a/e/b/l;

    .line 4
    invoke-virtual {p0}, Lf/a/a/e/c;->aa()Landroid/view/View;

    move-result-object v0

    sget v1, Lf/a/a/e;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 5
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v0, v1, p0}, Lf/a/a/e/b/l;->a(Landroidx/core/widget/NestedScrollView;Landroid/view/LayoutInflater;Lf/a/a/e/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    const-string v0, "restart"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public oa()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->oa()V

    .line 2
    iget-boolean v0, p0, Lf/a/a/e/c;->ea:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/c;->fa:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4
    iget-object v0, p0, Lf/a/a/e/c;->da:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 5
    iget-object v0, p0, Lf/a/a/e/c;->da:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->i()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lf/a/a/e/c;->aa:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->b(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    :cond_1
    return-void
.end method

.method public sa()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/c;->ca:Lf/a/a/g/d/b/f;

    invoke-virtual {v0}, Lf/a/a/g/d/b/f;->b()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->sa()V

    return-void
.end method

.method public ta()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ta()V

    .line 2
    iget-object v0, p0, Lf/a/a/e/c;->ca:Lf/a/a/g/d/b/f;

    invoke-virtual {v0}, Lf/a/a/g/d/b/f;->a()V

    return-void
.end method
