.class public final Lc/e/a/b/d/a/a/L;
.super Lc/e/a/b/d/a/a/D;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/a/b/d/a/a/D;"
    }
.end annotation


# instance fields
.field public final b:Lc/e/a/b/d/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a/j<",
            "Lc/e/a/b/d/a/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/b/j/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/j/h<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final d:Lc/e/a/b/d/a/a/i;


# direct methods
.method public constructor <init>(ILc/e/a/b/d/a/a/j;Lc/e/a/b/j/h;Lc/e/a/b/d/a/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/e/a/b/d/a/a/j<",
            "Lc/e/a/b/d/a/a$b;",
            "TResultT;>;",
            "Lc/e/a/b/j/h<",
            "TResultT;>;",
            "Lc/e/a/b/d/a/a/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/d/a/a/D;-><init>(I)V

    .line 2
    iput-object p3, p0, Lc/e/a/b/d/a/a/L;->c:Lc/e/a/b/j/h;

    .line 3
    iput-object p2, p0, Lc/e/a/b/d/a/a/L;->b:Lc/e/a/b/d/a/a/j;

    .line 4
    iput-object p4, p0, Lc/e/a/b/d/a/a/L;->d:Lc/e/a/b/d/a/a/i;

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/b/d/a/a/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/d/a/a/L;->b:Lc/e/a/b/d/a/a/j;

    invoke-virtual {p1}, Lc/e/a/b/d/a/a/c$a;->f()Lc/e/a/b/d/a/a$f;

    move-result-object p1

    iget-object v1, p0, Lc/e/a/b/d/a/a/L;->c:Lc/e/a/b/j/h;

    invoke-virtual {v0, p1, v1}, Lc/e/a/b/d/a/a/j;->a(Lc/e/a/b/d/a/a$b;Lc/e/a/b/j/h;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/L;->a(Ljava/lang/RuntimeException;)V

    return-void

    :catch_1
    move-exception p1

    .line 3
    invoke-static {p1}, Lc/e/a/b/d/a/a/r;->b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/L;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    .line 4
    throw p1
.end method

.method public final a(Lc/e/a/b/d/a/a/m;Z)V
    .locals 1

    .line 7
    iget-object v0, p0, Lc/e/a/b/d/a/a/L;->c:Lc/e/a/b/j/h;

    invoke-virtual {p1, v0, p2}, Lc/e/a/b/d/a/a/m;->a(Lc/e/a/b/j/h;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lc/e/a/b/d/a/a/L;->c:Lc/e/a/b/j/h;

    iget-object v1, p0, Lc/e/a/b/d/a/a/L;->d:Lc/e/a/b/d/a/a/i;

    invoke-interface {v1, p1}, Lc/e/a/b/d/a/a/i;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/e/a/b/j/h;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/b/d/a/a/L;->c:Lc/e/a/b/j/h;

    invoke-virtual {v0, p1}, Lc/e/a/b/j/h;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Lc/e/a/b/d/a/a/c$a;)[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/c$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/e/a/b/d/a/a/L;->b:Lc/e/a/b/d/a/a/j;

    invoke-virtual {p1}, Lc/e/a/b/d/a/a/j;->b()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lc/e/a/b/d/a/a/c$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/c$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/e/a/b/d/a/a/L;->b:Lc/e/a/b/d/a/a/j;

    invoke-virtual {p1}, Lc/e/a/b/d/a/a/j;->a()Z

    move-result p1

    return p1
.end method
