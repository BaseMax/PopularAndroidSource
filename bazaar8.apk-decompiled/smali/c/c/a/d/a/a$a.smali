.class public final Lc/c/a/d/a/a$a;
.super Ljava/lang/Object;
.source "AppSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/d/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lc/c/a/e/d/u/a;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lc/c/a/d/a/a;->a()Lc/c/a/e/d/u/a;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lc/c/a/e/d/u/a;

    new-instance v1, Lc/c/a/e/d/b/G;

    new-instance v2, Lc/c/a/e/d/b/H;

    invoke-direct {v2, p1}, Lc/c/a/e/d/b/H;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lc/c/a/e/d/b/G;-><init>(Landroid/content/Context;Lc/c/a/e/d/b/I;)V

    invoke-direct {v0, v1}, Lc/c/a/e/d/u/a;-><init>(Lc/c/a/e/d/b/G;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
