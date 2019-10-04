.class public final Lc/b/a/c/b/C;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lc/b/a/c/b/D;
.implements Lc/b/a/i/a/d$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/b/D<",
        "TZ;>;",
        "Lc/b/a/i/a/d$c;"
    }
.end annotation


# static fields
.field public static final a:Lb/i/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/j/e<",
            "Lc/b/a/c/b/C<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lc/b/a/i/a/g;

.field public c:Lc/b/a/c/b/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/D<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/c/b/B;

    invoke-direct {v0}, Lc/b/a/c/b/B;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lc/b/a/i/a/d;->b(ILc/b/a/i/a/d$a;)Lb/i/j/e;

    move-result-object v0

    sput-object v0, Lc/b/a/c/b/C;->a:Lb/i/j/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lc/b/a/i/a/g;->a()Lc/b/a/i/a/g;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/C;->b:Lc/b/a/i/a/g;

    return-void
.end method

.method public static b(Lc/b/a/c/b/D;)Lc/b/a/c/b/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/b/D<",
            "TZ;>;)",
            "Lc/b/a/c/b/C<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/c/b/C;->a:Lb/i/j/e;

    invoke-interface {v0}, Lb/i/j/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/b/C;

    invoke-static {v0}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/b/a/c/b/C;

    .line 2
    invoke-virtual {v0, p0}, Lc/b/a/c/b/C;->a(Lc/b/a/c/b/D;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/b/a/c/b/C;->b:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/b/a/c/b/C;->e:Z

    .line 6
    iget-boolean v0, p0, Lc/b/a/c/b/C;->d:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/b/a/c/b/C;->c:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->a()V

    .line 8
    invoke-virtual {p0}, Lc/b/a/c/b/C;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lc/b/a/c/b/D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/b/a/c/b/C;->e:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/b/a/c/b/C;->d:Z

    .line 3
    iput-object p1, p0, Lc/b/a/c/b/C;->c:Lc/b/a/c/b/D;

    return-void
.end method

.method public b()I
    .locals 1

    .line 3
    iget-object v0, p0, Lc/b/a/c/b/C;->c:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/C;->c:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/b/a/c/b/C;->c:Lc/b/a/c/b/D;

    .line 2
    sget-object v0, Lc/b/a/c/b/C;->a:Lb/i/j/e;

    invoke-interface {v0, p0}, Lb/i/j/e;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/b/a/c/b/C;->b:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 2
    iget-boolean v0, p0, Lc/b/a/c/b/C;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/b/a/c/b/C;->d:Z

    .line 4
    iget-boolean v0, p0, Lc/b/a/c/b/C;->e:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/b/a/c/b/C;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Lc/b/a/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/C;->b:Lc/b/a/i/a/g;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/C;->c:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
