.class public Lc/e/a/b/h/b/D;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final a:Lc/e/a/b/h/b/Tb;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/D;)Lc/e/a/b/h/b/Tb;
    .locals 0

    .line 15
    iget-object p0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    .line 5
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    .line 6
    iget-boolean v0, p0, Lc/e/a/b/h/b/D;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lc/e/a/b/h/b/D;->b:Z

    .line 10
    iput-boolean v0, p0, Lc/e/a/b/h/b/D;->c:Z

    .line 11
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->b()Landroid/content/Context;

    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    .line 4
    iget-boolean v0, p0, Lc/e/a/b/h/b/D;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->b()Landroid/content/Context;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->n()Lc/e/a/b/h/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/x;->v()Z

    move-result v0

    iput-boolean v0, p0, Lc/e/a/b/h/b/D;->c:Z

    .line 9
    iget-object v0, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    iget-boolean v1, p0, Lc/e/a/b/h/b/D;->c:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lc/e/a/b/h/b/D;->b:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Tb;->r()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received action"

    invoke-virtual {p2, v0, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Tb;->n()Lc/e/a/b/h/b/x;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/x;->v()Z

    move-result p1

    .line 7
    iget-boolean p2, p0, Lc/e/a/b/h/b/D;->c:Z

    if-eq p2, p1, :cond_0

    .line 8
    iput-boolean p1, p0, Lc/e/a/b/h/b/D;->c:Z

    .line 9
    iget-object p2, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    .line 10
    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object p2

    new-instance v0, Lc/e/a/b/h/b/E;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/E;-><init>(Lc/e/a/b/h/b/D;Z)V

    .line 11
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 12
    :cond_1
    iget-object p2, p0, Lc/e/a/b/h/b/D;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
