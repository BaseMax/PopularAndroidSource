.class public final Lc/e/a/b/g/f/Pb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/e/a/b/g/f/Nb;

.field public static final b:Lc/e/a/b/g/f/Nb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/Pb;->c()Lc/e/a/b/g/f/Nb;

    move-result-object v0

    sput-object v0, Lc/e/a/b/g/f/Pb;->a:Lc/e/a/b/g/f/Nb;

    .line 2
    new-instance v0, Lc/e/a/b/g/f/Ob;

    invoke-direct {v0}, Lc/e/a/b/g/f/Ob;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/Pb;->b:Lc/e/a/b/g/f/Nb;

    return-void
.end method

.method public static a()Lc/e/a/b/g/f/Nb;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/Pb;->a:Lc/e/a/b/g/f/Nb;

    return-object v0
.end method

.method public static b()Lc/e/a/b/g/f/Nb;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/Pb;->b:Lc/e/a/b/g/f/Nb;

    return-object v0
.end method

.method public static c()Lc/e/a/b/g/f/Nb;
    .locals 3

    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

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

    check-cast v0, Lc/e/a/b/g/f/Nb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
