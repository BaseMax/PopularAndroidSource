.class public Lc/e/a/b/d/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/d/g/e;


# static fields
.field public static final a:Lc/e/a/b/d/g/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/d/g/h;

    invoke-direct {v0}, Lc/e/a/b/d/g/h;-><init>()V

    sput-object v0, Lc/e/a/b/d/g/h;->a:Lc/e/a/b/d/g/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lc/e/a/b/d/g/e;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/d/g/h;->a:Lc/e/a/b/d/g/h;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
