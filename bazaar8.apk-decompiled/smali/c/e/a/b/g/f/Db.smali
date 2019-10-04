.class public abstract Lc/e/a/b/g/f/Db;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/e/a/b/g/f/Db;

.field public static final b:Lc/e/a/b/g/f/Db;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/f/Fb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/e/a/b/g/f/Fb;-><init>(Lc/e/a/b/g/f/Eb;)V

    sput-object v0, Lc/e/a/b/g/f/Db;->a:Lc/e/a/b/g/f/Db;

    .line 2
    new-instance v0, Lc/e/a/b/g/f/Gb;

    invoke-direct {v0, v1}, Lc/e/a/b/g/f/Gb;-><init>(Lc/e/a/b/g/f/Eb;)V

    sput-object v0, Lc/e/a/b/g/f/Db;->b:Lc/e/a/b/g/f/Db;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/Eb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/f/Db;-><init>()V

    return-void
.end method

.method public static a()Lc/e/a/b/g/f/Db;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/Db;->a:Lc/e/a/b/g/f/Db;

    return-object v0
.end method

.method public static b()Lc/e/a/b/g/f/Db;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/Db;->b:Lc/e/a/b/g/f/Db;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;J)V
.end method
