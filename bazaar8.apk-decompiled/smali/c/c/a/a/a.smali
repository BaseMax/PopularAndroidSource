.class public final Lc/c/a/a/a;
.super Ljava/lang/Object;
.source "Analytics.kt"


# static fields
.field public static a:Lc/c/a/a/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static b:Z

.field public static final c:Lc/c/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/a/a;

    invoke-direct {v0}, Lc/c/a/a/a;-><init>()V

    sput-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/a/a;)Lc/c/a/a/b;
    .locals 0

    .line 1
    sget-object p0, Lc/c/a/a/a;->a:Lc/c/a/a/b;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/a/a;)Z
    .locals 0

    .line 1
    sget-boolean p0, Lc/c/a/a/a;->b:Z

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lh/f/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh/f/a/b<",
            "-",
            "Lc/c/a/a/c;",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildAgent"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/c/a/a/a;->a:Lc/c/a/a/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Lc/c/a/a/a;->b:Z

    .line 5
    new-instance v1, Lc/c/a/a/c;

    invoke-direct {v1, p1}, Lc/c/a/a/c;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-interface {p2, v1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Lc/c/a/a/b$a;->a()Lc/c/a/a/b;

    move-result-object p1

    sput-object p1, Lc/c/a/a/a;->a:Lc/c/a/a/b;

    .line 8
    sget-object p1, Lc/c/a/a/a;->a:Lc/c/a/a/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/a/b;->b()V

    .line 9
    :cond_0
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lc/c/a/a/a/a;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lc/c/a/a/a;->a(Lc/c/a/a/a;)Lc/c/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 12
    invoke-static {p0}, Lc/c/a/a/a;->b(Lc/c/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    sget-object v0, Lc/c/a/a/a;->a:Lc/c/a/a/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lc/c/a/a/b;->a(Lc/c/a/a/a/a;)V

    :cond_1
    return-void

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Analytics.initialize() must be called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
