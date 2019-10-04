.class public final Lc/e/a/b/g/f/dc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/e/a/b/g/f/dc;


# instance fields
.field public final b:Lc/e/a/b/g/f/ic;

.field public final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/e/a/b/g/f/hc<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/g/f/dc;

    invoke-direct {v0}, Lc/e/a/b/g/f/dc;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/dc;->a:Lc/e/a/b/g/f/dc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc/e/a/b/g/f/dc;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Lc/e/a/b/g/f/Ib;

    invoke-direct {v0}, Lc/e/a/b/g/f/Ib;-><init>()V

    iput-object v0, p0, Lc/e/a/b/g/f/dc;->b:Lc/e/a/b/g/f/ic;

    return-void
.end method

.method public static a()Lc/e/a/b/g/f/dc;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/dc;->a:Lc/e/a/b/g/f/dc;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lc/e/a/b/g/f/hc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/e/a/b/g/f/hc<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/dc;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/g/f/hc;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/dc;->b:Lc/e/a/b/g/f/ic;

    invoke-interface {v1, p1}, Lc/e/a/b/g/f/ic;->a(Ljava/lang/Class;)Lc/e/a/b/g/f/hc;

    move-result-object v1

    .line 5
    invoke-static {p1, v0}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 6
    invoke-static {v1, v0}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lc/e/a/b/g/f/dc;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/f/hc;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc/e/a/b/g/f/hc<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Class;)Lc/e/a/b/g/f/hc;

    move-result-object p1

    return-object p1
.end method
