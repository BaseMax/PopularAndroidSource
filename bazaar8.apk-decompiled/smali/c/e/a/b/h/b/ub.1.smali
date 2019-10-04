.class public final Lc/e/a/b/h/b/ub;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic d:Lc/e/a/b/g/f/fd;

.field public final synthetic e:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;Lc/e/a/b/g/f/fd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    iput-object p2, p0, Lc/e/a/b/h/b/ub;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/h/b/ub;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/ub;->c:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p5, p0, Lc/e/a/b/h/b/ub;->d:Lc/e/a/b/g/f/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "Failed to get conditional properties"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    iget-object v2, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    invoke-static {v2}, Lc/e/a/b/h/b/gb;->d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/h/b/ub;->a:Ljava/lang/String;

    iget-object v4, p0, Lc/e/a/b/h/b/ub;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0, v3, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/h/b/ub;->d:Lc/e/a/b/g/f/fd;

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Ljava/util/ArrayList;)V

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v3, p0, Lc/e/a/b/h/b/ub;->a:Ljava/lang/String;

    iget-object v4, p0, Lc/e/a/b/h/b/ub;->b:Ljava/lang/String;

    iget-object v5, p0, Lc/e/a/b/h/b/ub;->c:Lcom/google/android/gms/measurement/internal/zzm;

    .line 8
    invoke-interface {v2, v3, v4, v5}, Lc/e/a/b/h/b/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;)Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lc/e/a/b/h/b/cc;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    invoke-static {v2}, Lc/e/a/b/h/b/gb;->e(Lc/e/a/b/h/b/gb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v0, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/h/b/ub;->d:Lc/e/a/b/g/f/fd;

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    :try_start_2
    iget-object v3, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    invoke-virtual {v3}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    iget-object v4, p0, Lc/e/a/b/h/b/ub;->a:Ljava/lang/String;

    iget-object v5, p0, Lc/e/a/b/h/b/ub;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v0, v4, v5, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    iget-object v0, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/h/b/ub;->d:Lc/e/a/b/g/f/fd;

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Ljava/util/ArrayList;)V

    return-void

    .line 16
    :goto_0
    iget-object v2, p0, Lc/e/a/b/h/b/ub;->e:Lc/e/a/b/h/b/gb;

    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/h/b/ub;->d:Lc/e/a/b/g/f/fd;

    invoke-virtual {v2, v3, v1}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Ljava/util/ArrayList;)V

    throw v0
.end method
