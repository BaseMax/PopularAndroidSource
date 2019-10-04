.class final Lcom/google/android/gms/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/c;
.implements Lcom/google/android/gms/c/d;
.implements Lcom/google/android/gms/c/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/c;",
        "Lcom/google/android/gms/c/d<",
        "TTContinuationResult;>;",
        "Lcom/google/android/gms/c/t<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/a<",
            "TTResult;",
            "Lcom/google/android/gms/c/f<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/c/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/w<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;Lcom/google/android/gms/c/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/a<",
            "TTResult;",
            "Lcom/google/android/gms/c/f<",
            "TTContinuationResult;>;>;",
            "Lcom/google/android/gms/c/w<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/l;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/c/l;->b:Lcom/google/android/gms/c/a;

    iput-object p3, p0, Lcom/google/android/gms/c/l;->c:Lcom/google/android/gms/c/w;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/l;)Lcom/google/android/gms/c/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/c/l;->b:Lcom/google/android/gms/c/a;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/c/l;)Lcom/google/android/gms/c/w;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/c/l;->c:Lcom/google/android/gms/c/w;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final onComplete(Lcom/google/android/gms/c/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/l;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/c/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/m;-><init>(Lcom/google/android/gms/c/l;Lcom/google/android/gms/c/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/l;->c:Lcom/google/android/gms/c/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/w;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/l;->c:Lcom/google/android/gms/c/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/w;->setResult(Ljava/lang/Object;)V

    return-void
.end method
