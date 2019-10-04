.class Lcom/webengage/sdk/android/actions/render/f;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/f;->c:Z

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/f;->d:Z

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/f;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/f;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/f;->h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->A()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

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

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v2

    const-string v3, "$we_getResolvedData"

    invoke-virtual {v2, v3}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->getFunction(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/rules/a/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/e;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/webengage/sdk/android/utils/DataType;->STRING:Lcom/webengage/sdk/android/utils/DataType;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/webengage/sdk/android/utils/DataType;->convert(Ljava/lang/Object;Lcom/webengage/sdk/android/utils/DataType;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v1

    :goto_1
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/webengage/sdk/android/utils/a/f$a;

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/f;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/f;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, p1, v6}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lcom/webengage/sdk/android/utils/a/e;->b:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    const/4 p1, 0x3

    invoke-virtual {v3, p1}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/util/Map;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f;->i()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/f;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    :goto_2
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string p1, "WebEngage"

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/f;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/Analytics;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/f;->f:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/webengage/sdk/android/actions/render/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "In-App data: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/f;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/f;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/render/f;->g:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/webengage/sdk/android/actions/render/f;->h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/f;->h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getData()Lorg/a/c;

    move-result-object v3

    const-string v4, "layoutAttributes"

    invoke-virtual {v3, v4}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    const-string v4, "allowLandscape"

    invoke-virtual {v3, v4, v0}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/webengage/sdk/android/actions/render/f;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v3

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/f;->h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v3, v5, v6}, Lcom/webengage/sdk/android/i;->onInAppNotificationPrepared(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/f;->h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    :cond_1
    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/f;->h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/f;->h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->shouldRender()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v5, Lcom/webengage/sdk/android/actions/render/m;

    invoke-direct {v5}, Lcom/webengage/sdk/android/actions/render/m;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v7, "fullscreen"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "notificationData"

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/render/f;->h:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "baseUrl"

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/webengage/sdk/android/actions/database/DataHolder;->z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/webengage/sdk/android/actions/render/m;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v5, v4}, Lcom/webengage/sdk/android/actions/render/m;->setRetainInstance(Z)V

    invoke-virtual {v5, v3, p1}, Lcom/webengage/sdk/android/actions/render/m;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/f;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/render/f;->d(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/f;->c:Z

    :cond_4
    :goto_1
    return-object v1
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 6
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

    const-string v0, "controlGroup"

    const-string v1, "action_data"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/f;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/f;->b()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/f;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/f;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/f;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/f;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/f;->c:Z

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Lcom/webengage/sdk/android/actions/rules/c;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/f;->e:Ljava/lang/String;

    sget-object v3, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {p1, v2, v3}, Lcom/webengage/sdk/android/actions/rules/c;->a(Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    const-string p1, "WebEngage"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "In-app ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has fallen in control group"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/f;->c:Z

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/f;->d:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "experiment_id"

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/f;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    const-string v1, "notification_control_group"

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v3, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/f;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/f;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/f;->c:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/f;->d:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Z)V

    :cond_0
    return-void
.end method
