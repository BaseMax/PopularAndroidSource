.class public Landroidx/navigation/fragment/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavHostFragment.java"

# interfaces
.implements Lb/w/t;


# instance fields
.field public Y:Lb/w/u;

.field public Z:Ljava/lang/Boolean;

.field public aa:I

.field public ba:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Z:Ljava/lang/Boolean;

    return-void
.end method

.method public static b(Landroidx/fragment/app/Fragment;)Lb/w/j;
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    instance-of v1, v0, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->Ma()Lb/w/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->Ia()Lb/o/a/n;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lb/o/a/n;->d()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 5
    instance-of v2, v1, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v1}, Landroidx/navigation/fragment/NavHostFragment;->Ma()Lb/w/j;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v0}, Lb/w/J;->a(Landroid/view/View;)Lb/w/j;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public La()Lb/w/K;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/w/K<",
            "+",
            "Lb/w/b/c$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lb/w/b/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->L()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lb/w/b/c;-><init>(Landroid/content/Context;Lb/o/a/n;I)V

    return-object v0
.end method

.method public final Ma()Lb/w/j;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavController is not available before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 10
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->L()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    return-object p2
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    .line 2
    iget-boolean p1, p0, Landroidx/navigation/fragment/NavHostFragment;->ba:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ia()Lb/o/a/n;

    move-result-object p1

    invoke-virtual {p1}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lb/o/a/C;->d(Landroidx/fragment/app/Fragment;)Lb/o/a/C;

    .line 5
    invoke-virtual {p1}, Lb/o/a/C;->a()I

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 21
    sget-object p3, Lb/w/b/d;->NavHost:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 22
    sget v0, Lb/w/b/d;->NavHost_navGraph:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iput v0, p0, Landroidx/navigation/fragment/NavHostFragment;->aa:I

    .line 24
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    sget-object p3, Lb/w/b/d;->NavHostFragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 26
    sget p2, Lb/w/b/d;->NavHostFragment_defaultNavHost:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Landroidx/navigation/fragment/NavHostFragment;->ba:Z

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 12
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 13
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 14
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-static {p1, p2}, Lb/w/J;->a(Landroid/view/View;Lb/w/j;)V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->L()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 18
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-static {p1, p2}, Lb/w/J;->a(Landroid/view/View;Lb/w/j;)V

    :cond_0
    return-void

    .line 19
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created host view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a ViewGroup"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lb/w/j;)V
    .locals 4

    .line 6
    invoke-virtual {p1}, Lb/w/j;->g()Lb/w/L;

    move-result-object v0

    new-instance v1, Lb/w/b/a;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lb/w/b/a;-><init>(Landroid/content/Context;Lb/o/a/n;)V

    .line 8
    invoke-virtual {v0, v1}, Lb/w/L;->a(Lb/w/K;)Lb/w/K;

    .line 9
    invoke-virtual {p1}, Lb/w/j;->g()Lb/w/L;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->La()Lb/w/K;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/w/L;->a(Lb/w/K;)Lb/w/K;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Lb/w/u;

    invoke-direct {v1, v0}, Lb/w/u;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    .line 4
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-virtual {v0, p0}, Lb/w/u;->a(Lb/r/k;)V

    .line 5
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/c;->c()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/w/u;->a(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 6
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->Z:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lb/w/u;->a(Z)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Z:Ljava/lang/Boolean;

    .line 10
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->e()Lb/r/H;

    move-result-object v4

    invoke-virtual {v1, v4}, Lb/w/u;->a(Lb/r/H;)V

    .line 11
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-virtual {p0, v1}, Landroidx/navigation/fragment/NavHostFragment;->a(Lb/w/j;)V

    if-eqz p1, :cond_1

    const-string v1, "android-support-nav:fragment:navControllerState"

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "android-support-nav:fragment:defaultHost"

    .line 13
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iput-boolean v2, p0, Landroidx/navigation/fragment/NavHostFragment;->ba:Z

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ia()Lb/o/a/n;

    move-result-object p1

    invoke-virtual {p1}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lb/o/a/C;->d(Landroidx/fragment/app/Fragment;)Lb/o/a/C;

    .line 17
    invoke-virtual {p1}, Lb/o/a/C;->a()I

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 18
    iget-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-virtual {p1, v1}, Lb/w/j;->b(Landroid/os/Bundle;)V

    .line 19
    :cond_3
    iget p1, p0, Landroidx/navigation/fragment/NavHostFragment;->aa:I

    if-eqz p1, :cond_4

    .line 20
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-virtual {v0, p1}, Lb/w/j;->c(I)V

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "android-support-nav:fragment:graphId"

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "android-support-nav:fragment:startDestinationArgs"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_6
    if-eqz v3, :cond_7

    .line 24
    iget-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-virtual {p1, v3, v0}, Lb/w/j;->b(ILandroid/os/Bundle;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/w/u;->a(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->Z:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->Y:Lb/w/u;

    invoke-virtual {v0}, Lb/w/j;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android-support-nav:fragment:navControllerState"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->ba:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "android-support-nav:fragment:defaultHost"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
