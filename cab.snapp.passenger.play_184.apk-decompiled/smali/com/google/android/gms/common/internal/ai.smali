.class public final Lcom/google/android/gms/common/internal/ai;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/aj;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/aj;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ai;->a:Lcom/google/android/gms/common/internal/ao;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/m;",
            "T:",
            "Lcom/google/android/gms/common/api/l<",
            "TR;>;>(",
            "Lcom/google/android/gms/common/api/h<",
            "TR;>;TT;)",
            "Lcom/google/android/gms/c/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/al;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/al;-><init>(Lcom/google/android/gms/common/api/l;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ai;->zza(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/internal/an;)Lcom/google/android/gms/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/internal/an;)Lcom/google/android/gms/c/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/m;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/h<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/an<",
            "TR;TT;>;)",
            "Lcom/google/android/gms/c/f<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/ai;->a:Lcom/google/android/gms/common/internal/ao;

    new-instance v1, Lcom/google/android/gms/c/g;

    invoke-direct {v1}, Lcom/google/android/gms/c/g;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/internal/ak;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/ak;-><init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/c/g;Lcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/h;->zza(Lcom/google/android/gms/common/api/h$a;)V

    invoke-virtual {v1}, Lcom/google/android/gms/c/g;->getTask()Lcom/google/android/gms/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/m;",
            ">(",
            "Lcom/google/android/gms/common/api/h<",
            "TR;>;)",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/am;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/am;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ai;->zza(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/internal/an;)Lcom/google/android/gms/c/f;

    move-result-object p0

    return-object p0
.end method
