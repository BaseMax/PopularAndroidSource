.class final Lcom/google/android/gms/internal/li;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic b:Z

.field private synthetic c:Lcom/google/android/gms/internal/ky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ky;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/li;->c:Lcom/google/android/gms/internal/ky;

    iput-object p2, p0, Lcom/google/android/gms/internal/li;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/li;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/li;->c:Lcom/google/android/gms/internal/ky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawp()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/li;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/li;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lr;->a(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
