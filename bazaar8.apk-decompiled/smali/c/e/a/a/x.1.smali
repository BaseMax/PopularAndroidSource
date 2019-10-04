.class public final Lc/e/a/a/x;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# static fields
.field public static a:Lc/e/a/a/n/f;


# direct methods
.method public static a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;)Lc/e/a/a/X;
    .locals 1

    .line 2
    new-instance v0, Lc/e/a/a/t;

    invoke-direct {v0}, Lc/e/a/a/t;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lc/e/a/a/x;->a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;)Lc/e/a/a/X;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;)Lc/e/a/a/X;
    .locals 6

    .line 3
    invoke-static {}, Lc/e/a/a/o/I;->a()Landroid/os/Looper;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-static/range {v0 .. v5}, Lc/e/a/a/x;->a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Landroid/os/Looper;)Lc/e/a/a/X;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Landroid/os/Looper;)Lc/e/a/a/X;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/e/a/a/U;",
            "Lc/e/a/a/l/r;",
            "Lc/e/a/a/F;",
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;",
            "Landroid/os/Looper;",
            ")",
            "Lc/e/a/a/X;"
        }
    .end annotation

    .line 5
    new-instance v5, Lc/e/a/a/a/a$a;

    invoke-direct {v5}, Lc/e/a/a/a/a$a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lc/e/a/a/x;->a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Lc/e/a/a/a/a$a;Landroid/os/Looper;)Lc/e/a/a/X;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Lc/e/a/a/a/a$a;Landroid/os/Looper;)Lc/e/a/a/X;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/e/a/a/U;",
            "Lc/e/a/a/l/r;",
            "Lc/e/a/a/F;",
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;",
            "Lc/e/a/a/a/a$a;",
            "Landroid/os/Looper;",
            ")",
            "Lc/e/a/a/X;"
        }
    .end annotation

    .line 6
    invoke-static {p0}, Lc/e/a/a/x;->a(Landroid/content/Context;)Lc/e/a/a/n/f;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 7
    invoke-static/range {v0 .. v7}, Lc/e/a/a/x;->a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Lc/e/a/a/n/f;Lc/e/a/a/a/a$a;Landroid/os/Looper;)Lc/e/a/a/X;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Lc/e/a/a/n/f;Lc/e/a/a/a/a$a;Landroid/os/Looper;)Lc/e/a/a/X;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/e/a/a/U;",
            "Lc/e/a/a/l/r;",
            "Lc/e/a/a/F;",
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;",
            "Lc/e/a/a/n/f;",
            "Lc/e/a/a/a/a$a;",
            "Landroid/os/Looper;",
            ")",
            "Lc/e/a/a/X;"
        }
    .end annotation

    .line 8
    new-instance v9, Lc/e/a/a/X;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lc/e/a/a/X;-><init>(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Lc/e/a/a/n/f;Lc/e/a/a/a/a$a;Landroid/os/Looper;)V

    return-object v9
.end method

.method public static a(Landroid/content/Context;Lc/e/a/a/l/r;)Lc/e/a/a/X;
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/v;

    invoke-direct {v0, p0}, Lc/e/a/a/v;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, p1}, Lc/e/a/a/x;->a(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;)Lc/e/a/a/X;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lc/e/a/a/n/f;
    .locals 2

    const-class v0, Lc/e/a/a/x;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lc/e/a/a/x;->a:Lc/e/a/a/n/f;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lc/e/a/a/n/o$a;

    invoke-direct {v1, p0}, Lc/e/a/a/n/o$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lc/e/a/a/n/o$a;->a()Lc/e/a/a/n/o;

    move-result-object p0

    sput-object p0, Lc/e/a/a/x;->a:Lc/e/a/a/n/f;

    .line 11
    :cond_0
    sget-object p0, Lc/e/a/a/x;->a:Lc/e/a/a/n/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
