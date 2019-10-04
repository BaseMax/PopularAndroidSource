.class public final Lcom/google/android/gms/common/api/internal/db;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# instance fields
.field private final a:Z

.field private b:Lcom/google/android/gms/common/api/internal/dc;

.field public final zzfin:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/db;->zzfin:Lcom/google/android/gms/common/api/a;

    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/db;->a:Z

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/db;->b:Lcom/google/android/gms/common/api/internal/dc;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/db;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/db;->b:Lcom/google/android/gms/common/api/internal/dc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/dc;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/db;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/db;->b:Lcom/google/android/gms/common/api/internal/dc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/db;->zzfin:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/db;->a:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/dc;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/db;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/db;->b:Lcom/google/android/gms/common/api/internal/dc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/dc;->onConnectionSuspended(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/dc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/db;->b:Lcom/google/android/gms/common/api/internal/dc;

    return-void
.end method
