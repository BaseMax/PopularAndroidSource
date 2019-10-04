.class public final Lb/A/b;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.java"


# instance fields
.field public final a:Lb/A/c;

.field public final b:Lb/A/a;


# direct methods
.method public constructor <init>(Lb/A/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/A/b;->a:Lb/A/c;

    .line 3
    new-instance p1, Lb/A/a;

    invoke-direct {p1}, Lb/A/a;-><init>()V

    iput-object p1, p0, Lb/A/b;->b:Lb/A/a;

    return-void
.end method

.method public static a(Lb/A/c;)Lb/A/b;
    .locals 1

    .line 7
    new-instance v0, Lb/A/b;

    invoke-direct {v0, p0}, Lb/A/b;-><init>(Lb/A/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Lb/A/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/A/b;->b:Lb/A/a;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lb/A/b;->a:Lb/A/c;

    invoke-interface {v0}, Lb/r/k;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->a()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    .line 4
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Lb/A/b;->a:Lb/A/c;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Lb/A/c;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lb/r/j;)V

    .line 5
    iget-object v1, p0, Lb/A/b;->b:Lb/A/a;

    invoke-virtual {v1, v0, p1}, Lb/A/a;->a(Landroidx/lifecycle/Lifecycle;Landroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/A/b;->b:Lb/A/a;

    invoke-virtual {v0, p1}, Lb/A/a;->a(Landroid/os/Bundle;)V

    return-void
.end method
