.class public abstract Lcom/google/android/gms/internal/ps;
.super Lcom/google/android/gms/internal/or;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ps$e;,
        Lcom/google/android/gms/internal/ps$d;,
        Lcom/google/android/gms/internal/ps$b;,
        Lcom/google/android/gms/internal/ps$g;,
        Lcom/google/android/gms/internal/ps$c;,
        Lcom/google/android/gms/internal/ps$a;,
        Lcom/google/android/gms/internal/ps$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ps<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ps$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/or<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ps<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lcom/google/android/gms/internal/rv;

.field protected c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ps;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/or;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/rv;->zzczu()Lcom/google/android/gms/internal/rv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ps;->c:I

    return-void
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static final a(Lcom/google/android/gms/internal/ps;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ps<",
            "TT;*>;>(TT;)Z"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphe:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphc:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method static b(Lcom/google/android/gms/internal/ps;)Lcom/google/android/gms/internal/ps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ps<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/py;
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphi:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ps;

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphg:I

    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rv;->zzbiy()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/py;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/py;

    throw p0

    :cond_0
    throw p0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphk:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ps;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ps$b;->a:Lcom/google/android/gms/internal/ps$b;

    check-cast p1, Lcom/google/android/gms/internal/ps;

    sget v3, Lcom/google/android/gms/internal/ps$f;->zzphd:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-interface {v1, v3, p1}, Lcom/google/android/gms/internal/ps$g;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;
    :try_end_0
    .catch Lcom/google/android/gms/internal/pt; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ps;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ps;->a:I

    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ps$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ps$d;-><init>()V

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/ps$g;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    iget v0, v0, Lcom/google/android/gms/internal/ps$d;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ps;->a:I

    iget v0, p0, Lcom/google/android/gms/internal/ps;->a:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphe:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphc:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphf:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/qu;->a(Lcom/google/android/gms/internal/qr;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/ph;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/qz;->zzcyz()Lcom/google/android/gms/internal/qz;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qz;->zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/rf;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/pi;->zzb(Lcom/google/android/gms/internal/ph;)Lcom/google/android/gms/internal/pi;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/rf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/sn;)V

    return-void
.end method

.method public final zzcxm()Lcom/google/android/gms/internal/qx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/qx<",
            "TMessageType;>;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphl:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qx;

    return-object v0
.end method

.method public final synthetic zzcxp()Lcom/google/android/gms/internal/qs;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphj:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ps$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ps$a;->zza(Lcom/google/android/gms/internal/ps;)Lcom/google/android/gms/internal/ps$a;

    return-object v0
.end method

.method public final synthetic zzcxq()Lcom/google/android/gms/internal/qr;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphk:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ps;

    return-object v0
.end method

.method public zzho()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ps;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/qz;->zzcyz()Lcom/google/android/gms/internal/qz;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qz;->zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/rf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/rf;->zzcp(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ps;->c:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ps;->c:I

    return v0
.end method
