.class final Lcom/google/android/gms/internal/ma;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Z

.field private synthetic c:Lcom/google/android/gms/internal/zzcgl;

.field private synthetic d:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic e:Lcom/google/android/gms/internal/zzcgl;

.field private synthetic f:Lcom/google/android/gms/internal/lr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lr;ZLcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;Lcom/google/android/gms/internal/zzcgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ma;->f:Lcom/google/android/gms/internal/lr;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ma;->a:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ma;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ma;->c:Lcom/google/android/gms/internal/zzcgl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ma;->d:Lcom/google/android/gms/internal/zzcgi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ma;->e:Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ma;->f:Lcom/google/android/gms/internal/lr;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ir;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ma;->f:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ma;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->f:Lcom/google/android/gms/internal/lr;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ma;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ma;->c:Lcom/google/android/gms/internal/zzcgl;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ma;->d:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/lr;->a(Lcom/google/android/gms/internal/ir;Lcom/google/android/gms/internal/zzbfm;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->e:Lcom/google/android/gms/internal/zzcgl;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->c:Lcom/google/android/gms/internal/zzcgl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ma;->d:Lcom/google/android/gms/internal/zzcgi;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ir;->zza(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->c:Lcom/google/android/gms/internal/zzcgl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ir;->zzb(Lcom/google/android/gms/internal/zzcgl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ma;->f:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ma;->f:Lcom/google/android/gms/internal/lr;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->f()V

    return-void
.end method
