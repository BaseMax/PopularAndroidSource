.class public final Lcom/google/android/gms/internal/ps$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ps$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final zzphb:Lcom/google/android/gms/internal/ps$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ps$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ps$e;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ps$e;->zzphb:Lcom/google/android/gms/internal/ps$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZDZD)D
    .locals 0

    if-eqz p4, :cond_0

    return-wide p5

    :cond_0
    return-wide p2
.end method

.method public final zza(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method

.method public final zza(ZJZJ)J
    .locals 0

    if-eqz p4, :cond_0

    return-wide p5

    :cond_0
    return-wide p2
.end method

.method public final zza(ZLcom/google/android/gms/internal/ou;ZLcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/ou;
    .locals 0

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/pw;Lcom/google/android/gms/internal/pw;)Lcom/google/android/gms/internal/pw;
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/pw;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/pw;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/pw;->zzcvi()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/pw;->zzlu(I)Lcom/google/android/gms/internal/pw;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/pw;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/px;Lcom/google/android/gms/internal/px;)Lcom/google/android/gms/internal/px;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/px<",
            "TT;>;",
            "Lcom/google/android/gms/internal/px<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/px<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/px;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/px;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/px;->zzcvi()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/px;->zzly(I)Lcom/google/android/gms/internal/px;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/px;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/ql;Lcom/google/android/gms/internal/ql;)Lcom/google/android/gms/internal/ql;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ql<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/ql<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/ql<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ql;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ql;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ql;->zzcyq()Lcom/google/android/gms/internal/ql;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ql;->zza(Lcom/google/android/gms/internal/ql;)V

    :cond_1
    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/qr;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/qr;->zzcxp()Lcom/google/android/gms/internal/qs;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/qs;->zzd(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qs;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/qs;->zzcxv()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/rv;->zzczu()Lcom/google/android/gms/internal/rv;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/rv;->a(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    return-object p2
.end method

.method public final zza(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method

.method public final zzb(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzc(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzd(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzdf(Z)V
    .locals 0

    return-void
.end method

.method public final zze(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzf(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public final zzg(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/qr;

    check-cast p3, Lcom/google/android/gms/internal/qr;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ps$e;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method
