.class Lcom/webengage/sdk/android/actions/database/h;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/h;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/webengage/sdk/android/l;)V
    .locals 3

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->q()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p1, v2}, Lcom/webengage/sdk/android/l;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {p2, v0, p3}, Lcom/webengage/sdk/android/actions/database/w;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/l;->b(Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)V
    .locals 2

    if-eqz p2, :cond_2

    sget-object v0, Lcom/webengage/sdk/android/actions/database/h$1;->b:[I

    invoke-virtual {p2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    :try_start_0
    new-instance v0, Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    new-instance v1, Lorg/a/c;

    invoke-virtual {p0, p2}, Lcom/webengage/sdk/android/actions/database/h;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;-><init>(Lorg/a/c;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCustomData()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCustomData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/k;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/l;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    new-instance v1, Lorg/a/c;

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/database/h;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;-><init>(Lorg/a/c;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->isBigNotification()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getStyle()Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/webengage/sdk/android/actions/database/h$1;->a:[I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getStyle()Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/a/b;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/utils/a/b;->a(Ljava/util/Set;)I

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getCallToActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->getImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/a/b;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/utils/a/b;->a(Ljava/util/Set;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/webengage/sdk/android/l;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/l;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v1, "custom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "application"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const-string v1, "system"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method private b(Lcom/webengage/sdk/android/l;)V
    .locals 6

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->i()Ljava/util/Date;

    move-result-object v3

    const-string v4, "event_time"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "we_wk_sys"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object v1

    const-string v3, "system"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "we_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->d(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->A()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p1, v4}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->e(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Map;

    const-string v2, "action_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "gcm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "action_data"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "message_action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "show_system_tray_notification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "message_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lorg/a/c;

    invoke-direct {v2, v0}, Lorg/a/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->d(Ljava/lang/Object;)V

    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_7

    const-string v0, "identifier"

    invoke-virtual {v2, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const-string v3, "ping"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "message_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v2, Lcom/webengage/sdk/android/utils/DataType;->MAP:Lcom/webengage/sdk/android/utils/DataType;

    invoke-static {v0, v2, v6}, Lcom/webengage/sdk/android/utils/DataType;->convert(Ljava/lang/Object;Lcom/webengage/sdk/android/utils/DataType;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v0, v5

    :goto_1
    const-string v2, "push_ping"

    iget-object v3, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v2, v0, v5, v5, v3}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_2
    const-string v0, "config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/webengage/sdk/android/af;->d:Lcom/webengage/sdk/android/af;

    :goto_2
    iget-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v0, v5, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_3

    :cond_3
    const-string v0, "fetch_profile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/webengage/sdk/android/af;->l:Lcom/webengage/sdk/android/af;

    goto :goto_2

    :cond_4
    const-string v0, "jcx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/webengage/sdk/android/af;->m:Lcom/webengage/sdk/android/af;

    goto :goto_2

    :cond_5
    const-string v3, "event"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "internal_event"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const-string v3, "change_data"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_7

    const-string v2, "path"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/util/List;Ljava/lang/Object;)V

    :catch_1
    :cond_7
    :goto_3
    move-object v2, v5

    goto/16 :goto_15

    :cond_8
    :goto_4
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/l;

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->f(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->d(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->a(Ljava/util/Date;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/webengage/sdk/android/actions/database/w;

    iget-object v4, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/webengage/sdk/android/actions/database/w;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_3e

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object v4

    const-string v7, "system"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->i()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->h()Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object v8, v4

    const-string v4, "user_update_geo_info"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "WebEngage"

    if-nez v4, :cond_3b

    const-string v4, "user_update"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "user_delete_attributes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_10

    :cond_a
    const-string v4, "user_increment"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->f(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2, v8, v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->g(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_b
    const-string v4, "user_logged_in"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->h()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/webengage/sdk/android/actions/database/y;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/y;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/webengage/sdk/android/actions/database/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->s()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const-string v4, "first_logged_in"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const-string v4, "last_logged_in"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/webengage/sdk/android/actions/database/y;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/y;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/webengage/sdk/android/actions/database/y;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/util/Map;)V

    const-string v2, "User successfully Logged in"

    invoke-static {v7, v2}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v7

    sget-object v11, Lcom/webengage/sdk/android/actions/database/f;->d:Lcom/webengage/sdk/android/actions/database/f;

    sget-object v12, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    const-string v9, "cuid"

    invoke-virtual/range {v7 .. v12}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/webengage/sdk/android/actions/database/f;Lcom/webengage/sdk/android/actions/database/o;)V

    goto :goto_6

    :cond_d
    const-string v4, "user_logged_out"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v2, "User successfully Logged out"

    invoke-static {v7, v2}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->b(Lcom/webengage/sdk/android/l;)V

    goto/16 :goto_3

    :cond_e
    const-string v4, "notification_click"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "total_view_count_session"

    const-string v9, "total_view_count"

    const-string v10, "journey_id"

    const-string v12, "scope"

    const-string v15, "experiment_id"

    const-string v5, "journeyId"

    const-wide/16 v16, 0x1

    if-eqz v4, :cond_11

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_2
    new-instance v15, Lcom/webengage/sdk/android/actions/rules/c;

    iget-object v6, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-direct {v15, v6}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v15, v4, v6}, Lcom/webengage/sdk/android/actions/rules/c;->a(Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v15

    sget-object v11, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v15, v6, v11}, Lcom/webengage/sdk/android/actions/database/DataHolder;->e(Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_click"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v18, v3

    sget-object v3, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v15, v8, v13, v14, v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x5b

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    add-int/lit8 v4, v3, 0x1

    const/16 v7, 0x5d

    invoke-virtual {v11, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->b(Ljava/util/Map;)V

    move-object/from16 v3, v18

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->b(Lcom/webengage/sdk/android/l;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_14

    :catch_2
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->d(Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_11
    const-string v4, "notification_view"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_3
    new-instance v6, Lcom/webengage/sdk/android/actions/rules/c;

    iget-object v11, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Landroid/content/Context;)V

    sget-object v11, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v6, v4, v11}, Lcom/webengage/sdk/android/actions/rules/c;->a(Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v11

    sget-object v13, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v11, v6, v13}, Lcom/webengage/sdk/android/actions/database/DataHolder;->e(Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_view"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v18, v3

    sget-object v3, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v13, v8, v14, v15, v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_view_session"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    sget-object v15, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v3, v8, v13, v14, v15}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_view"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    sget-object v15, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v13, v8, v3, v14, v15}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    :cond_12
    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x5b

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    add-int/lit8 v4, v3, 0x1

    const/16 v7, 0x5d

    invoke-virtual {v11, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->b(Ljava/util/Map;)V

    move-object/from16 v3, v18

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->b(Lcom/webengage/sdk/android/l;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_14

    :cond_15
    const-string v4, "notification_close"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_4
    new-instance v6, Lcom/webengage/sdk/android/actions/rules/c;

    iget-object v11, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Landroid/content/Context;)V

    sget-object v11, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v6, v4, v11}, Lcom/webengage/sdk/android/actions/rules/c;->a(Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v11

    sget-object v13, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v11, v6, v13}, Lcom/webengage/sdk/android/actions/database/DataHolder;->e(Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_close_session"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v18, v3

    sget-object v3, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v13, v8, v14, v15, v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_close"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    sget-object v15, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v3, v8, v13, v14, v15}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x5b

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    add-int/lit8 v4, v3, 0x1

    const/16 v7, 0x5d

    invoke-virtual {v11, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->b(Ljava/util/Map;)V

    move-object/from16 v3, v18

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->b(Lcom/webengage/sdk/android/l;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_14

    :cond_18
    const-string v4, "notification_control_group"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_5
    new-instance v6, Lcom/webengage/sdk/android/actions/rules/c;

    iget-object v7, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v6, v4, v7}, Lcom/webengage/sdk/android/actions/rules/c;->a(Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v7

    sget-object v9, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v7, v6, v9}, Lcom/webengage/sdk/android/actions/database/DataHolder;->e(Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_hide_session"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    sget-object v14, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v9, v8, v11, v13, v14}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_hide"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    sget-object v14, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v9, v8, v11, v13, v14}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;)V

    const/16 v9, 0x5b

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_19

    add-int/lit8 v11, v9, 0x1

    const/16 v13, 0x5d

    invoke-virtual {v7, v13, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1a

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->b(Ljava/util/Map;)V

    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_1b
    const-string v3, "control_group"

    const-string v5, "controlGroup"

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bucket_value"

    invoke-static {v4, v8}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/l;->a(Ljava/util/Map;)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->b(Lcom/webengage/sdk/android/l;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_14

    :cond_1c
    const-string v4, "push_notification_received"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :goto_7
    sget-object v2, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-direct {v1, v0, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)V

    :goto_8
    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;)V

    goto/16 :goto_12

    :cond_1d
    const-string v4, "push_notification_close"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->c:Ljava/lang/Object;

    iget-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-direct {v1, v0, v4}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;)V

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->b(Lcom/webengage/sdk/android/l;)V

    :goto_9
    invoke-direct {v1, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/webengage/sdk/android/actions/database/h;->g(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_1e
    const-string v4, "push_notification_view"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :goto_a
    goto :goto_7

    :cond_1f
    const-string v4, "push_notification_click"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_39

    const-string v4, "push_notification_rating_submitted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto/16 :goto_f

    :cond_20
    const-string v4, "push_notification_item_view"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_a

    :cond_21
    const-string v4, "we_wk_activity_start"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->r()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_22

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_22
    if-eqz v0, :cond_23

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_23
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/util/Map;)V

    goto/16 :goto_14

    :cond_24
    const-string v4, "we_wk_screen_navigated"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->r()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_25

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_25
    if-eqz v2, :cond_26

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_26
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/util/Map;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/webengage/sdk/android/actions/database/f;->e:Lcom/webengage/sdk/android/actions/database/f;

    const-string v5, "page_view_count_session"

    invoke-virtual {v2, v8, v5, v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/webengage/sdk/android/actions/database/f;->e:Lcom/webengage/sdk/android/actions/database/f;

    const-string v5, "total_page_view_count"

    invoke-virtual {v2, v8, v5, v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Ljava/util/Map;)V

    goto/16 :goto_14

    :cond_27
    const-string v4, "visitor_new_session"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/webengage/sdk/android/actions/database/y;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/y;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/database/h;->i()Ljava/lang/String;

    move-result-object v2

    :cond_28
    invoke-virtual {v4, v2}, Lcom/webengage/sdk/android/actions/database/y;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_29

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/util/Map;)V

    :cond_29
    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "online"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "session_count"

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->f(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->l()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, v16

    if-nez v2, :cond_2b

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sget-object v6, Lcom/webengage/sdk/android/actions/database/f;->e:Lcom/webengage/sdk/android/actions/database/f;

    const-string v7, "first_session_start_time"

    invoke-virtual {v2, v8, v7, v4, v6}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    sget-object v4, Lcom/webengage/sdk/android/am;->x:Lcom/webengage/sdk/android/am;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    sget-object v7, Lcom/webengage/sdk/android/actions/database/f;->d:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v2, v8, v4, v6, v7}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/webengage/sdk/android/actions/database/f;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    sget-object v4, Lcom/webengage/sdk/android/am;->y:Lcom/webengage/sdk/android/am;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/webengage/sdk/android/actions/database/f;->d:Lcom/webengage/sdk/android/actions/database/f;

    const-string v7, "direct"

    invoke-virtual {v2, v8, v4, v7, v6}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/webengage/sdk/android/actions/database/f;)V

    goto :goto_b

    :cond_2a
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v6, Lcom/webengage/sdk/android/actions/database/f;->e:Lcom/webengage/sdk/android/actions/database/f;

    const-string v7, "b_session_count"

    invoke-virtual {v2, v8, v7, v4, v6}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Lcom/webengage/sdk/android/actions/database/f;)V

    :cond_2b
    :goto_b
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/WebEngageConfig;->isLocationTrackingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/o;->b()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2d

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "latitude"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "longitude"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lcom/webengage/sdk/android/actions/database/w;->a(Ljava/lang/Double;Ljava/lang/Double;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2c
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2, v8, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2d
    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/database/w;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v1, v0, v3, v5}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    goto/16 :goto_14

    :cond_2e
    const-string v4, "visitor_session_close"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "online"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const-string v5, "last_seen"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2f
    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    goto/16 :goto_14

    :cond_30
    const-string v4, "app_installed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_8

    :cond_31
    const-string v4, "app_upgraded"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "app_crashed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_e

    :cond_32
    const-string v4, "gcm_registered"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x0

    :goto_c
    invoke-direct {v1, v0, v3, v4}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    goto/16 :goto_14

    :cond_33
    const/4 v4, 0x0

    const-string v5, "push_ping"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    goto :goto_c

    :cond_34
    const-string v3, "we_wk_session_delay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    :goto_d
    goto/16 :goto_13

    :cond_35
    const-string v3, "we_wk_page_delay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_d

    :cond_36
    const-string v3, "we_wk_leave_intent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_d

    :cond_37
    const-string v0, "geofence_transition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_38
    :goto_e
    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/database/w;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_8

    :cond_39
    :goto_f
    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->c:Ljava/lang/Object;

    iget-object v2, v1, Lcom/webengage/sdk/android/actions/database/h;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->l()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_3a

    const-string v5, "dismiss_flag"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_3a
    sget-object v4, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-direct {v1, v0, v4}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;)V

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->b(Lcom/webengage/sdk/android/l;)V

    if-eqz v5, :cond_3f

    goto/16 :goto_9

    :cond_3b
    :goto_10
    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v5

    invoke-virtual {v5, v8, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v5, "user_update_geo_info"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v5, "latitude"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    const-string v6, "longitude"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    if-eqz v5, :cond_3c

    if-eqz v6, :cond_3c

    invoke-virtual {v3, v5, v6}, Lcom/webengage/sdk/android/actions/database/w;->a(Ljava/lang/Double;Ljava/lang/Double;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v5

    invoke-virtual {v5, v8, v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v3, :cond_3c

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Lcom/webengage/sdk/android/l;->b(Ljava/util/Map;)V

    :cond_3c
    invoke-virtual {v0}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, v8, v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "user_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "User attributes successfully saved"

    :goto_11
    invoke-static {v7, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_3d
    const-string v0, "user_delete_attributes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "User attributes successfully removed"

    goto :goto_11

    :cond_3e
    :goto_12
    const/4 v2, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/webengage/sdk/android/actions/database/h;->a(Lcom/webengage/sdk/android/l;Lcom/webengage/sdk/android/actions/database/w;Z)V

    :goto_13
    invoke-direct {v1, v0}, Lcom/webengage/sdk/android/actions/database/h;->b(Lcom/webengage/sdk/android/l;)V

    :cond_3f
    :goto_14
    const/4 v2, 0x0

    :goto_15
    return-object v2
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
