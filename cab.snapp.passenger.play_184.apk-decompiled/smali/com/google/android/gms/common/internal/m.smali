.class public final Lcom/google/android/gms/common/internal/m;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0xf

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "log tag cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "tag \"%s\" is longer than the %d character maximum"

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/ap;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/m;->c:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/common/internal/m;->d:Ljava/lang/String;

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/m;->d:Ljava/lang/String;

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/m;->d:Ljava/lang/String;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final varargs zzb(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final varargs zzc(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final varargs zzd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final zzu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final zzw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method