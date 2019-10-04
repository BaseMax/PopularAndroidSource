.class public abstract Lcom/google/android/gms/common/api/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/m;",
        "S::",
        "Lcom/google/android/gms/common/api/m;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/br;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/br;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public onFailure(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method public abstract onSuccess(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/google/android/gms/common/api/h<",
            "TS;>;"
        }
    .end annotation
.end method
