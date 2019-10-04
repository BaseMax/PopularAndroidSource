.class final Lcom/google/android/gms/internal/le;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/google/android/gms/internal/ky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ky;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/le;->b:Lcom/google/android/gms/internal/ky;

    iput-wide p2, p0, Lcom/google/android/gms/internal/le;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/le;->b:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawz()Lcom/google/android/gms/internal/jj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jj;->zzjde:Lcom/google/android/gms/internal/jl;

    iget-wide v1, p0, Lcom/google/android/gms/internal/le;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jl;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/le;->b:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazi()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/le;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Minimum session duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/jb;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
