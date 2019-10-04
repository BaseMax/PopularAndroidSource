.class public Lb/z/r;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public c:I

.field public final d:Lb/z/j;

.field public final e:Lb/z/j$b;

.field public f:Lb/z/g;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lb/z/f;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Landroid/content/ServiceConnection;

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lb/z/j;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/z/l;

    invoke-direct {v0, p0}, Lb/z/l;-><init>(Lb/z/r;)V

    iput-object v0, p0, Lb/z/r;->h:Lb/z/f;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/z/r;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lb/z/m;

    invoke-direct {v0, p0}, Lb/z/m;-><init>(Lb/z/r;)V

    iput-object v0, p0, Lb/z/r;->j:Landroid/content/ServiceConnection;

    .line 5
    new-instance v0, Lb/z/n;

    invoke-direct {v0, p0}, Lb/z/n;-><init>(Lb/z/r;)V

    iput-object v0, p0, Lb/z/r;->k:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lb/z/o;

    invoke-direct {v0, p0}, Lb/z/o;-><init>(Lb/z/r;)V

    iput-object v0, p0, Lb/z/r;->l:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lb/z/p;

    invoke-direct {v0, p0}, Lb/z/p;-><init>(Lb/z/r;)V

    iput-object v0, p0, Lb/z/r;->m:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/z/r;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lb/z/r;->b:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lb/z/r;->d:Lb/z/j;

    .line 11
    iput-object p4, p0, Lb/z/r;->g:Ljava/util/concurrent/Executor;

    .line 12
    new-instance p1, Lb/z/q;

    iget-object p2, p3, Lb/z/j;->c:[Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lb/z/q;-><init>(Lb/z/r;[Ljava/lang/String;)V

    iput-object p1, p0, Lb/z/r;->e:Lb/z/j$b;

    .line 13
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lb/z/r;->a:Landroid/content/Context;

    const-class p3, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    iget-object p2, p0, Lb/z/r;->a:Landroid/content/Context;

    iget-object p3, p0, Lb/z/r;->j:Landroid/content/ServiceConnection;

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
