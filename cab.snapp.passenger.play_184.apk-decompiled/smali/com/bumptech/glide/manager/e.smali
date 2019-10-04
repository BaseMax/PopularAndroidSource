.class final Lcom/bumptech/glide/manager/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/c;


# instance fields
.field final a:Lcom/bumptech/glide/manager/c$a;

.field b:Z

.field private final c:Landroid/content/Context;

.field private d:Z

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bumptech/glide/manager/e$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/e$1;-><init>(Lcom/bumptech/glide/manager/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/e;->e:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/e;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/bumptech/glide/manager/e;->a:Lcom/bumptech/glide/manager/c$a;

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 81
    invoke-static {p0}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1047
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/e;->d:Z

    if-nez v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/manager/e;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->b:Z

    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/e;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1057
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->d:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1067
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/e;->d:Z

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/manager/e;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1072
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/e;->d:Z

    :cond_0
    return-void
.end method
