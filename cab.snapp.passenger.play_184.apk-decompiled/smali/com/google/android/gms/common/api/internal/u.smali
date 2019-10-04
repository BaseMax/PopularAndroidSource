.class final Lcom/google/android/gms/common/api/internal/u;
.super Lcom/google/android/gms/common/api/internal/ai;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/internal/m;

.field private synthetic b:Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ag;Lcom/google/android/gms/common/api/internal/m;Lcom/google/android/gms/internal/zzcxq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/m;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/u;->b:Lcom/google/android/gms/internal/zzcxq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/ai;-><init>(Lcom/google/android/gms/common/api/internal/ag;)V

    return-void
.end method


# virtual methods
.method public final zzaib()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->a:Lcom/google/android/gms/common/api/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->b:Lcom/google/android/gms/internal/zzcxq;

    const/4 v2, 0x0

    .line 2000
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcxq;->zzahf()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcxq;->zzbdi()Lcom/google/android/gms/common/internal/zzbt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzbt;->zzahf()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GoogleApiClientConnecting"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/m;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/m;->g:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzbt;->zzalp()Lcom/google/android/gms/common/internal/o;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/m;->h:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzbt;->zzalq()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/m;->i:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzbt;->zzalr()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/m;->j:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/m;->b()V

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/m;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/m;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/m;->b()V

    return-void

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/m;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_3
    return-void
.end method
