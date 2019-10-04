.class final Lcom/google/android/gms/internal/lk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic b:Lcom/google/android/gms/internal/ky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ky;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lk;->b:Lcom/google/android/gms/internal/ky;

    iput-object p2, p0, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lk;->b:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawp()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lr;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
