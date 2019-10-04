.class public Lb/o/a/S;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Lb/r/k;


# instance fields
.field public a:Lb/r/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/o/a/S;->a:Lb/r/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/S;->a:Lb/r/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/r/m;

    invoke-direct {v0, p0}, Lb/r/m;-><init>(Lb/r/k;)V

    iput-object v0, p0, Lb/o/a/S;->a:Lb/r/m;

    :cond_0
    return-void
.end method

.method public a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lb/o/a/S;->a:Lb/r/m;

    invoke-virtual {v0, p1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/o/a/S;->a()V

    .line 2
    iget-object v0, p0, Lb/o/a/S;->a:Lb/r/m;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/o/a/S;->a:Lb/r/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
