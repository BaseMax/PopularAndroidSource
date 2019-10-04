.class public final Lc/e/a/b/h/b/lb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic b:Lc/e/a/b/g/f/fd;

.field public final synthetic c:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;Lcom/google/android/gms/measurement/internal/zzm;Lc/e/a/b/g/f/fd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    iput-object p2, p0, Lc/e/a/b/h/b/lb;->a:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p3, p0, Lc/e/a/b/h/b/lb;->b:Lc/e/a/b/g/f/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-static {v2}, Lc/e/a/b/h/b/gb;->d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2
    iget-object v2, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/h/b/lb;->b:Lc/e/a/b/g/f/fd;

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v3, p0, Lc/e/a/b/h/b/lb;->a:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v2, v3}, Lc/e/a/b/h/b/l;->c(Lcom/google/android/gms/measurement/internal/zzm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/_a;->p()Lc/e/a/b/h/b/Fa;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc/e/a/b/h/b/Fa;->a(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v2

    iget-object v2, v2, Lc/e/a/b/h/b/F;->m:Lc/e/a/b/h/b/K;

    invoke-virtual {v2, v1}, Lc/e/a/b/h/b/K;->a(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v2, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-static {v2}, Lc/e/a/b/h/b/gb;->e(Lc/e/a/b/h/b/gb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v0, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/h/b/lb;->b:Lc/e/a/b/g/f/fd;

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    iget-object v3, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v3}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    iget-object v0, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/h/b/lb;->b:Lc/e/a/b/g/f/fd;

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Ljava/lang/String;)V

    return-void

    .line 11
    :goto_0
    iget-object v2, p0, Lc/e/a/b/h/b/lb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/h/b/lb;->b:Lc/e/a/b/g/f/fd;

    invoke-virtual {v2, v3, v1}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Ljava/lang/String;)V

    throw v0
.end method
