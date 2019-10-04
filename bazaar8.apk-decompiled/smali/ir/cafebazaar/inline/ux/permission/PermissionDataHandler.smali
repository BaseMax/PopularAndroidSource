.class public Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;
.super Ljava/lang/Object;
.source "PermissionDataHandler.java"

# interfaces
.implements Lf/a/a/g/d/b;
.implements Lf/a/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

.field public c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lf/a/a/c/a;

.field public f:Lc/c/a/d/c/b;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    const-wide/32 v1, 0x493e0

    invoke-direct {v0, v1, v2}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;-><init>(J)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    .line 4
    new-instance v0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    const-wide/32 v1, 0x2255100

    invoke-direct {v0, v1, v2}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;-><init>(J)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    .line 5
    sget-object v0, Lf/a/a/b/a;->a:Lf/a/a/c/a;

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->e:Lf/a/a/c/a;

    .line 6
    sget-object v0, Lf/a/a/b/a;->b:Lc/c/a/d/c/b;

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->f:Lc/c/a/d/c/b;

    .line 7
    iput-object p1, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->d:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bazaar://login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "extra_referer"

    const-string v2, "inline-app"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object p0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Illegal State, all users must have phone number"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Lf/a/a/g;->permission_data_handler_login_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "inline_permissions_pref"

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    :goto_0
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lir/cafebazaar/inline/ux/permission/Permission;

    .line 10
    sget-object v3, Lf/a/a/g/g/b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget-object v3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    invoke-virtual {v3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    invoke-virtual {v3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_3
    iget-object v3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    invoke-virtual {v3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    invoke-virtual {v3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    .line 31
    invoke-static {p1, v0, v1}, Lb/i/a/b;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "address"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    const-string v0, "phone"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    iput-object p1, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    return-void
.end method

.method public final a(Lb/o/a/i;)V
    .locals 4

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lf/a/a/e/g;)V
    .locals 4

    .line 24
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "locationPermissionAsked"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 26
    invoke-static {v0, v1}, Lb/i/a/b;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Lb/o/a/i;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public a(Lf/a/a/e/g;I[Ljava/lang/String;[I)V
    .locals 1

    .line 45
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p3

    invoke-virtual {p0, p3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string p4, "locationPermissionAsked"

    const/4 v0, 0x1

    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_3

    .line 46
    iget-object p2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->f:Lc/c/a/d/c/b;

    invoke-virtual {p2}, Lc/c/a/d/c/b;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 47
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b()Ljava/util/Set;

    move-result-object p2

    sget-object p3, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 48
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Lf/a/a/e/g;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b()Ljava/util/Set;

    move-result-object p2

    sget-object p3, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->f:Lc/c/a/d/c/b;

    invoke-virtual {p2}, Lc/c/a/d/c/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 51
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Lf/a/a/e/g;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lf/a/a/e/g;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/e/g;",
            "Ljava/util/Set<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 15
    sget-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->approximateLocation:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Lf/a/a/e/g;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->f:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    sget-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Lf/a/a/e/g;)V

    goto :goto_0

    .line 21
    :cond_2
    sget-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->f:Lc/c/a/d/c/b;

    invoke-virtual {p2}, Lc/c/a/d/c/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 22
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Lf/a/a/e/g;)V

    :goto_0
    return-void
.end method

.method public a(Lf/a/a/e/g;IILandroid/content/Intent;)Z
    .locals 2

    const/4 p4, -0x1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p3, p4, :cond_1

    .line 37
    iget-object p2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    iget-object p3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->f:Lc/c/a/d/c/b;

    invoke-virtual {p3}, Lc/c/a/d/c/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a(Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Lf/a/a/e/g;)V

    return v0

    :cond_2
    if-ne p3, p4, :cond_4

    .line 39
    iget-object p2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    iget-object p3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->f:Lc/c/a/d/c/b;

    invoke-virtual {p3}, Lc/c/a/d/c/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a(Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p2

    invoke-virtual {p2}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object p2

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p3

    invoke-virtual {p3}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lir/cafebazaar/inline/platform/InlineUser;->a(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b()Ljava/util/Set;

    move-result-object p2

    sget-object p3, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->f:Lc/c/a/d/c/b;

    invoke-virtual {p2}, Lc/c/a/d/c/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 42
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Lf/a/a/e/g;)V

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Lf/a/a/e/g;)V

    :goto_0
    return v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->d:Ljava/util/Set;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    const-string v1, "address"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public b(Lf/a/a/e/g;)V
    .locals 7

    .line 4
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lir/cafebazaar/inline/ux/permission/Permission;

    .line 5
    iget-object v3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 6
    sget-object v3, Lf/a/a/g/g/b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->c:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    invoke-virtual {v2}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    invoke-virtual {v2}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    sget-object v3, Lir/cafebazaar/inline/ux/permission/Permission;->approximateLocation:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Lc/c/a/e/e/a;

    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lc/c/a/e/e/a;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v2}, Lc/c/a/e/e/a;->a()Lcom/farsitel/bazaar/data/entity/Location;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    iget-object v3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a(Ljava/lang/String;)V

    .line 13
    :cond_3
    iget-object v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    sget-object v3, Lir/cafebazaar/inline/ux/permission/Permission;->approximateLocation:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v3, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 16
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b()Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a:Ljava/util/Set;

    sget-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3
    invoke-static {p1, v0}, Lb/i/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
