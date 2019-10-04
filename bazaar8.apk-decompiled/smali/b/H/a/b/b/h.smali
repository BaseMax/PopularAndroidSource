.class public Lb/H/a/b/b/h;
.super Ljava/lang/Object;
.source "Trackers.java"


# static fields
.field public static a:Lb/H/a/b/b/h;


# instance fields
.field public b:Lb/H/a/b/b/a;

.field public c:Lb/H/a/b/b/b;

.field public d:Lb/H/a/b/b/f;

.field public e:Lb/H/a/b/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lb/H/a/b/b/a;

    invoke-direct {v0, p1}, Lb/H/a/b/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/H/a/b/b/h;->b:Lb/H/a/b/b/a;

    .line 4
    new-instance v0, Lb/H/a/b/b/b;

    invoke-direct {v0, p1}, Lb/H/a/b/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/H/a/b/b/h;->c:Lb/H/a/b/b/b;

    .line 5
    new-instance v0, Lb/H/a/b/b/f;

    invoke-direct {v0, p1}, Lb/H/a/b/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/H/a/b/b/h;->d:Lb/H/a/b/b/f;

    .line 6
    new-instance v0, Lb/H/a/b/b/g;

    invoke-direct {v0, p1}, Lb/H/a/b/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/H/a/b/b/h;->e:Lb/H/a/b/b/g;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lb/H/a/b/b/h;
    .locals 2

    const-class v0, Lb/H/a/b/b/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lb/H/a/b/b/h;->a:Lb/H/a/b/b/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lb/H/a/b/b/h;

    invoke-direct {v1, p0}, Lb/H/a/b/b/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/H/a/b/b/h;->a:Lb/H/a/b/b/h;

    .line 3
    :cond_0
    sget-object p0, Lb/H/a/b/b/h;->a:Lb/H/a/b/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Lb/H/a/b/b/a;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/H/a/b/b/h;->b:Lb/H/a/b/b/a;

    return-object v0
.end method

.method public b()Lb/H/a/b/b/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/b/b/h;->c:Lb/H/a/b/b/b;

    return-object v0
.end method

.method public c()Lb/H/a/b/b/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/b/b/h;->d:Lb/H/a/b/b/f;

    return-object v0
.end method

.method public d()Lb/H/a/b/b/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/b/b/h;->e:Lb/H/a/b/b/g;

    return-object v0
.end method
