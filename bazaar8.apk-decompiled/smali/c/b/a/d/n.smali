.class public Lc/b/a/d/n;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/d/n$a;
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/d/n$a;


# instance fields
.field public volatile b:Lc/b/a/n;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lc/b/a/d/l;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb/o/a/n;",
            "Lc/b/a/d/q;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/Handler;

.field public final f:Lc/b/a/d/n$a;

.field public final g:Lb/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lb/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/d/m;

    invoke-direct {v0}, Lc/b/a/d/m;-><init>()V

    sput-object v0, Lc/b/a/d/n;->a:Lc/b/a/d/n$a;

    return-void
.end method

.method public constructor <init>(Lc/b/a/d/n$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/d/n;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/d/n;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    iput-object v0, p0, Lc/b/a/d/n;->g:Lb/f/b;

    .line 5
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    iput-object v0, p0, Lc/b/a/d/n;->h:Lb/f/b;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lc/b/a/d/n;->i:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lc/b/a/d/n;->a:Lc/b/a/d/n$a;

    :goto_0
    iput-object p1, p0, Lc/b/a/d/n;->f:Lc/b/a/d/n$a;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lc/b/a/d/n;->e:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/b/a/d/l;
    .locals 2

    const-string v0, "com.bumptech.glide.manager"

    .line 18
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lc/b/a/d/l;

    if-nez v1, :cond_1

    .line 19
    iget-object v1, p0, Lc/b/a/d/n;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/d/l;

    if-nez v1, :cond_1

    .line 20
    new-instance v1, Lc/b/a/d/l;

    invoke-direct {v1}, Lc/b/a/d/l;-><init>()V

    .line 21
    invoke-virtual {v1, p2}, Lc/b/a/d/l;->a(Landroid/app/Fragment;)V

    if-eqz p3, :cond_0

    .line 22
    invoke-virtual {v1}, Lc/b/a/d/l;->a()Lc/b/a/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lc/b/a/d/a;->b()V

    .line 23
    :cond_0
    iget-object p2, p0, Lc/b/a/d/n;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 25
    iget-object p2, p0, Lc/b/a/d/n;->e:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-object v1
.end method

.method public final a(Lb/o/a/n;Landroidx/fragment/app/Fragment;Z)Lc/b/a/d/q;
    .locals 2

    const-string v0, "com.bumptech.glide.manager"

    .line 33
    invoke-virtual {p1, v0}, Lb/o/a/n;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lc/b/a/d/q;

    if-nez v1, :cond_1

    .line 34
    iget-object v1, p0, Lc/b/a/d/n;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/d/q;

    if-nez v1, :cond_1

    .line 35
    new-instance v1, Lc/b/a/d/q;

    invoke-direct {v1}, Lc/b/a/d/q;-><init>()V

    .line 36
    invoke-virtual {v1, p2}, Lc/b/a/d/q;->b(Landroidx/fragment/app/Fragment;)V

    if-eqz p3, :cond_0

    .line 37
    invoke-virtual {v1}, Lc/b/a/d/q;->La()Lc/b/a/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lc/b/a/d/a;->b()V

    .line 38
    :cond_0
    iget-object p2, p0, Lc/b/a/d/n;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Lb/o/a/C;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/o/a/C;

    invoke-virtual {p2}, Lb/o/a/C;->b()I

    .line 40
    iget-object p2, p0, Lc/b/a/d/n;->e:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-object v1
.end method

.method public a(Landroid/content/Context;)Lc/b/a/n;
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lc/b/a/i/k;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lb/o/a/i;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lb/o/a/i;

    invoke-virtual {p0, p1}, Lc/b/a/d/n;->a(Lb/o/a/i;)Lc/b/a/n;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lc/b/a/d/n;->b(Landroid/app/Activity;)Lc/b/a/n;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/b/a/d/n;->a(Landroid/content/Context;)Lc/b/a/n;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lc/b/a/d/n;->b(Landroid/content/Context;)Lc/b/a/n;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/b/a/n;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-virtual {p0, p2, p3, p4}, Lc/b/a/d/n;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/b/a/d/l;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lc/b/a/d/l;->c()Lc/b/a/n;

    move-result-object p3

    if-nez p3, :cond_0

    .line 28
    invoke-static {p1}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object p3

    .line 29
    iget-object p4, p0, Lc/b/a/d/n;->f:Lc/b/a/d/n$a;

    .line 30
    invoke-virtual {p2}, Lc/b/a/d/l;->a()Lc/b/a/d/a;

    move-result-object v0

    invoke-virtual {p2}, Lc/b/a/d/l;->d()Lc/b/a/d/o;

    move-result-object v1

    .line 31
    invoke-interface {p4, p3, v0, v1, p1}, Lc/b/a/d/n$a;->a(Lc/b/a/e;Lc/b/a/d/i;Lc/b/a/d/o;Landroid/content/Context;)Lc/b/a/n;

    move-result-object p3

    .line 32
    invoke-virtual {p2, p3}, Lc/b/a/d/l;->a(Lc/b/a/n;)V

    :cond_0
    return-object p3
.end method

.method public final a(Landroid/content/Context;Lb/o/a/n;Landroidx/fragment/app/Fragment;Z)Lc/b/a/n;
    .locals 2

    .line 41
    invoke-virtual {p0, p2, p3, p4}, Lc/b/a/d/n;->a(Lb/o/a/n;Landroidx/fragment/app/Fragment;Z)Lc/b/a/d/q;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lc/b/a/d/q;->Na()Lc/b/a/n;

    move-result-object p3

    if-nez p3, :cond_0

    .line 43
    invoke-static {p1}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object p3

    .line 44
    iget-object p4, p0, Lc/b/a/d/n;->f:Lc/b/a/d/n$a;

    .line 45
    invoke-virtual {p2}, Lc/b/a/d/q;->La()Lc/b/a/d/a;

    move-result-object v0

    invoke-virtual {p2}, Lc/b/a/d/q;->Oa()Lc/b/a/d/o;

    move-result-object v1

    .line 46
    invoke-interface {p4, p3, v0, v1, p1}, Lc/b/a/d/n$a;->a(Lc/b/a/e;Lc/b/a/d/i;Lc/b/a/d/o;Landroid/content/Context;)Lc/b/a/n;

    move-result-object p3

    .line 47
    invoke-virtual {p2, p3}, Lc/b/a/d/q;->a(Lc/b/a/n;)V

    :cond_0
    return-object p3
.end method

.method public a(Lb/o/a/i;)Lc/b/a/n;
    .locals 3

    .line 10
    invoke-static {}, Lc/b/a/i/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/b/a/d/n;->a(Landroid/content/Context;)Lc/b/a/n;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    invoke-static {p1}, Lc/b/a/d/n;->a(Landroid/app/Activity;)V

    .line 13
    invoke-virtual {p1}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-static {p1}, Lc/b/a/d/n;->d(Landroid/app/Activity;)Z

    move-result v2

    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lc/b/a/d/n;->a(Landroid/content/Context;Lb/o/a/n;Landroidx/fragment/app/Fragment;Z)Lc/b/a/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Lb/o/a/i;)Lc/b/a/d/q;
    .locals 2

    .line 16
    invoke-virtual {p1}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    invoke-static {p1}, Lc/b/a/d/n;->d(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, p1}, Lc/b/a/d/n;->a(Lb/o/a/n;Landroidx/fragment/app/Fragment;Z)Lc/b/a/d/q;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/app/Activity;)Lc/b/a/n;
    .locals 3

    .line 10
    invoke-static {}, Lc/b/a/i/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/b/a/d/n;->a(Landroid/content/Context;)Lc/b/a/n;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    invoke-static {p1}, Lc/b/a/d/n;->a(Landroid/app/Activity;)V

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-static {p1}, Lc/b/a/d/n;->d(Landroid/app/Activity;)Z

    move-result v2

    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lc/b/a/d/n;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/b/a/n;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Lc/b/a/n;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/b/a/d/n;->b:Lc/b/a/n;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/b/a/d/n;->b:Lc/b/a/n;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lc/b/a/d/n;->f:Lc/b/a/d/n$a;

    new-instance v2, Lc/b/a/d/b;

    invoke-direct {v2}, Lc/b/a/d/b;-><init>()V

    new-instance v3, Lc/b/a/d/h;

    invoke-direct {v3}, Lc/b/a/d/h;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-interface {v1, v0, v2, v3, p1}, Lc/b/a/d/n$a;->a(Lc/b/a/e;Lc/b/a/d/i;Lc/b/a/d/o;Landroid/content/Context;)Lc/b/a/n;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/d/n;->b:Lc/b/a/n;

    .line 8
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lc/b/a/d/n;->b:Lc/b/a/n;

    return-object p1
.end method

.method public c(Landroid/app/Activity;)Lc/b/a/d/l;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lc/b/a/d/n;->d(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lc/b/a/d/n;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lc/b/a/d/l;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lb/o/a/n;

    .line 3
    iget-object p1, p0, Lc/b/a/d/n;->d:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    .line 5
    iget-object p1, p0, Lc/b/a/d/n;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x5

    const-string v0, "RMRetriever"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method
