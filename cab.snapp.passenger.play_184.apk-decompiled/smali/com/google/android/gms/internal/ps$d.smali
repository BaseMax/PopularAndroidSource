.class final Lcom/google/android/gms/internal/ps$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ps$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-void
.end method


# virtual methods
.method public final zza(ZDZD)D
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p4

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/pu;->zzde(J)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-wide p2
.end method

.method public final zza(ZIZI)I
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return p2
.end method

.method public final zza(ZJZJ)J
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/pu;->zzde(J)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-wide p2
.end method

.method public final zza(ZLcom/google/android/gms/internal/ou;ZLcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/ou;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ou;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/pw;Lcom/google/android/gms/internal/pw;)Lcom/google/android/gms/internal/pw;
    .locals 1

    iget p2, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/px;Lcom/google/android/gms/internal/px;)Lcom/google/android/gms/internal/px;
    .locals 1
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

    iget p2, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p1
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

    iget p2, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ql;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/qr;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    instance-of p2, p1, Lcom/google/android/gms/internal/ps;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ps;

    iget v0, p2, Lcom/google/android/gms/internal/ps;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphd:I

    iget-object v1, p2, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    iget-object v2, p2, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/ps$g;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    iget v1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    iput v1, p2, Lcom/google/android/gms/internal/ps;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    :cond_0
    iget p2, p2, Lcom/google/android/gms/internal/ps;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 p2, 0x25

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 v0, v0, 0x35

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;
    .locals 1

    iget p2, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/rv;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p1
.end method

.method public final zza(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p3}, Lcom/google/android/gms/internal/pu;->zzdg(Z)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p2
.end method

.method public final zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p2
.end method

.method public final zza(ZZZZ)Z
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Lcom/google/android/gms/internal/pu;->zzdg(Z)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return p2
.end method

.method public final zzb(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p2
.end method

.method public final zzc(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pu;->zzde(J)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p2
.end method

.method public final zzd(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pu;->zzde(J)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p2
.end method

.method public final zzdf(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final zze(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p2
.end method

.method public final zzf(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ps$d;->a:I

    return-object p2
.end method

.method public final zzg(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/qr;

    check-cast p3, Lcom/google/android/gms/internal/qr;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ps$d;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    return-object p1
.end method
