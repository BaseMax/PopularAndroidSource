.class public final Ll/r;
.super Ll/G;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ll/G<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field public final a:Ll/C;

.field public final b:Lj/i$a;

.field public final c:Ll/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/c<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation
.end field

.field public final d:Ll/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/j<",
            "Lj/S;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll/C;Lj/i$a;Ll/c;Ll/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/C;",
            "Lj/i$a;",
            "Ll/c<",
            "TResponseT;TReturnT;>;",
            "Ll/j<",
            "Lj/S;",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ll/G;-><init>()V

    .line 2
    iput-object p1, p0, Ll/r;->a:Ll/C;

    .line 3
    iput-object p2, p0, Ll/r;->b:Lj/i$a;

    .line 4
    iput-object p3, p0, Ll/r;->c:Ll/c;

    .line 5
    iput-object p4, p0, Ll/r;->d:Ll/j;

    return-void
.end method

.method public static a(Ll/F;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Ll/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/F;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ll/j<",
            "Lj/S;",
            "TResponseT;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p2, v0}, Ll/F;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unable to create converter for %s"

    invoke-static {p1, p0, p2, v0}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ll/F;Ljava/lang/reflect/Method;Ll/C;)Ll/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/F;",
            "Ljava/lang/reflect/Method;",
            "Ll/C;",
            ")",
            "Ll/r<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ll/r;->b(Ll/F;Ljava/lang/reflect/Method;)Ll/c;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ll/c;->a()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3
    const-class v2, Ll/D;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const-class v2, Lj/P;

    if-eq v1, v2, :cond_2

    .line 4
    iget-object v2, p2, Ll/C;->c:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Ljava/lang/Void;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-array p0, v3, [Ljava/lang/Object;

    const-string p2, "HEAD method must use Void as response type."

    invoke-static {p1, p2, p0}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-static {p0, p1, v1}, Ll/r;->a(Ll/F;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Ll/j;

    move-result-object p1

    .line 7
    iget-object p0, p0, Ll/F;->b:Lj/i$a;

    .line 8
    new-instance v1, Ll/r;

    invoke-direct {v1, p2, p0, v0, p1}, Ll/r;-><init>(Ll/C;Lj/i$a;Ll/c;Ll/j;)V

    return-object v1

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v1}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, p0, p2}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Ll/F;Ljava/lang/reflect/Method;)Ll/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/F;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ll/c<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ll/F;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unable to create call adapter for %s"

    invoke-static {p1, p0, v0, v1}, Ll/H;->a(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Ll/r;->c:Ll/c;

    new-instance v1, Ll/v;

    iget-object v2, p0, Ll/r;->a:Ll/C;

    iget-object v3, p0, Ll/r;->b:Lj/i$a;

    iget-object v4, p0, Ll/r;->d:Ll/j;

    invoke-direct {v1, v2, p1, v3, v4}, Ll/v;-><init>(Ll/C;[Ljava/lang/Object;Lj/i$a;Ll/j;)V

    invoke-interface {v0, v1}, Ll/c;->a(Ll/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
