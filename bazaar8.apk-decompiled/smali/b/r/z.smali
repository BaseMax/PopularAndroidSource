.class public Lb/r/z;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Lb/r/k;


# static fields
.field public static final a:Lb/r/z;


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Landroid/os/Handler;

.field public final g:Lb/r/m;

.field public h:Ljava/lang/Runnable;

.field public i:Lb/r/A$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/r/z;

    invoke-direct {v0}, Lb/r/z;-><init>()V

    sput-object v0, Lb/r/z;->a:Lb/r/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/r/z;->b:I

    .line 3
    iput v0, p0, Lb/r/z;->c:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lb/r/z;->d:Z

    .line 5
    iput-boolean v0, p0, Lb/r/z;->e:Z

    .line 6
    new-instance v0, Lb/r/m;

    invoke-direct {v0, p0}, Lb/r/m;-><init>(Lb/r/k;)V

    iput-object v0, p0, Lb/r/z;->g:Lb/r/m;

    .line 7
    new-instance v0, Lb/r/w;

    invoke-direct {v0, p0}, Lb/r/w;-><init>(Lb/r/z;)V

    iput-object v0, p0, Lb/r/z;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lb/r/x;

    invoke-direct {v0, p0}, Lb/r/x;-><init>(Lb/r/z;)V

    iput-object v0, p0, Lb/r/z;->i:Lb/r/A$a;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lb/r/z;->a:Lb/r/z;

    invoke-virtual {v0, p0}, Lb/r/z;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget v0, p0, Lb/r/z;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/r/z;->c:I

    .line 2
    iget v0, p0, Lb/r/z;->c:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/r/z;->f:Landroid/os/Handler;

    iget-object v1, p0, Lb/r/z;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lb/r/z;->f:Landroid/os/Handler;

    .line 5
    iget-object v0, p0, Lb/r/z;->g:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 7
    new-instance v0, Lb/r/y;

    invoke-direct {v0, p0}, Lb/r/y;-><init>(Lb/r/z;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/r/z;->g:Lb/r/m;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget v0, p0, Lb/r/z;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lb/r/z;->c:I

    .line 2
    iget v0, p0, Lb/r/z;->c:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v0, p0, Lb/r/z;->d:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/r/z;->g:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb/r/z;->d:Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lb/r/z;->f:Landroid/os/Handler;

    iget-object v1, p0, Lb/r/z;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget v0, p0, Lb/r/z;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lb/r/z;->b:I

    .line 2
    iget v0, p0, Lb/r/z;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lb/r/z;->e:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/r/z;->g:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lb/r/z;->e:Z

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget v0, p0, Lb/r/z;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/r/z;->b:I

    .line 2
    invoke-virtual {p0}, Lb/r/z;->i()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget v0, p0, Lb/r/z;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/r/z;->d:Z

    .line 3
    iget-object v0, p0, Lb/r/z;->g:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget v0, p0, Lb/r/z;->b:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lb/r/z;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/r/z;->g:Lb/r/m;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lb/r/z;->e:Z

    :cond_0
    return-void
.end method
