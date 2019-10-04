.class public Lf/a/a/e/l;
.super Landroidx/fragment/app/Fragment;
.source "InlineFragment.java"

# interfaces
.implements Lf/a/a/e/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lf/a/a/e/g;Ljava/lang/String;)Lf/a/a/e/l;
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Lf/a/a/d/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "splashPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v0, Lf/a/a/e/v;

    invoke-direct {v0}, Lf/a/a/e/v;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1}, Lf/a/a/d/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoPage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lf/a/a/e/C;

    invoke-direct {v0}, Lf/a/a/e/C;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lf/a/a/e/c;

    invoke-direct {v0}, Lf/a/a/e/c;-><init>()V

    .line 8
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_code"

    .line 9
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 12
    new-instance v0, Lf/a/a/e/j;

    .line 13
    invoke-interface {p0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    sget v2, Lf/a/a/g;->error_general:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-interface {p0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    sget v3, Lf/a/a/g;->error_try_again_later:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lf/a/a/g/c;->f()V

    .line 15
    new-instance p0, Lf/a/a/e/c;

    invoke-direct {p0}, Lf/a/a/e/c;-><init>()V

    return-object p0
.end method


# virtual methods
.method public La()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .line 16
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "restart"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-nez p1, :cond_2

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p2

    invoke-virtual {p2}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object p2

    invoke-virtual {p2}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a(Lf/a/a/e/g;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 21
    new-instance p2, Lf/a/a/g/g/h;

    invoke-direct {p2, p0, p1}, Lf/a/a/g/g/h;-><init>(Lf/a/a/e/g;Ljava/util/List;)V

    .line 22
    invoke-virtual {p2}, Lf/a/a/g/c;->f()V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a()Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Lf/a/a/e/g;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lf/a/a/e/a/o;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {p2}, Lc/c/a/d/g/c;->a(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lf/a/a/e;->page:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 34
    new-instance v1, Lf/a/a/e/a/j;

    new-instance v2, Lf/a/a/e/k;

    invoke-direct {v2, p0, v0, p2}, Lf/a/a/e/k;-><init>(Lf/a/a/e/l;Landroid/view/View;Landroid/graphics/Point;)V

    invoke-direct {v1, v2}, Lf/a/a/e/a/j;-><init>(Lf/a/a/e/a/j$a;)V

    invoke-virtual {p1, v1}, Lf/a/a/e/a/o;->a(Lf/a/a/e/a/c;)V

    .line 35
    invoke-virtual {p1, v0, p0}, Lf/a/a/e/a/o;->a(Landroid/view/View;Lf/a/a/e/g;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lf/a/a/d/f;->i(Ljava/lang/Object;)Lf/a/a/e/a/o;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1, p2}, Lf/a/a/e/l;->a(Lf/a/a/e/a/o;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 29
    new-instance p2, Lf/a/a/e/j;

    sget v0, Lf/a/a/g;->error_general:I

    .line 30
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lf/a/a/g;->error_try_again_later:I

    .line 31
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v0, v1, p1}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lf/a/a/g/c;->f()V

    :goto_0
    return-void
.end method

.method public f()Lir/cafebazaar/inline/ui/InlineActivity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ui/InlineActivity;

    return-object v0
.end method

.method public g()Lir/cafebazaar/inline/ui/Theme;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->i()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public h()Lir/cafebazaar/inline/platform/InlineApplication;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lf/a/a/a/b/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->a()Lf/a/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public k()Lf/a/a/e/l;
    .locals 0

    return-object p0
.end method
