.class public Landroidx/navigation/fragment/DialogFragmentNavigator$1;
.super Ljava/lang/Object;
.source "DialogFragmentNavigator.java"

# interfaces
.implements Lb/r/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/w/b/a;


# direct methods
.method public constructor <init>(Lb/w/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$1;->a:Lb/w/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/r/k;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 2
    check-cast p1, Lb/o/a/d;

    .line 3
    invoke-virtual {p1}, Lb/o/a/d;->Pa()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/navigation/fragment/NavHostFragment;->b(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/w/j;->i()Z

    :cond_0
    return-void
.end method
