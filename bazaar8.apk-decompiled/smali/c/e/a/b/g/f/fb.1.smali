.class public final Lc/e/a/b/g/f/fb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/e/a/b/g/f/db;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/db<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Lc/e/a/b/g/f/db;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/db<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/g/f/eb;

    invoke-direct {v0}, Lc/e/a/b/g/f/eb;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/fb;->a:Lc/e/a/b/g/f/db;

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/fb;->a()Lc/e/a/b/g/f/db;

    move-result-object v0

    sput-object v0, Lc/e/a/b/g/f/fb;->b:Lc/e/a/b/g/f/db;

    return-void
.end method

.method public static a()Lc/e/a/b/g/f/db;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/g/f/db<",
            "*>;"
        }
    .end annotation

    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/db;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()Lc/e/a/b/g/f/db;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/g/f/db<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/e/a/b/g/f/fb;->a:Lc/e/a/b/g/f/db;

    return-object v0
.end method

.method public static c()Lc/e/a/b/g/f/db;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/g/f/db<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/e/a/b/g/f/fb;->b:Lc/e/a/b/g/f/db;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
