.class final Lcom/google/android/gms/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/c/f;

.field private synthetic b:Lcom/google/android/gms/c/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/n;Lcom/google/android/gms/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/o;->b:Lcom/google/android/gms/c/n;

    iput-object p2, p0, Lcom/google/android/gms/c/o;->a:Lcom/google/android/gms/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/o;->b:Lcom/google/android/gms/c/n;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/c/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/c/o;->b:Lcom/google/android/gms/c/n;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/c/n;->b:Lcom/google/android/gms/c/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/o;->b:Lcom/google/android/gms/c/n;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/c/n;->b:Lcom/google/android/gms/c/b;

    iget-object v2, p0, Lcom/google/android/gms/c/o;->a:Lcom/google/android/gms/c/f;

    invoke-interface {v1, v2}, Lcom/google/android/gms/c/b;->onComplete(Lcom/google/android/gms/c/f;)V

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
