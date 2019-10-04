.class final Lcom/google/android/gms/common/internal/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/an;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/an<",
        "TR;TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->a:Lcom/google/android/gms/common/api/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/m;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Lcom/google/android/gms/common/api/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/l;->setResult(Lcom/google/android/gms/common/api/m;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->a:Lcom/google/android/gms/common/api/l;

    return-object p1
.end method
