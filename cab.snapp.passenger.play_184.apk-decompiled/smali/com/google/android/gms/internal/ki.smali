.class final Lcom/google/android/gms/internal/ki;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/mz;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzcgi;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/google/android/gms/internal/kc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/zzcgi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ki;->d:Lcom/google/android/gms/internal/kc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/zzcgi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ki;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ki;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->d:Lcom/google/android/gms/internal/kc;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->d:Lcom/google/android/gms/internal/kc;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzaws()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/zzcgi;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ki;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ki;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/id;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
