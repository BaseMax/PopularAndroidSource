.class final Lcom/google/android/gms/common/api/internal/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic b:Lcom/google/android/gms/common/api/internal/at;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/at;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    const/4 v1, 0x1

    .line 1000
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/at;->c:Z

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/at;->a:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->zzaay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    .line 3000
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/at;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/at;->a:Lcom/google/android/gms/common/api/a$f;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/a$f;->zza(Lcom/google/android/gms/common/internal/o;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/at;->d:Lcom/google/android/gms/common/api/internal/al;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/al;->j(Lcom/google/android/gms/common/api/internal/al;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->b:Lcom/google/android/gms/common/api/internal/at;

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/at;->b:Lcom/google/android/gms/common/api/internal/cp;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/an;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/au;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/an;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
