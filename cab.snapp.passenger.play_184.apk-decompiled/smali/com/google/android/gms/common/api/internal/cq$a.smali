.class final Lcom/google/android/gms/common/api/internal/cq$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/internal/cq;

.field public final zzfny:I

.field public final zzfnz:Lcom/google/android/gms/common/api/f;

.field public final zzfoa:Lcom/google/android/gms/common/api/f$c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/cq;ILcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/f$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cq$a;->a:Lcom/google/android/gms/common/api/internal/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/internal/cq$a;->zzfny:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/cq$a;->zzfnz:Lcom/google/android/gms/common/api/f;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/cq$a;->zzfoa:Lcom/google/android/gms/common/api/f$c;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/f;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/f$c;)V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "beginFailureResolution for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cq$a;->a:Lcom/google/android/gms/common/api/internal/cq;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/cq$a;->zzfny:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/cw;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
