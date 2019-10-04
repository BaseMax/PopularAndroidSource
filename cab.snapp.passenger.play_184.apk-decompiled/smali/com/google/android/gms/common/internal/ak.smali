.class final Lcom/google/android/gms/common/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/h$a;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/h;

.field private synthetic b:Lcom/google/android/gms/c/g;

.field private synthetic c:Lcom/google/android/gms/common/internal/an;

.field private synthetic d:Lcom/google/android/gms/common/internal/ao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/c/g;Lcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ak;->a:Lcom/google/android/gms/common/api/h;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ak;->b:Lcom/google/android/gms/c/g;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ak;->c:Lcom/google/android/gms/common/internal/an;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ak;->d:Lcom/google/android/gms/common/internal/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ak;->a:Lcom/google/android/gms/common/api/h;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/h;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/m;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ak;->b:Lcom/google/android/gms/c/g;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ak;->c:Lcom/google/android/gms/common/internal/an;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/an;->zzb(Lcom/google/android/gms/common/api/m;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/g;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ak;->b:Lcom/google/android/gms/c/g;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ak;->d:Lcom/google/android/gms/common/internal/ao;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/ao;->zzz(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/g;->setException(Ljava/lang/Exception;)V

    return-void
.end method
