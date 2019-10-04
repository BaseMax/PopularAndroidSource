.class public Lcom/webengage/sdk/android/i;
.super Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;

# interfaces
.implements Lcom/webengage/sdk/android/callbacks/CustomPushRender;
.implements Lcom/webengage/sdk/android/callbacks/CustomPushRerender;
.implements Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;
.implements Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;
.implements Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;


# static fields
.field static volatile b:Lcom/webengage/sdk/android/i;

.field static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static e:Lcom/webengage/sdk/android/callbacks/CustomPushRender;

.field static f:Lcom/webengage/sdk/android/callbacks/CustomPushRerender;

.field static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/content/Context;

.field i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/i;->b:Lcom/webengage/sdk/android/i;

    if-nez v0, :cond_1

    const-class v0, Lcom/webengage/sdk/android/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/i;->b:Lcom/webengage/sdk/android/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/webengage/sdk/android/i;

    invoke-direct {v1, p0}, Lcom/webengage/sdk/android/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/webengage/sdk/android/i;->b:Lcom/webengage/sdk/android/i;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/webengage/sdk/android/i;->b:Lcom/webengage/sdk/android/i;

    return-object p0
.end method

.method protected static a(Lcom/webengage/sdk/android/callbacks/CustomPushRender;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/webengage/sdk/android/i;->e:Lcom/webengage/sdk/android/callbacks/CustomPushRender;

    :cond_0
    return-void
.end method

.method protected static a(Lcom/webengage/sdk/android/callbacks/CustomPushRerender;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/webengage/sdk/android/i;->f:Lcom/webengage/sdk/android/callbacks/CustomPushRerender;

    :cond_0
    return-void
.end method

.method protected static a(Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;)V
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected static a(Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;)V
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected static a(Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;)V
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected static a(Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;)V
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/i;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected static a(Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;Lcom/webengage/sdk/android/Analytics;Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_2

    sget-object v0, Lcom/webengage/sdk/android/i;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/i;->h:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/i;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/webengage/sdk/android/i;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/webengage/sdk/android/d;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;->onAnonymousIdChanged(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected static b(Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;)V
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected static b(Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;)V
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected static b(Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;)V
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/i;->e:Lcom/webengage/sdk/android/callbacks/CustomPushRender;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnonymousIdChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/webengage/sdk/android/i;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v3, Lcom/webengage/sdk/android/i$9;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/webengage/sdk/android/i$9;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAppInstalled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/webengage/sdk/android/i$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/webengage/sdk/android/i$3;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAppUpgraded(Landroid/content/Context;II)V
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/webengage/sdk/android/i$4;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/webengage/sdk/android/i$4;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGCMMessageReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/webengage/sdk/android/i$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/webengage/sdk/android/i$2;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGCMRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/webengage/sdk/android/i$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/webengage/sdk/android/i$1;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInAppNotificationClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;Ljava/lang/String;)Z
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    invoke-interface {v1, v2, p2, p3}, Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;->onInAppNotificationClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr p1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    return p1
.end method

.method public onInAppNotificationDismissed(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)V
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/webengage/sdk/android/i$8;

    invoke-direct {v2, p0, v0, p2}, Lcom/webengage/sdk/android/i$8;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInAppNotificationPrepared(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)Lcom/webengage/sdk/android/actions/render/InAppNotificationData;
    .locals 2

    sget-object p1, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;->onInAppNotificationPrepared(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    move-result-object p2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public onInAppNotificationShown(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)V
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/i;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/webengage/sdk/android/i$7;

    invoke-direct {v2, p0, v0, p2}, Lcom/webengage/sdk/android/i$7;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPushNotificationActionClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Ljava/lang/String;)Z
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    invoke-interface {v1, v2, p2, p3}, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;->onPushNotificationActionClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr p1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    return p1
.end method

.method public onPushNotificationClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    invoke-interface {v1, v2, p2}, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;->onPushNotificationClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z

    move-result v1

    or-int/2addr p1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    return p1
.end method

.method public onPushNotificationDismissed(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/webengage/sdk/android/i$6;

    invoke-direct {v2, p0, v0, p2}, Lcom/webengage/sdk/android/i$6;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPushNotificationReceived(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Lcom/webengage/sdk/android/actions/render/PushNotificationData;
    .locals 2

    sget-object p1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;->onPushNotificationReceived(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    move-result-object p2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public onPushNotificationShown(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V
    .locals 3

    sget-object p1, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/webengage/sdk/android/i$5;

    invoke-direct {v2, p0, v0, p2}, Lcom/webengage/sdk/android/i$5;-><init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/i;->e:Lcom/webengage/sdk/android/callbacks/CustomPushRender;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/webengage/sdk/android/callbacks/CustomPushRender;->onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRerender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Landroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/i;->f:Lcom/webengage/sdk/android/callbacks/CustomPushRerender;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/webengage/sdk/android/callbacks/CustomPushRerender;->onRerender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Landroid/os/Bundle;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
