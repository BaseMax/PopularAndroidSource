.class public Lb/r/m$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/Lifecycle$State;

.field public b:Lb/r/i;


# direct methods
.method public constructor <init>(Lb/r/j;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lb/r/p;->a(Ljava/lang/Object;)Lb/r/i;

    move-result-object p1

    iput-object p1, p0, Lb/r/m$a;->b:Lb/r/i;

    .line 3
    iput-object p2, p0, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method


# virtual methods
.method public a(Lb/r/k;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lb/r/m;->a(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Lb/r/m;->a(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    iget-object v1, p0, Lb/r/m$a;->b:Lb/r/i;

    invoke-interface {v1, p1, p2}, Lb/r/i;->a(Lb/r/k;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 4
    iput-object v0, p0, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method
