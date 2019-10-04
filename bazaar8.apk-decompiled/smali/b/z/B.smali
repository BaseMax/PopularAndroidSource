.class public Lb/z/B;
.super Landroidx/lifecycle/LiveData;
.source "RoomTrackingLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final k:Landroidx/room/RoomDatabase;

.field public final l:Z

.field public final m:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final n:Lb/z/h;

.field public final o:Lb/z/j$b;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Ljava/lang/Runnable;

.field public final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Lb/z/h;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Lb/z/h;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/z/B;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/z/B;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/z/B;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lb/z/y;

    invoke-direct {v0, p0}, Lb/z/y;-><init>(Lb/z/B;)V

    iput-object v0, p0, Lb/z/B;->s:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lb/z/z;

    invoke-direct {v0, p0}, Lb/z/z;-><init>(Lb/z/B;)V

    iput-object v0, p0, Lb/z/B;->t:Ljava/lang/Runnable;

    .line 7
    iput-object p1, p0, Lb/z/B;->k:Landroidx/room/RoomDatabase;

    .line 8
    iput-boolean p3, p0, Lb/z/B;->l:Z

    .line 9
    iput-object p4, p0, Lb/z/B;->m:Ljava/util/concurrent/Callable;

    .line 10
    iput-object p2, p0, Lb/z/B;->n:Lb/z/h;

    .line 11
    new-instance p1, Lb/z/A;

    invoke-direct {p1, p0, p5}, Lb/z/A;-><init>(Lb/z/B;[Ljava/lang/String;)V

    iput-object p1, p0, Lb/z/B;->o:Lb/z/j$b;

    return-void
.end method

.method public static synthetic a(Lb/z/B;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->d()V

    .line 2
    iget-object v0, p0, Lb/z/B;->n:Lb/z/h;

    invoke-virtual {v0, p0}, Lb/z/h;->a(Landroidx/lifecycle/LiveData;)V

    .line 3
    invoke-virtual {p0}, Lb/z/B;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lb/z/B;->s:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->e()V

    .line 2
    iget-object v0, p0, Lb/z/B;->n:Lb/z/h;

    invoke-virtual {v0, p0}, Lb/z/h;->b(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public f()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/z/B;->l:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/z/B;->k:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/z/B;->k:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
