.class public Lc/e/a/b/d/f/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lc/e/a/b/d/f/a;

.field public static c:Z


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/b/d/f/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lc/e/a/b/d/f/a;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lc/e/a/b/d/f/a;->d:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lc/e/a/b/d/f/a;->e:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lc/e/a/b/d/f/a;->f:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lc/e/a/b/d/f/a;->g:Ljava/util/List;

    return-void
.end method

.method public static a()Lc/e/a/b/d/f/a;
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/d/f/a;->b:Lc/e/a/b/d/f/a;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lc/e/a/b/d/f/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/e/a/b/d/f/a;->b:Lc/e/a/b/d/f/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lc/e/a/b/d/f/a;

    invoke-direct {v1}, Lc/e/a/b/d/f/a;-><init>()V

    sput-object v1, Lc/e/a/b/d/f/a;->b:Lc/e/a/b/d/f/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lc/e/a/b/d/f/a;->b:Lc/e/a/b/d/f/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UntrackedBindService"
        }
    .end annotation

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 7

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lc/e/a/b/d/f/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    .line 7
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc/e/a/b/d/g/d;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_1

    const-string p1, "ConnectionTracker"

    const-string p2, "Attempted to bind to a service in a STOPPED package."

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 10
    :cond_1
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method
