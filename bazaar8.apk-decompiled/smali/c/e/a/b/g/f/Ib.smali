.class public final Lc/e/a/b/g/f/Ib;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/ic;


# static fields
.field public static final a:Lc/e/a/b/g/f/Rb;


# instance fields
.field public final b:Lc/e/a/b/g/f/Rb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/g/f/Jb;

    invoke-direct {v0}, Lc/e/a/b/g/f/Jb;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/Ib;->a:Lc/e/a/b/g/f/Rb;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lc/e/a/b/g/f/Kb;

    const/4 v1, 0x2

    new-array v1, v1, [Lc/e/a/b/g/f/Rb;

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/mb;->a()Lc/e/a/b/g/f/mb;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lc/e/a/b/g/f/Ib;->a()Lc/e/a/b/g/f/Rb;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lc/e/a/b/g/f/Kb;-><init>([Lc/e/a/b/g/f/Rb;)V

    .line 3
    invoke-direct {p0, v0}, Lc/e/a/b/g/f/Ib;-><init>(Lc/e/a/b/g/f/Rb;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/b/g/f/Rb;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 5
    invoke-static {p1, v0}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/b/g/f/Rb;

    iput-object p1, p0, Lc/e/a/b/g/f/Ib;->b:Lc/e/a/b/g/f/Rb;

    return-void
.end method

.method public static a()Lc/e/a/b/g/f/Rb;
    .locals 4

    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 39
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 40
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/Rb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    sget-object v0, Lc/e/a/b/g/f/Ib;->a:Lc/e/a/b/g/f/Rb;

    return-object v0
.end method

.method public static a(Lc/e/a/b/g/f/Qb;)Z
    .locals 1

    .line 38
    invoke-interface {p0}, Lc/e/a/b/g/f/Qb;->c()I

    move-result p0

    sget v0, Lc/e/a/b/g/f/nb$e;->i:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lc/e/a/b/g/f/hc;
    .locals 8
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

    .line 1
    invoke-static {p1}, Lc/e/a/b/g/f/kc;->a(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/Ib;->b:Lc/e/a/b/g/f/Rb;

    invoke-interface {v0, p1}, Lc/e/a/b/g/f/Rb;->b(Ljava/lang/Class;)Lc/e/a/b/g/f/Qb;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lc/e/a/b/g/f/Qb;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-class v0, Lc/e/a/b/g/f/nb;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lc/e/a/b/g/f/kc;->c()Lc/e/a/b/g/f/zc;

    move-result-object p1

    .line 6
    invoke-static {}, Lc/e/a/b/g/f/fb;->b()Lc/e/a/b/g/f/db;

    move-result-object v0

    .line 7
    invoke-interface {v2}, Lc/e/a/b/g/f/Qb;->a()Lc/e/a/b/g/f/Sb;

    move-result-object v1

    .line 8
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Xb;->a(Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Xb;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Lc/e/a/b/g/f/kc;->a()Lc/e/a/b/g/f/zc;

    move-result-object p1

    .line 10
    invoke-static {}, Lc/e/a/b/g/f/fb;->c()Lc/e/a/b/g/f/db;

    move-result-object v0

    .line 11
    invoke-interface {v2}, Lc/e/a/b/g/f/Qb;->a()Lc/e/a/b/g/f/Sb;

    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Xb;->a(Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Xb;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    const-class v0, Lc/e/a/b/g/f/nb;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {v2}, Lc/e/a/b/g/f/Ib;->a(Lc/e/a/b/g/f/Qb;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lc/e/a/b/g/f/ac;->b()Lc/e/a/b/g/f/Zb;

    move-result-object v3

    .line 16
    invoke-static {}, Lc/e/a/b/g/f/Db;->b()Lc/e/a/b/g/f/Db;

    move-result-object v4

    .line 17
    invoke-static {}, Lc/e/a/b/g/f/kc;->c()Lc/e/a/b/g/f/zc;

    move-result-object v5

    .line 18
    invoke-static {}, Lc/e/a/b/g/f/fb;->b()Lc/e/a/b/g/f/db;

    move-result-object v6

    .line 19
    invoke-static {}, Lc/e/a/b/g/f/Pb;->b()Lc/e/a/b/g/f/Nb;

    move-result-object v7

    move-object v1, p1

    .line 20
    invoke-static/range {v1 .. v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/Qb;Lc/e/a/b/g/f/Zb;Lc/e/a/b/g/f/Db;Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Nb;)Lc/e/a/b/g/f/Wb;

    move-result-object p1

    return-object p1

    .line 21
    :cond_2
    invoke-static {}, Lc/e/a/b/g/f/ac;->b()Lc/e/a/b/g/f/Zb;

    move-result-object v3

    .line 22
    invoke-static {}, Lc/e/a/b/g/f/Db;->b()Lc/e/a/b/g/f/Db;

    move-result-object v4

    .line 23
    invoke-static {}, Lc/e/a/b/g/f/kc;->c()Lc/e/a/b/g/f/zc;

    move-result-object v5

    const/4 v6, 0x0

    .line 24
    invoke-static {}, Lc/e/a/b/g/f/Pb;->b()Lc/e/a/b/g/f/Nb;

    move-result-object v7

    move-object v1, p1

    .line 25
    invoke-static/range {v1 .. v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/Qb;Lc/e/a/b/g/f/Zb;Lc/e/a/b/g/f/Db;Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Nb;)Lc/e/a/b/g/f/Wb;

    move-result-object p1

    return-object p1

    .line 26
    :cond_3
    invoke-static {v2}, Lc/e/a/b/g/f/Ib;->a(Lc/e/a/b/g/f/Qb;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Lc/e/a/b/g/f/ac;->a()Lc/e/a/b/g/f/Zb;

    move-result-object v3

    .line 28
    invoke-static {}, Lc/e/a/b/g/f/Db;->a()Lc/e/a/b/g/f/Db;

    move-result-object v4

    .line 29
    invoke-static {}, Lc/e/a/b/g/f/kc;->a()Lc/e/a/b/g/f/zc;

    move-result-object v5

    .line 30
    invoke-static {}, Lc/e/a/b/g/f/fb;->c()Lc/e/a/b/g/f/db;

    move-result-object v6

    .line 31
    invoke-static {}, Lc/e/a/b/g/f/Pb;->a()Lc/e/a/b/g/f/Nb;

    move-result-object v7

    move-object v1, p1

    .line 32
    invoke-static/range {v1 .. v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/Qb;Lc/e/a/b/g/f/Zb;Lc/e/a/b/g/f/Db;Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Nb;)Lc/e/a/b/g/f/Wb;

    move-result-object p1

    return-object p1

    .line 33
    :cond_4
    invoke-static {}, Lc/e/a/b/g/f/ac;->a()Lc/e/a/b/g/f/Zb;

    move-result-object v3

    .line 34
    invoke-static {}, Lc/e/a/b/g/f/Db;->a()Lc/e/a/b/g/f/Db;

    move-result-object v4

    .line 35
    invoke-static {}, Lc/e/a/b/g/f/kc;->b()Lc/e/a/b/g/f/zc;

    move-result-object v5

    const/4 v6, 0x0

    .line 36
    invoke-static {}, Lc/e/a/b/g/f/Pb;->a()Lc/e/a/b/g/f/Nb;

    move-result-object v7

    move-object v1, p1

    .line 37
    invoke-static/range {v1 .. v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Class;Lc/e/a/b/g/f/Qb;Lc/e/a/b/g/f/Zb;Lc/e/a/b/g/f/Db;Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Nb;)Lc/e/a/b/g/f/Wb;

    move-result-object p1

    return-object p1
.end method
