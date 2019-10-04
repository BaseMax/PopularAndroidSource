.class final Lcom/google/android/gms/internal/ms;
.super Lcom/google/android/gms/internal/ih;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/mq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mq;Lcom/google/android/gms/internal/jx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ms;->a:Lcom/google/android/gms/internal/mq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ih;-><init>(Lcom/google/android/gms/internal/jx;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ms;->a:Lcom/google/android/gms/internal/mq;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mq;->zzbs(Z)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawk()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hu;->zzaj(J)V

    return-void
.end method
