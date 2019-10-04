.class Lcom/webengage/sdk/android/actions/render/h;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
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
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    const-string v1, ""

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->d:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/h;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/h;->f:Z

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->isCustomRender()Z

    move-result p1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/h;->e:Z

    const-string v1, "WebEngage"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/h;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/i;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getStyle()Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    move-result-object p1

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/k;->a(Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;)Lcom/webengage/sdk/android/callbacks/CustomPushRender;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-interface {v0, p1, v1}, Lcom/webengage/sdk/android/callbacks/CustomPushRender;->onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "CustomPushRender is null"

    :goto_2
    invoke-static {v1, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/k;->c(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v2, "we_wk_render"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/h;->f:Z

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/h;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getStyle()Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    move-result-object v0

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/k;->b(Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;)Lcom/webengage/sdk/android/callbacks/CustomPushRerender;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/h;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-interface {v0, v1, v2, p1}, Lcom/webengage/sdk/android/callbacks/CustomPushRerender;->onRerender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Landroid/os/Bundle;)Z

    move-result p1

    goto :goto_1

    :cond_5
    const-string p1, "CustomPushRerender is null"

    goto :goto_2

    :cond_6
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
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

    const-string v0, "first_time"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/h;->e:Z

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/h;->e:Z

    const-string v1, "id"

    const-string v2, "action_data"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez v0, :cond_0

    check-cast p1, Lcom/webengage/sdk/android/l;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->k()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->j()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->l()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->d:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/render/h;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    new-instance v3, Lorg/a/c;

    invoke-direct {v3, p1}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;-><init>(Lorg/a/c;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    :cond_2
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->isAmplified()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "amplified"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/h;->e:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "experiment_id"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    const-string v3, "push_notification_received"

    invoke-static {v3, p1, v1, v0, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/render/h;->c(Ljava/lang/Object;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "WebEngage"

    const-string v1, "Push-opt-in is false, hence not rendering."

    invoke-static {p1, v1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/render/h;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1, v1, v2}, Lcom/webengage/sdk/android/i;->onPushNotificationReceived(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    :cond_4
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->shouldRender()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    return-object p1

    :cond_5
    return-object v0

    :cond_6
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/render/h;->d(Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 7

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/h;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    const-string v3, "push_notification_view"

    invoke-static {v3, p1, v1, v0, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/render/h;->c(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/render/h;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1, v0, v1}, Lcom/webengage/sdk/android/i;->onPushNotificationShown(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getStyle()Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->CAROUSEL_V1:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getCallToActions()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCurrentIndex()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    if-eqz v3, :cond_1

    const-string v4, "current"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    const-string v4, "navigation"

    if-eqz v3, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, "right"

    :goto_0
    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v6, "call_to_action"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "navigated_from"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    sget-object p1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    const-string v4, "push_notification_item_view"

    invoke-static {v4, v1, v2, v0, v3}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-static {p1, v1, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->c:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getStyle()Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;->RATING_V1:Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    if-eq p1, v1, :cond_7

    iget-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/h;->f:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    sget-object p1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/h;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    const-string v5, "push_notification_rerender"

    invoke-static {v5, v1, v2, v3, v4}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-static {p1, v1, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/h;->b:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_6
    const-string p1, "WebEngage"

    const-string v0, "Push notification is not rendered."

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
