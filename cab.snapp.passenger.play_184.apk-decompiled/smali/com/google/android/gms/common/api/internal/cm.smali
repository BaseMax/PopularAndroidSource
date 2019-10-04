.class public final Lcom/google/android/gms/common/api/internal/cm;
.super Lcom/google/android/gms/common/api/internal/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cb<",
            "Lcom/google/android/gms/common/api/a$c;",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/g<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/internal/bx;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/c/g;Lcom/google/android/gms/common/api/internal/bx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/internal/cb<",
            "Lcom/google/android/gms/common/api/a$c;",
            "TTResult;>;",
            "Lcom/google/android/gms/c/g<",
            "TTResult;>;",
            "Lcom/google/android/gms/common/api/internal/bx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/a;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/cm;->b:Lcom/google/android/gms/c/g;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/cm;->a:Lcom/google/android/gms/common/api/internal/cb;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/cm;->c:Lcom/google/android/gms/common/api/internal/bx;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/internal/an;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/an<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cm;->a:Lcom/google/android/gms/common/api/internal/cb;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/an;->zzahp()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cm;->b:Lcom/google/android/gms/c/g;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/cb;->zza(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/c/g;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/a;->zzs(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_1
    move-exception p1

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cm;->b:Lcom/google/android/gms/c/g;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/e;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/c/g;->getTask()Lcom/google/android/gms/c/f;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/common/api/internal/g;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/api/internal/g;-><init>(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/c/g;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/c/f;->addOnCompleteListener(Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/f;

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cm;->b:Lcom/google/android/gms/c/g;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cm;->c:Lcom/google/android/gms/common/api/internal/bx;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/bx;->zzt(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/g;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
