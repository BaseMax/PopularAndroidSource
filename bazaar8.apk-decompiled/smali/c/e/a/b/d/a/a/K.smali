.class public abstract Lc/e/a/b/d/a/a/K;
.super Lc/e/a/b/d/a/a/D;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/a/b/d/a/a/D;"
    }
.end annotation


# instance fields
.field public final b:Lc/e/a/b/j/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/j/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILc/e/a/b/j/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/e/a/b/j/h<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/d/a/a/D;-><init>(I)V

    .line 2
    iput-object p2, p0, Lc/e/a/b/d/a/a/K;->b:Lc/e/a/b/j/h;

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/b/d/a/a/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/K;->d(Lc/e/a/b/d/a/a/c$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/K;->a(Ljava/lang/RuntimeException;)V

    return-void

    :catch_1
    move-exception p1

    .line 5
    invoke-static {p1}, Lc/e/a/b/d/a/a/r;->b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/K;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    .line 6
    invoke-static {p1}, Lc/e/a/b/d/a/a/r;->b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/e/a/b/d/a/a/K;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 7
    throw p1
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/K;->b:Lc/e/a/b/j/h;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lc/e/a/b/j/h;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public a(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/K;->b:Lc/e/a/b/j/h;

    invoke-virtual {v0, p1}, Lc/e/a/b/j/h;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public abstract d(Lc/e/a/b/d/a/a/c$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/c$a<",
            "*>;)V"
        }
    .end annotation
.end method
