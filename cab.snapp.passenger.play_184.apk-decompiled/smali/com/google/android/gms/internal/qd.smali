.class public Lcom/google/android/gms/internal/qd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/pk;


# instance fields
.field private b:Lcom/google/android/gms/internal/ou;

.field private volatile c:Lcom/google/android/gms/internal/qr;

.field private volatile d:Lcom/google/android/gms/internal/ou;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/pk;->zzcxb()Lcom/google/android/gms/internal/pk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/qd;->a:Lcom/google/android/gms/internal/pk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    sget-object v0, Lcom/google/android/gms/internal/ou;->zzpfg:Lcom/google/android/gms/internal/ou;

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;
    :try_end_1
    .catch Lcom/google/android/gms/internal/py; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    sget-object p1, Lcom/google/android/gms/internal/ou;->zzpfg:Lcom/google/android/gms/internal/ou;

    iput-object p1, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/qd;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/qd;

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    iget-object v1, p1, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qd;->toByteString()Lcom/google/android/gms/internal/ou;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->toByteString()Lcom/google/android/gms/internal/ou;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ou;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/qr;->zzcxq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/qd;->a(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/qr;->zzcxq()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qd;->a(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toByteString()Lcom/google/android/gms/internal/ou;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ou;->zzpfg:Lcom/google/android/gms/internal/ou;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qr;->toByteString()Lcom/google/android/gms/internal/ou;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final zzho()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qr;->zzho()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/qd;->b:Lcom/google/android/gms/internal/ou;

    iput-object v1, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/ou;

    iput-object p1, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/qr;

    return-object v0
.end method
