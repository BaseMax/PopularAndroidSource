.class public Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver;
.super Ljava/lang/Object;
.source "FloatingQuickTipLifeCycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver$DrawerListener;
    }
.end annotation


# instance fields
.field drawerListener:Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver$DrawerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver$DrawerListener;

    invoke-direct {v0}, Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver$DrawerListener;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver;->drawerListener:Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver$DrawerListener;

    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-static {}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip;->dismissAll()V

    .line 36
    instance-of v0, p1, Lcom/ebay/mobile/activities/CoreActivity;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/ebay/mobile/activities/CoreActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver;->drawerListener:Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver$DrawerListener;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    instance-of v0, p1, Lcom/ebay/mobile/activities/CoreActivity;

    if-eqz v0, :cond_0

    .line 25
    check-cast p1, Lcom/ebay/mobile/activities/CoreActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver;->drawerListener:Lcom/ebay/mobile/activities/FloatingQuickTipLifeCycleObserver$DrawerListener;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    :cond_0
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
