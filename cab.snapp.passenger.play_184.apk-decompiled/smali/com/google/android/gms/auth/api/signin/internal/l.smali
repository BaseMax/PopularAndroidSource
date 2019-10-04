.class abstract Lcom/google/android/gms/auth/api/signin/internal/l;
.super Lcom/google/android/gms/common/api/internal/cu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/m;",
        ">",
        "Lcom/google/android/gms/common/api/internal/cu<",
        "TR;",
        "Lcom/google/android/gms/auth/api/signin/internal/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/f;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/a;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/cu;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/m;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/cu;->setResult(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
