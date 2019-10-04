.class final Lcom/google/android/gms/internal/ps$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ps$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/ps$b;

.field private static b:Lcom/google/android/gms/internal/pt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ps$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ps$b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ps$b;->a:Lcom/google/android/gms/internal/ps$b;

    new-instance v0, Lcom/google/android/gms/internal/pt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

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

    if-ne p1, p4, :cond_0

    cmpl-double p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(ZIZI)I
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(ZJZJ)J
    .locals 0

    if-ne p1, p4, :cond_0

    cmp-long p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(ZLcom/google/android/gms/internal/ou;ZLcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/ou;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ou;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/pw;Lcom/google/android/gms/internal/pw;)Lcom/google/android/gms/internal/pw;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/px;Lcom/google/android/gms/internal/px;)Lcom/google/android/gms/internal/px;
    .locals 0
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

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ql;Lcom/google/android/gms/internal/ql;)Lcom/google/android/gms/internal/ql;
    .locals 0
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

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ql;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/qr;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ps;

    if-eq v0, p2, :cond_1

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphk:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ps;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/ps;

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphd:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    iget-object p2, p2, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-interface {p0, v1, p2}, Lcom/google/android/gms/internal/ps$g;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;

    move-result-object p2

    iput-object p2, v0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    :cond_1
    return-object p1

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/rv;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zza(ZZZZ)Z
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zzb(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zzc(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zzd(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zzdf(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zze(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zzf(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method

.method public final zzg(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ps;

    check-cast p3, Lcom/google/android/gms/internal/qr;

    const/4 v0, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphk:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ps;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p3, Lcom/google/android/gms/internal/ps;

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphd:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    iget-object p3, p3, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-interface {p0, v1, p3}, Lcom/google/android/gms/internal/ps$g;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    :goto_0
    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ps$b;->b:Lcom/google/android/gms/internal/pt;

    throw p1
.end method
