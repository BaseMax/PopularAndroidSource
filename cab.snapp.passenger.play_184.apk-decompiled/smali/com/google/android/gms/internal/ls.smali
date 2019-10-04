.class final Lcom/google/android/gms/internal/ls;
.super Lcom/google/android/gms/internal/ih;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/lr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/jx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ls;->a:Lcom/google/android/gms/internal/lr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ih;-><init>(Lcom/google/android/gms/internal/jx;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->a:Lcom/google/android/gms/internal/lr;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Inactivity, disconnecting from the service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->disconnect()V

    :cond_0
    return-void
.end method
