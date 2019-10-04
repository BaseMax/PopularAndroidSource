.class final Lcom/google/android/gms/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/c/f;

.field private synthetic b:Lcom/google/android/gms/c/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/j;Lcom/google/android/gms/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/k;->b:Lcom/google/android/gms/c/j;

    iput-object p2, p0, Lcom/google/android/gms/c/k;->a:Lcom/google/android/gms/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/k;->b:Lcom/google/android/gms/c/j;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/c/j;->a:Lcom/google/android/gms/c/a;

    iget-object v1, p0, Lcom/google/android/gms/c/k;->a:Lcom/google/android/gms/c/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/a;->then(Lcom/google/android/gms/c/f;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/c/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4000
    iget-object v1, p0, Lcom/google/android/gms/c/k;->b:Lcom/google/android/gms/c/j;

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/c/j;->b:Lcom/google/android/gms/c/w;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/w;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 3000
    iget-object v1, p0, Lcom/google/android/gms/c/k;->b:Lcom/google/android/gms/c/j;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/c/j;->b:Lcom/google/android/gms/c/w;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/w;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/c/e;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/k;->b:Lcom/google/android/gms/c/j;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/c/j;->b:Lcom/google/android/gms/c/w;

    invoke-virtual {v0}, Lcom/google/android/gms/c/e;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/w;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/c/k;->b:Lcom/google/android/gms/c/j;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/c/j;->b:Lcom/google/android/gms/c/w;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/w;->setException(Ljava/lang/Exception;)V

    return-void
.end method
