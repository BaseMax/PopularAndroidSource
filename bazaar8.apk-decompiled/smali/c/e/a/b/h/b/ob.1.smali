.class public final Lc/e/a/b/h/b/ob;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzaj;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc/e/a/b/g/f/fd;

.field public final synthetic d:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;Lc/e/a/b/g/f/fd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    iput-object p2, p0, Lc/e/a/b/h/b/ob;->a:Lcom/google/android/gms/measurement/internal/zzaj;

    iput-object p3, p0, Lc/e/a/b/h/b/ob;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/ob;->c:Lc/e/a/b/g/f/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    invoke-static {v1}, Lc/e/a/b/h/b/gb;->d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    .line 4
    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/h/b/ob;->c:Lc/e/a/b/g/f/fd;

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;[B)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v2, p0, Lc/e/a/b/h/b/ob;->a:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v3, p0, Lc/e/a/b/h/b/ob;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lc/e/a/b/h/b/l;->a(Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)[B

    move-result-object v0

    .line 7
    iget-object v1, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    invoke-static {v1}, Lc/e/a/b/h/b/gb;->e(Lc/e/a/b/h/b/gb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v1, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/h/b/ob;->c:Lc/e/a/b/g/f/fd;

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;[B)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    :try_start_2
    iget-object v2, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    iget-object v1, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/h/b/ob;->c:Lc/e/a/b/g/f/fd;

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;[B)V

    return-void

    .line 11
    :goto_0
    iget-object v2, p0, Lc/e/a/b/h/b/ob;->d:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/h/b/ob;->c:Lc/e/a/b/g/f/fd;

    invoke-virtual {v2, v3, v0}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;[B)V

    throw v1
.end method
