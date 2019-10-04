.class public Lc/e/a/b/g/f/cb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/g/f/cb$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static volatile b:Lc/e/a/b/g/f/cb;

.field public static final c:Lc/e/a/b/g/f/cb;


# instance fields
.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/e/a/b/g/f/cb$a;",
            "Lc/e/a/b/g/f/nb$d<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/cb;->b()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lc/e/a/b/g/f/cb;->a:Ljava/lang/Class;

    .line 2
    new-instance v0, Lc/e/a/b/g/f/cb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/e/a/b/g/f/cb;-><init>(Z)V

    sput-object v0, Lc/e/a/b/g/f/cb;->c:Lc/e/a/b/g/f/cb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/e/a/b/g/f/cb;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/b/g/f/cb;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lc/e/a/b/g/f/cb;
    .locals 1

    .line 1
    const-class v0, Lc/e/a/b/g/f/cb;

    invoke-static {v0}, Lc/e/a/b/g/f/lb;->a(Ljava/lang/Class;)Lc/e/a/b/g/f/cb;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "com.google.protobuf.Extension"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Lc/e/a/b/g/f/cb;
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/bb;->b()Lc/e/a/b/g/f/cb;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lc/e/a/b/g/f/cb;
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/g/f/cb;->b:Lc/e/a/b/g/f/cb;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lc/e/a/b/g/f/cb;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lc/e/a/b/g/f/cb;->b:Lc/e/a/b/g/f/cb;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lc/e/a/b/g/f/bb;->c()Lc/e/a/b/g/f/cb;

    move-result-object v0

    sput-object v0, Lc/e/a/b/g/f/cb;->b:Lc/e/a/b/g/f/cb;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lc/e/a/b/g/f/Sb;I)Lc/e/a/b/g/f/nb$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lc/e/a/b/g/f/Sb;",
            ">(TContainingType;I)",
            "Lc/e/a/b/g/f/nb$d<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/cb;->d:Ljava/util/Map;

    new-instance v1, Lc/e/a/b/g/f/cb$a;

    invoke-direct {v1, p1, p2}, Lc/e/a/b/g/f/cb$a;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/f/nb$d;

    return-object p1
.end method
