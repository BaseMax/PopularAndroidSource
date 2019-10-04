.class public abstract Lc/e/a/b/g/f/nb;
.super Lc/e/a/b/g/f/Ca;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/nb$b;,
        Lc/e/a/b/g/f/nb$d;,
        Lc/e/a/b/g/f/nb$c;,
        Lc/e/a/b/g/f/nb$a;,
        Lc/e/a/b/g/f/nb$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/e/a/b/g/f/nb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lc/e/a/b/g/f/nb$a<",
        "TMessageType;TBuilderType;>;>",
        "Lc/e/a/b/g/f/Ca<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field public static zzagp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lc/e/a/b/g/f/nb<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public zzagn:Lc/e/a/b/g/f/Ac;

.field public zzago:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/nb;->zzagp:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Ca;-><init>()V

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/Ac;->c()Lc/e/a/b/g/f/Ac;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc/e/a/b/g/f/nb;->zzago:I

    return-void
.end method

.method public static a(Lc/e/a/b/g/f/nb;Lc/e/a/b/g/f/Ua;Lc/e/a/b/g/f/cb;)Lc/e/a/b/g/f/nb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/nb<",
            "TT;*>;>(TT;",
            "Lc/e/a/b/g/f/Ua;",
            "Lc/e/a/b/g/f/cb;",
            ")TT;"
        }
    .end annotation

    .line 36
    sget v0, Lc/e/a/b/g/f/nb$e;->d:I

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 38
    check-cast p0, Lc/e/a/b/g/f/nb;

    .line 39
    :try_start_0
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lc/e/a/b/g/f/Xa;->a(Lc/e/a/b/g/f/Ua;)Lc/e/a/b/g/f/Xa;

    move-result-object p1

    .line 41
    invoke-interface {v0, p0, p1, p2}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/gc;Lc/e/a/b/g/f/cb;)V

    .line 42
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzfh;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfh;

    throw p0

    .line 45
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/zzfh;

    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfh;

    throw p0

    .line 48
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/zzfh;->a(Lc/e/a/b/g/f/Sb;)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0
.end method

.method public static a(Lc/e/a/b/g/f/nb;[BIILc/e/a/b/g/f/cb;)Lc/e/a/b/g/f/nb;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/nb<",
            "TT;*>;>(TT;[BII",
            "Lc/e/a/b/g/f/cb;",
            ")TT;"
        }
    .end annotation

    .line 49
    sget p2, Lc/e/a/b/g/f/nb$e;->d:I

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p2, v0, v0}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 51
    check-cast p0, Lc/e/a/b/g/f/nb;

    .line 52
    :try_start_0
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object p2

    invoke-virtual {p2, p0}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lc/e/a/b/g/f/Ia;

    invoke-direct {v5, p4}, Lc/e/a/b/g/f/Ia;-><init>(Lc/e/a/b/g/f/cb;)V

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;[BIILc/e/a/b/g/f/Ia;)V

    .line 53
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb;->i()V

    .line 54
    iget p1, p0, Lc/e/a/b/g/f/Ca;->zzabm:I

    if-nez p1, :cond_0

    return-object p0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzfh;->a(Lc/e/a/b/g/f/Sb;)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/zzfh;

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfh;

    throw p0

    .line 59
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/zzfh;->a(Lc/e/a/b/g/f/Sb;)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0
.end method

.method public static a(Lc/e/a/b/g/f/nb;[BLc/e/a/b/g/f/cb;)Lc/e/a/b/g/f/nb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/nb<",
            "TT;*>;>(TT;[B",
            "Lc/e/a/b/g/f/cb;",
            ")TT;"
        }
    .end annotation

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, p1, v1, v0, p2}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/nb;[BIILc/e/a/b/g/f/cb;)Lc/e/a/b/g/f/nb;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lc/e/a/b/g/f/Sb;)V

    .line 64
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/zzfh;->a(Lc/e/a/b/g/f/Sb;)Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lc/e/a/b/g/f/nb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/nb<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 6
    sget-object v0, Lc/e/a/b/g/f/nb;->zzagp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/nb;

    if-nez v0, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget-object v0, Lc/e/a/b/g/f/nb;->zzagp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/nb;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 10
    invoke-static {p0}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/nb;

    .line 11
    sget v1, Lc/e/a/b/g/f/nb$e;->f:I

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v2}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lc/e/a/b/g/f/nb;

    if-eqz v0, :cond_1

    .line 14
    sget-object v1, Lc/e/a/b/g/f/nb;->zzagp:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static a(Lc/e/a/b/g/f/ub;)Lc/e/a/b/g/f/ub;
    .locals 1

    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 33
    :goto_0
    invoke-interface {p0, v0}, Lc/e/a/b/g/f/ub;->b(I)Lc/e/a/b/g/f/ub;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/e/a/b/g/f/vb;)Lc/e/a/b/g/f/vb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/g/f/vb<",
            "TE;>;)",
            "Lc/e/a/b/g/f/vb<",
            "TE;>;"
        }
    .end annotation

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 35
    :goto_0
    invoke-interface {p0, v0}, Lc/e/a/b/g/f/vb;->c(I)Lc/e/a/b/g/f/vb;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 17
    new-instance v0, Lc/e/a/b/g/f/fc;

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/g/f/fc;-><init>(Lc/e/a/b/g/f/Sb;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 20
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 21
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 22
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 24
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/Class;Lc/e/a/b/g/f/nb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/nb<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 16
    sget-object v0, Lc/e/a/b/g/f/nb;->zzagp:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lc/e/a/b/g/f/nb;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/nb<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 26
    sget v0, Lc/e/a/b/g/f/nb$e;->a:I

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_1
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    invoke-interface {v0, p0}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 30
    sget p1, Lc/e/a/b/g/f/nb$e;->b:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 31
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static m()Lc/e/a/b/g/f/ub;
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/Hb;->b()Lc/e/a/b/g/f/Hb;

    move-result-object v0

    return-object v0
.end method

.method public static p()Lc/e/a/b/g/f/vb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/e/a/b/g/f/vb<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/ec;->b()Lc/e/a/b/g/f/ec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lc/e/a/b/g/f/Sb;
    .locals 2

    .line 66
    sget v0, Lc/e/a/b/g/f/nb$e;->f:I

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Lc/e/a/b/g/f/nb;

    return-object v0
.end method

.method public abstract a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/b/g/f/nb;->zzago:I

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzeg;)V
    .locals 2

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Class;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lc/e/a/b/g/f/Za;->a(Lcom/google/android/gms/internal/measurement/zzeg;)Lc/e/a/b/g/f/Za;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/nb;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic c()Lc/e/a/b/g/f/Tb;
    .locals 2

    .line 1
    sget v0, Lc/e/a/b/g/f/nb$e;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lc/e/a/b/g/f/nb$a;

    return-object v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/nb;->zzago:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    invoke-interface {v0, p0}, Lc/e/a/b/g/f/hc;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iput v0, p0, Lc/e/a/b/g/f/nb;->zzago:I

    .line 4
    :cond_0
    iget v0, p0, Lc/e/a/b/g/f/nb;->zzago:I

    return v0
.end method

.method public final synthetic e()Lc/e/a/b/g/f/Tb;
    .locals 2

    .line 1
    sget v0, Lc/e/a/b/g/f/nb$e;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lc/e/a/b/g/f/nb$a;

    .line 4
    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/nb$a;->a(Lc/e/a/b/g/f/nb;)Lc/e/a/b/g/f/nb$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    sget v0, Lc/e/a/b/g/f/nb$e;->f:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lc/e/a/b/g/f/nb;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    check-cast p1, Lc/e/a/b/g/f/nb;

    invoke-interface {v0, p0, p1}, Lc/e/a/b/g/f/hc;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/nb;->zzago:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/Ca;->zzabm:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    invoke-interface {v0, p0}, Lc/e/a/b/g/f/hc;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lc/e/a/b/g/f/Ca;->zzabm:I

    .line 3
    iget v0, p0, Lc/e/a/b/g/f/Ca;->zzabm:I

    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    invoke-interface {v0, p0}, Lc/e/a/b/g/f/hc;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final j()Lc/e/a/b/g/f/nb$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lc/e/a/b/g/f/nb<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lc/e/a/b/g/f/nb$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget v0, Lc/e/a/b/g/f/nb$e;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lc/e/a/b/g/f/nb$a;

    return-object v0
.end method

.method public final k()Lc/e/a/b/g/f/nb$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget v0, Lc/e/a/b/g/f/nb$e;->e:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lc/e/a/b/g/f/nb$a;

    .line 4
    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/nb$a;->a(Lc/e/a/b/g/f/nb;)Lc/e/a/b/g/f/nb$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc/e/a/b/g/f/Vb;->a(Lc/e/a/b/g/f/Sb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
