.class public final Lc/e/a/b/h/b/Bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/l;

.field public final synthetic b:Lc/e/a/b/h/b/xb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/xb;Lc/e/a/b/h/b/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Bb;->b:Lc/e/a/b/h/b/xb;

    iput-object p2, p0, Lc/e/a/b/h/b/Bb;->a:Lc/e/a/b/h/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Bb;->b:Lc/e/a/b/h/b/xb;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/Bb;->b:Lc/e/a/b/h/b/xb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc/e/a/b/h/b/xb;->a(Lc/e/a/b/h/b/xb;Z)Z

    .line 3
    iget-object v1, p0, Lc/e/a/b/h/b/Bb;->b:Lc/e/a/b/h/b/xb;

    iget-object v1, v1, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/gb;->C()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lc/e/a/b/h/b/Bb;->b:Lc/e/a/b/h/b/xb;

    iget-object v1, v1, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lc/e/a/b/h/b/Bb;->b:Lc/e/a/b/h/b/xb;

    iget-object v1, v1, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    iget-object v2, p0, Lc/e/a/b/h/b/Bb;->a:Lc/e/a/b/h/b/l;

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/l;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
