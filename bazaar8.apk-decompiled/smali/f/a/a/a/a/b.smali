.class public Lf/a/a/a/a/b;
.super Ljava/lang/Object;
.source "InlineActionLog.java"


# static fields
.field public static a:Lf/a/a/a/a/b;


# instance fields
.field public b:Lc/c/a/d/c/b;

.field public c:Lc/c/a/e/d/u/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lf/a/a/b/a;->b:Lc/c/a/d/c/b;

    iput-object v0, p0, Lf/a/a/a/a/b;->b:Lc/c/a/d/c/b;

    .line 3
    sget-object v0, Lf/a/a/b/a;->c:Lc/c/a/e/d/u/a;

    iput-object v0, p0, Lf/a/a/a/a/b;->c:Lc/c/a/e/d/u/a;

    return-void
.end method

.method public static declared-synchronized a()Lf/a/a/a/a/b;
    .locals 2

    const-class v0, Lf/a/a/a/a/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf/a/a/a/a/b;->a:Lf/a/a/a/a/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lf/a/a/a/a/b;

    invoke-direct {v1}, Lf/a/a/a/a/b;-><init>()V

    sput-object v1, Lf/a/a/a/a/b;->a:Lf/a/a/a/a/b;

    .line 3
    :cond_0
    sget-object v1, Lf/a/a/a/a/b;->a:Lf/a/a/a/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lf/a/a/a/a/a;)V
    .locals 1

    .line 4
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    invoke-static {p1}, Lf/a/a/a/a/c;->a(Lf/a/a/a/a/a;)Lc/c/a/a/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/a/b;->b:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/a/a/b;->b:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/a/a/a/a/b;->c:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
