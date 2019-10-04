.class public Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;
.super Ljava/lang/Object;
.source "ApptentiveNotification.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iput-object p1, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->userInfo:Ljava/util/Map;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->getUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUserInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->userInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->userInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/util/ObjectUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getUserInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->userInfo:Ljava/util/Map;

    return-object v0
.end method

.method public hasName(Ljava/lang/String;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "name=%s userInfo={%s}"

    const/4 v1, 0x2

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apptentive/android/sdk/notifications/ApptentiveNotification;->userInfo:Ljava/util/Map;

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/StringUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
