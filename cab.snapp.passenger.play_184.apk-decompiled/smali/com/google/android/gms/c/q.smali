.class final Lcom/google/android/gms/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/c/f;

.field private synthetic b:Lcom/google/android/gms/c/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/p;Lcom/google/android/gms/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/q;->b:Lcom/google/android/gms/c/p;

    iput-object p2, p0, Lcom/google/android/gms/c/q;->a:Lcom/google/android/gms/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/q;->b:Lcom/google/android/gms/c/p;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/c/p;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/c/q;->b:Lcom/google/android/gms/c/p;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/c/p;->b:Lcom/google/android/gms/c/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/q;->b:Lcom/google/android/gms/c/p;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/c/p;->b:Lcom/google/android/gms/c/c;

    iget-object v2, p0, Lcom/google/android/gms/c/q;->a:Lcom/google/android/gms/c/f;

    invoke-virtual {v2}, Lcom/google/android/gms/c/f;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/c/c;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
