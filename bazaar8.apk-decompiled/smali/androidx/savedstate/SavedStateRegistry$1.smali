.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source "SavedStateRegistry.java"

# interfaces
.implements Lb/r/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/A/a;->a(Landroidx/lifecycle/Lifecycle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/A/a;


# direct methods
.method public constructor <init>(Lb/A/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/A/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/r/k;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/A/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lb/A/a;->d:Z

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/A/a;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lb/A/a;->d:Z

    :cond_1
    :goto_0
    return-void
.end method
