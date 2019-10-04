.class public final Lc/e/a/b/h/b/rb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzaj;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;ZZLcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/rb;->f:Lc/e/a/b/h/b/gb;

    iput-boolean p2, p0, Lc/e/a/b/h/b/rb;->a:Z

    iput-boolean p3, p0, Lc/e/a/b/h/b/rb;->b:Z

    iput-object p4, p0, Lc/e/a/b/h/b/rb;->c:Lcom/google/android/gms/measurement/internal/zzaj;

    iput-object p5, p0, Lc/e/a/b/h/b/rb;->d:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p6, p0, Lc/e/a/b/h/b/rb;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/rb;->f:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/rb;->f:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lc/e/a/b/h/b/rb;->a:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lc/e/a/b/h/b/rb;->f:Lc/e/a/b/h/b/gb;

    iget-boolean v2, p0, Lc/e/a/b/h/b/rb;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lc/e/a/b/h/b/rb;->c:Lcom/google/android/gms/measurement/internal/zzaj;

    :goto_0
    iget-object v3, p0, Lc/e/a/b/h/b/rb;->d:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v1, v0, v2, v3}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/l;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_1

    .line 5
    :cond_2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/rb;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lc/e/a/b/h/b/rb;->c:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v2, p0, Lc/e/a/b/h/b/rb;->d:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v0, v1, v2}, Lc/e/a/b/h/b/l;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v1, p0, Lc/e/a/b/h/b/rb;->c:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v2, p0, Lc/e/a/b/h/b/rb;->e:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/h/b/rb;->f:Lc/e/a/b/h/b/gb;

    invoke-virtual {v3}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lc/e/a/b/h/b/l;->a(Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lc/e/a/b/h/b/rb;->f:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lc/e/a/b/h/b/rb;->f:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->e(Lc/e/a/b/h/b/gb;)V

    return-void
.end method
