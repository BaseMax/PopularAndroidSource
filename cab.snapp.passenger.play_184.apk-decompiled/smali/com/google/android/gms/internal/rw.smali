.class final Lcom/google/android/gms/internal/rw;
.super Lcom/google/android/gms/internal/ru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ru<",
        "Lcom/google/android/gms/internal/rv;",
        "Lcom/google/android/gms/internal/rv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ru;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ps;

    iget-object p1, p1, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    return-object p1
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/sn;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/rv;

    .line 1000
    invoke-interface {p2}, Lcom/google/android/gms/internal/sn;->zzcwv()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzpho:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/rv;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/rv;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p1, Lcom/google/android/gms/internal/rv;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/sn;->zzb(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Lcom/google/android/gms/internal/rv;->a:I

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/rv;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p1, Lcom/google/android/gms/internal/rv;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/sn;->zzb(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/rv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/rv;->zzczw()I

    move-result p1

    return p1
.end method
