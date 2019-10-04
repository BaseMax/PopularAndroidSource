.class public final Lc/e/a/b/h/b/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lc/e/a/b/h/b/L;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/L;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/M;->b:Lc/e/a/b/h/b/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/e/a/b/h/b/M;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/M;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/h/b/M;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lc/e/a/b/h/b/M;->b:Lc/e/a/b/h/b/L;

    iget-object p1, p1, Lc/e/a/b/h/b/L;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p2}, Lc/e/a/b/g/f/ob;->a(Landroid/os/IBinder;)Lc/e/a/b/g/f/Sa;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lc/e/a/b/h/b/M;->b:Lc/e/a/b/h/b/L;

    iget-object p1, p1, Lc/e/a/b/h/b/L;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Install Referrer Service implementation was not found"

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object p2, p0, Lc/e/a/b/h/b/M;->b:Lc/e/a/b/h/b/L;

    iget-object p2, p2, Lc/e/a/b/h/b/L;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v0, "Install Referrer Service connected"

    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lc/e/a/b/h/b/M;->b:Lc/e/a/b/h/b/L;

    iget-object p2, p2, Lc/e/a/b/h/b/L;->a:Lc/e/a/b/h/b/Y;

    .line 6
    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object p2

    new-instance v0, Lc/e/a/b/h/b/N;

    invoke-direct {v0, p0, p1, p0}, Lc/e/a/b/h/b/N;-><init>(Lc/e/a/b/h/b/M;Lc/e/a/b/g/f/Sa;Landroid/content/ServiceConnection;)V

    .line 7
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lc/e/a/b/h/b/M;->b:Lc/e/a/b/h/b/L;

    iget-object p2, p2, Lc/e/a/b/h/b/L;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p2, v0, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/e/a/b/h/b/M;->b:Lc/e/a/b/h/b/L;

    iget-object p1, p1, Lc/e/a/b/h/b/L;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void
.end method
