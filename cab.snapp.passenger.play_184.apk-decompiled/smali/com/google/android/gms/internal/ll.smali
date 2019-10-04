.class final Lcom/google/android/gms/internal/ll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ky;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ll;->a:Lcom/google/android/gms/internal/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ll;->a:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kw;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v1

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawp()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->d()V

    return-void
.end method
