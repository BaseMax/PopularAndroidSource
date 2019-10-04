.class final Lcom/google/android/gms/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/c/f;

.field private synthetic b:Lcom/google/android/gms/c/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/l;Lcom/google/android/gms/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/m;->b:Lcom/google/android/gms/c/l;

    iput-object p2, p0, Lcom/google/android/gms/c/m;->a:Lcom/google/android/gms/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/m;->b:Lcom/google/android/gms/c/l;

    invoke-static {v0}, Lcom/google/android/gms/c/l;->a(Lcom/google/android/gms/c/l;)Lcom/google/android/gms/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/m;->a:Lcom/google/android/gms/c/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/a;->then(Lcom/google/android/gms/c/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/f;
    :try_end_0
    .catch Lcom/google/android/gms/c/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/m;->b:Lcom/google/android/gms/c/l;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/l;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/c/h;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/c/m;->b:Lcom/google/android/gms/c/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/f;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/d;)Lcom/google/android/gms/c/f;

    sget-object v1, Lcom/google/android/gms/c/h;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/c/m;->b:Lcom/google/android/gms/c/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/f;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/f;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/m;->b:Lcom/google/android/gms/c/l;

    invoke-static {v1}, Lcom/google/android/gms/c/l;->b(Lcom/google/android/gms/c/l;)Lcom/google/android/gms/c/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/w;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/e;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/c/m;->b:Lcom/google/android/gms/c/l;

    invoke-static {v1}, Lcom/google/android/gms/c/l;->b(Lcom/google/android/gms/c/l;)Lcom/google/android/gms/c/w;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/c/e;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/w;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/c/m;->b:Lcom/google/android/gms/c/l;

    invoke-static {v1}, Lcom/google/android/gms/c/l;->b(Lcom/google/android/gms/c/l;)Lcom/google/android/gms/c/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/w;->setException(Ljava/lang/Exception;)V

    return-void
.end method
