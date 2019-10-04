.class public final Lcom/google/android/gms/c/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/w<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/c/w;

    invoke-direct {v0}, Lcom/google/android/gms/c/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/g;->a:Lcom/google/android/gms/c/w;

    return-void
.end method


# virtual methods
.method public final getTask()Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/g;->a:Lcom/google/android/gms/c/w;

    return-object v0
.end method

.method public final setException(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/g;->a:Lcom/google/android/gms/c/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/w;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/g;->a:Lcom/google/android/gms/c/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/w;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final trySetException(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/g;->a:Lcom/google/android/gms/c/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/w;->trySetException(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public final trySetResult(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/g;->a:Lcom/google/android/gms/c/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/w;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
