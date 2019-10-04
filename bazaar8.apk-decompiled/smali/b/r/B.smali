.class public Lb/r/B;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/r/B$a;
    }
.end annotation


# instance fields
.field public final a:Lb/r/m;

.field public final b:Landroid/os/Handler;

.field public c:Lb/r/B$a;


# direct methods
.method public constructor <init>(Lb/r/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/r/m;

    invoke-direct {v0, p1}, Lb/r/m;-><init>(Lb/r/k;)V

    iput-object v0, p0, Lb/r/B;->a:Lb/r/m;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lb/r/B;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 5
    iget-object v0, p0, Lb/r/B;->a:Lb/r/m;

    return-object v0
.end method

.method public final a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/r/B;->c:Lb/r/B$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/r/B$a;->run()V

    .line 3
    :cond_0
    new-instance v0, Lb/r/B$a;

    iget-object v1, p0, Lb/r/B;->a:Lb/r/m;

    invoke-direct {v0, v1, p1}, Lb/r/B$a;-><init>(Lb/r/m;Landroidx/lifecycle/Lifecycle$Event;)V

    iput-object v0, p0, Lb/r/B;->c:Lb/r/B$a;

    .line 4
    iget-object p1, p0, Lb/r/B;->b:Landroid/os/Handler;

    iget-object v0, p0, Lb/r/B;->c:Lb/r/B$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lb/r/B;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lb/r/B;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lb/r/B;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lb/r/B;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Lb/r/B;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
