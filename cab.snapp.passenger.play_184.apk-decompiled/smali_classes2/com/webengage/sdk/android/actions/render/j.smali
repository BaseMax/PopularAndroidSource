.class public abstract Lcom/webengage/sdk/android/actions/render/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

.field protected c:I

.field protected d:Z

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Landroid/app/Notification$Builder;

.field protected g:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/j;->d:Z

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->g:Landroid/widget/RemoteViews;

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V
    .locals 1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/j;->c:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/j;->e:Ljava/util/List;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCustomData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "we_push_custom"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/j;->d:Z

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getChannelId()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/v;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Channel id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not registered, using default"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "we_wk_push_channel"

    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    :goto_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getSmallIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/j;->d:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;->g()Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getContentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    return-void

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_6
    return-void
.end method

.method private g()Landroid/widget/RemoteViews;
    .locals 3

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/j;->d()Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/webengage/sdk/android/R$id;->push_base_margin_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_title:I

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_message:I

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method private h()V
    .locals 10

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCallToActions()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/render/CallToAction;->isPrimeAction()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-static {v8, v9, v5, v7}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructPushClickPendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lcom/webengage/sdk/android/actions/render/CallToAction;Z)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/render/CallToAction;->isNative()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-static {v6, v8, v5, v7}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructPushClickPendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lcom/webengage/sdk/android/actions/render/CallToAction;Z)Landroid/app/PendingIntent;

    move-result-object v6

    iget-boolean v8, p0, Lcom/webengage/sdk/android/actions/render/j;->d:Z

    if-nez v8, :cond_4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-lt v7, v1, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v8, :cond_2

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v3, v5, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v7, v8, :cond_3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v9, :cond_3

    new-instance v7, Landroid/app/Notification$Action$Builder;

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v3, v5, v6}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_0

    new-instance v7, Landroid/app/Notification$Action$Builder;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5, v6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_1
    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/j;->g:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/4 v9, -0x1

    if-eq v4, v7, :cond_7

    if-eq v4, v2, :cond_6

    const/4 v7, 0x3

    if-eq v4, v7, :cond_5

    const/4 v7, -0x1

    goto :goto_2

    :cond_5
    sget v7, Lcom/webengage/sdk/android/R$id;->action3:I

    goto :goto_2

    :cond_6
    sget v7, Lcom/webengage/sdk/android/R$id;->action2:I

    goto :goto_2

    :cond_7
    sget v7, Lcom/webengage/sdk/android/R$id;->action_list:I

    invoke-virtual {v8, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->action1:I

    :goto_2
    if-eq v7, v9, :cond_0

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/j;->g:Landroid/widget/RemoteViews;

    invoke-virtual {v8, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/j;->g:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/j;->g:Landroid/widget/RemoteViews;

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-static {v0, v3}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructPushDeletePendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v1, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_9

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getPriority()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v0, v4, :cond_9

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getPriority()I

    move-result v4

    add-int/2addr v4, v2

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_c

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getVibrateFlag()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-static {v1, v0}, Lcom/webengage/sdk/android/utils/e;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_a
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    :cond_b
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getLedColor()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getLedColor()I

    move-result v1

    const/16 v2, 0x1f4

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    :cond_c
    return-void

    :array_0
    .array-data 4
        -0x2
        -0x1
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private i()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/j;->g:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/j;->g:Landroid/widget/RemoteViews;

    iput-object v2, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_1

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->f:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/j;->g:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getAccentColor()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getAccentColor()I

    move-result v2

    iput v2, v0, Landroid/app/Notification;->color:I

    :cond_3
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    :try_start_0
    iget v2, p0, Lcom/webengage/sdk/android/actions/render/j;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v2, 0x5

    iput v2, v0, Landroid/app/Notification;->defaults:I

    iget v2, p0, Lcom/webengage/sdk/android/actions/render/j;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/webengage/sdk/android/utils/a/g;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v0

    const-string v1, "WebEngage"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Error while decoding input stream to bitmap."

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Exception while decoding input stream to bitmap."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not download image "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    :cond_1
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lcom/webengage/sdk/android/utils/a/f;)Lcom/webengage/sdk/android/utils/a/g;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    :cond_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f;->i()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method abstract a()V
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/j;->b(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/j;->b()V

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;->f()V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/j;->c()V

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;->h()V

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;->i()V

    const/4 p1, 0x1

    return p1
.end method

.method abstract b()V
.end method

.method abstract c()V
.end method

.method protected d()Landroid/widget/RemoteViews;
    .locals 5

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/webengage/sdk/android/R$layout;->push_base:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_small_head_container:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getSmallIcon()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    sget v3, Lcom/webengage/sdk/android/R$id;->small_icon:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getAppName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v3, Lcom/webengage/sdk/android/R$id;->app_name:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/webengage/sdk/android/R$id;->custom_small_head_container:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_icon:I

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_4

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_icon:I

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/j;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    :cond_4
    :goto_1
    sget v1, Lcom/webengage/sdk/android/R$id;->push_base_margin_view:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v0
.end method

.method protected e()Z
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/j;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCallToActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/CallToAction;->isPrimeAction()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/CallToAction;->isNative()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/j;->b(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/j;->a()V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/j;->b()V

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;->f()V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/j;->c()V

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;->h()V

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;->i()V

    const/4 p1, 0x1

    return p1
.end method
