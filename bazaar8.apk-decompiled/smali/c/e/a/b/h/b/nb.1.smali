.class public final Lc/e/a/b/h/b/nb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/cb;

.field public final synthetic b:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;Lc/e/a/b/h/b/cb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/nb;->b:Lc/e/a/b/h/b/gb;

    iput-object p2, p0, Lc/e/a/b/h/b/nb;->a:Lc/e/a/b/h/b/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/nb;->b:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/nb;->b:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/h/b/nb;->a:Lc/e/a/b/h/b/cb;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/nb;->b:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lc/e/a/b/h/b/l;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/nb;->a:Lc/e/a/b/h/b/cb;

    iget-wide v2, v0, Lc/e/a/b/h/b/cb;->c:J

    iget-object v0, p0, Lc/e/a/b/h/b/nb;->a:Lc/e/a/b/h/b/cb;

    iget-object v4, v0, Lc/e/a/b/h/b/cb;->a:Ljava/lang/String;

    iget-object v0, p0, Lc/e/a/b/h/b/nb;->a:Lc/e/a/b/h/b/cb;

    iget-object v5, v0, Lc/e/a/b/h/b/cb;->b:Ljava/lang/String;

    iget-object v0, p0, Lc/e/a/b/h/b/nb;->b:Lc/e/a/b/h/b/gb;

    .line 6
    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface/range {v1 .. v6}, Lc/e/a/b/h/b/l;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lc/e/a/b/h/b/nb;->b:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->e(Lc/e/a/b/h/b/gb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lc/e/a/b/h/b/nb;->b:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
