.class public Lb/H/a/b/b/f;
.super Lb/H/a/b/b/e;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/a/b/b/f$a;,
        Lb/H/a/b/b/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/H/a/b/b/e<",
        "Lb/H/a/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public final g:Landroid/net/ConnectivityManager;

.field public h:Lb/H/a/b/b/f$b;

.field public i:Lb/H/a/b/b/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkStateTracker"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/b/b/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lb/H/a/b/b/e;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lb/H/a/b/b/e;->b:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lb/H/a/b/b/f;->g:Landroid/net/ConnectivityManager;

    .line 4
    invoke-static {}, Lb/H/a/b/b/f;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lb/H/a/b/b/f$b;

    invoke-direct {p1, p0}, Lb/H/a/b/b/f$b;-><init>(Lb/H/a/b/b/f;)V

    iput-object p1, p0, Lb/H/a/b/b/f;->h:Lb/H/a/b/b/f$b;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lb/H/a/b/b/f$a;

    invoke-direct {p1, p0}, Lb/H/a/b/b/f$a;-><init>(Lb/H/a/b/b/f;)V

    iput-object p1, p0, Lb/H/a/b/b/f;->i:Lb/H/a/b/b/f$a;

    :goto_0
    return-void
.end method

.method public static f()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Lb/H/a/b/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/H/a/b/b/f;->d()Lb/H/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/H/a/b/b/f;->a()Lb/H/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .line 1
    invoke-static {}, Lb/H/a/b/b/f;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v2, Lb/H/a/b/b/f;->f:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Registering network callback"

    invoke-virtual {v0, v2, v3, v1}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lb/H/a/b/b/f;->g:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lb/H/a/b/b/f;->h:Lb/H/a/b/b/f$b;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v2, Lb/H/a/b/b/f;->f:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Registering broadcast receiver"

    invoke-virtual {v0, v2, v3, v1}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lb/H/a/b/b/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lb/H/a/b/b/f;->i:Lb/H/a/b/b/f$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    invoke-static {}, Lb/H/a/b/b/f;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v2, Lb/H/a/b/b/f;->f:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lb/H/a/b/b/f;->g:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lb/H/a/b/b/f;->h:Lb/H/a/b/b/f$b;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v2

    sget-object v3, Lb/H/a/b/b/f;->f:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v1

    const-string v0, "Received exception while unregistering network callback"

    invoke-virtual {v2, v3, v0, v4}, Lb/H/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v2, Lb/H/a/b/b/f;->f:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Unregistering broadcast receiver"

    invoke-virtual {v0, v2, v3, v1}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lb/H/a/b/b/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lb/H/a/b/b/f;->i:Lb/H/a/b/b/f$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public d()Lb/H/a/b/b;
    .locals 6

    .line 1
    iget-object v0, p0, Lb/H/a/b/b/f;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lb/H/a/b/b/f;->e()Z

    move-result v4

    .line 4
    iget-object v5, p0, Lb/H/a/b/b/f;->g:Landroid/net/ConnectivityManager;

    invoke-static {v5}, Lb/i/f/a;->a(Landroid/net/ConnectivityManager;)Z

    move-result v5

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    new-instance v0, Lb/H/a/b/b;

    invoke-direct {v0, v3, v4, v5, v1}, Lb/H/a/b/b;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final e()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/H/a/b/b/f;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lb/H/a/b/b/f;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x10

    .line 4
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
