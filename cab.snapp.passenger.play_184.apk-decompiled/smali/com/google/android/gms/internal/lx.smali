.class final Lcom/google/android/gms/internal/lx;
.super Lcom/google/android/gms/internal/ih;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/lr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/jx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lx;->a:Lcom/google/android/gms/internal/lr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ih;-><init>(Lcom/google/android/gms/internal/jx;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lx;->a:Lcom/google/android/gms/internal/lr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazf()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    return-void
.end method
