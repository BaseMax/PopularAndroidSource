.class public final Lc/e/a/b/h/b/sb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic f:Lc/e/a/b/h/b/gb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/gb;ZZLcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/sb;->f:Lc/e/a/b/h/b/gb;

    iput-boolean p2, p0, Lc/e/a/b/h/b/sb;->a:Z

    iput-boolean p3, p0, Lc/e/a/b/h/b/sb;->b:Z

    iput-object p4, p0, Lc/e/a/b/h/b/sb;->c:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p5, p0, Lc/e/a/b/h/b/sb;->d:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p6, p0, Lc/e/a/b/h/b/sb;->e:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/sb;->f:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/sb;->f:Lc/e/a/b/h/b/gb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 4
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lc/e/a/b/h/b/sb;->a:Z

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lc/e/a/b/h/b/sb;->f:Lc/e/a/b/h/b/gb;

    iget-boolean v2, p0, Lc/e/a/b/h/b/sb;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lc/e/a/b/h/b/sb;->c:Lcom/google/android/gms/measurement/internal/zzr;

    :goto_0
    iget-object v3, p0, Lc/e/a/b/h/b/sb;->d:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v1, v0, v2, v3}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/l;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_1

    .line 7
    :cond_2
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/h/b/sb;->e:Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lc/e/a/b/h/b/sb;->c:Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v2, p0, Lc/e/a/b/h/b/sb;->d:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v0, v1, v2}, Lc/e/a/b/h/b/l;->a(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p0, Lc/e/a/b/h/b/sb;->c:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-interface {v0, v1}, Lc/e/a/b/h/b/l;->a(Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lc/e/a/b/h/b/sb;->f:Lc/e/a/b/h/b/gb;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    .line 12
    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :goto_1
    iget-object v0, p0, Lc/e/a/b/h/b/sb;->f:Lc/e/a/b/h/b/gb;

    invoke-static {v0}, Lc/e/a/b/h/b/gb;->e(Lc/e/a/b/h/b/gb;)V

    return-void
.end method
