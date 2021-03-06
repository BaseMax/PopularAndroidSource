.class Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;
.super Ljava/lang/Object;
.source "ApptentiveNotificationObserverList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;
    }
.end annotation


# instance fields
.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    return-void
.end method

.method private contains(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Z
    .locals 1

    .line 136
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->indexOf(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private indexOf(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)I
    .locals 3

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;

    if-ne v1, p1, :cond_0

    return v0

    .line 124
    :cond_0
    const-class v2, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/ObjectUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method addObserver(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;Z)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 83
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->contains(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;

    invoke-direct {p2, p1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;-><init>(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)V

    move-object p1, p2

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Observer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method notifyObservers(Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;)V
    .locals 8

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    :goto_0
    iget-object v4, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    .line 42
    iget-object v4, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;

    .line 43
    const-class v6, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;

    invoke-static {v4, v6}, Lcom/apptentive/android/sdk/util/ObjectUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;

    if-eqz v6, :cond_1

    .line 44
    invoke-virtual {v6}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;->isReferenceLost()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 52
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 54
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;

    invoke-interface {v4, p1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;->onReceiveNotification(Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    const-string v6, "Exception while posting notification: %s"

    .line 56
    new-array v7, v5, [Ljava/lang/Object;

    aput-object p1, v7, v1

    invoke-static {v4, v6, v7}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {v4}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_5

    .line 63
    iget-object p1, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    :goto_5
    if-ltz p1, :cond_5

    .line 64
    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/ObjectUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList$ObserverWeakReference;->isReferenceLost()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method removeObserver(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)Z
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->indexOf(Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserver;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationObserverList;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
