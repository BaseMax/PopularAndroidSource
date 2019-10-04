.class final Lcom/google/android/gms/internal/md;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/android/gms/internal/zzcln;

.field private synthetic c:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic d:Lcom/google/android/gms/internal/lr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lr;ZLcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/md;->d:Lcom/google/android/gms/internal/lr;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/md;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/md;->b:Lcom/google/android/gms/internal/zzcln;

    iput-object p4, p0, Lcom/google/android/gms/internal/md;->c:Lcom/google/android/gms/internal/zzcgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/md;->d:Lcom/google/android/gms/internal/lr;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ir;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/md;->d:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazd()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/md;->d:Lcom/google/android/gms/internal/lr;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/md;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/md;->b:Lcom/google/android/gms/internal/zzcln;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/md;->c:Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/lr;->a(Lcom/google/android/gms/internal/ir;Lcom/google/android/gms/internal/zzbfm;Lcom/google/android/gms/internal/zzcgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/md;->d:Lcom/google/android/gms/internal/lr;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->f()V

    return-void
.end method
