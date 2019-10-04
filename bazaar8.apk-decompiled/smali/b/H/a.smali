.class public final Lb/H/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lb/H/q;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lb/H/a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lb/H/a$a;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/H/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lb/H/a;->a:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lb/H/a;->a:Ljava/util/concurrent/Executor;

    .line 5
    :goto_0
    iget-object v0, p1, Lb/H/a$a;->b:Lb/H/q;

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lb/H/q;->a()Lb/H/q;

    move-result-object v0

    iput-object v0, p0, Lb/H/a;->b:Lb/H/q;

    goto :goto_1

    .line 7
    :cond_1
    iput-object v0, p0, Lb/H/a;->b:Lb/H/q;

    .line 8
    :goto_1
    iget v0, p1, Lb/H/a$a;->c:I

    iput v0, p0, Lb/H/a;->c:I

    .line 9
    iget v0, p1, Lb/H/a$a;->d:I

    iput v0, p0, Lb/H/a;->d:I

    .line 10
    iget v0, p1, Lb/H/a$a;->e:I

    iput v0, p0, Lb/H/a;->e:I

    .line 11
    iget p1, p1, Lb/H/a$a;->f:I

    iput p1, p0, Lb/H/a;->f:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lb/H/a;->e:I

    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lb/H/a;->f:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lb/H/a;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lb/H/a;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lb/H/a;->c:I

    return v0
.end method

.method public g()Lb/H/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a;->b:Lb/H/q;

    return-object v0
.end method
