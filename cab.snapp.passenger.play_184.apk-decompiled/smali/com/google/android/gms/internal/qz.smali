.class final Lcom/google/android/gms/internal/qz;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/qz;


# instance fields
.field private final b:Lcom/google/android/gms/internal/rg;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/rf<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/qz;->a:Lcom/google/android/gms/internal/qz;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qz;->c:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.protobuf.AndroidProto3SchemaFactory"

    aput-object v2, v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-gtz v2, :cond_0

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/qz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/rg;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/qh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/qh;-><init>()V

    :cond_1
    iput-object v3, p0, Lcom/google/android/gms/internal/qz;->b:Lcom/google/android/gms/internal/rg;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/gms/internal/rg;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/rg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzcyz()Lcom/google/android/gms/internal/qz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/qz;->a:Lcom/google/android/gms/internal/qz;

    return-object v0
.end method


# virtual methods
.method public final zzl(Ljava/lang/Class;)Lcom/google/android/gms/internal/rf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/rf<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/qz;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/rf;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/qz;->b:Lcom/google/android/gms/internal/rg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/rg;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/rf;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/qz;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/rf;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method
