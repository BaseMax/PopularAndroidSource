.class Lcom/webengage/sdk/android/actions/render/l;
.super Lcom/webengage/sdk/android/actions/render/j;

# interfaces
.implements Lcom/webengage/sdk/android/callbacks/CustomPushRender;
.implements Lcom/webengage/sdk/android/callbacks/CustomPushRerender;


# instance fields
.field private h:Ljava/lang/Long;

.field private i:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    return-void
.end method

.method private f()Landroid/widget/RemoteViews;
    .locals 4

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/l;->d()Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_message:I

    const-string v2, "setMaxLines"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v1

    sget v3, Lcom/webengage/sdk/android/R$id;->custom_head_container:I

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz v1, :cond_0

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_title:I

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getBigContentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_message:I

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_container:I

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getBackgroundColor()I

    move-result v1

    const-string v3, "setBackgroundColor"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 11

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\nIsInputStreamNull: "

    const-string v3, "\nResponseCode: "

    const-string v4, "\nURL: "

    const-string v5, "Exception: "

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Lcom/webengage/sdk/android/utils/a/f$a;

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v8}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v10, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    invoke-direct {v0, v8, v9, v10}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    const-string v8, "landscape"

    invoke-virtual {v0, v8}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/webengage/sdk/android/utils/a/f$a;->a(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/l;->a(Lcom/webengage/sdk/android/utils/a/f;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->a()Ljava/lang/Exception;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->l()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/webengage/sdk/android/actions/render/l;->a(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/webengage/sdk/android/utils/a/f$a;

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v8}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v10, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    invoke-direct {v0, v8, v9, v10}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    const-string v6, "portrait"

    invoke-virtual {v0, v6}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/webengage/sdk/android/utils/a/f$a;->a(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/l;->a(Lcom/webengage/sdk/android/utils/a/f;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->a()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/webengage/sdk/android/actions/render/l;->a(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    :cond_5
    return-void
.end method

.method b()V
    .locals 6

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/utils/a/f$a;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v4, v5}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/l;->a(Lcom/webengage/sdk/android/utils/a/f;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/l;->a(Lcom/webengage/sdk/android/utils/a/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/webengage/sdk/android/utils/a/f$a;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/l;->a(Lcom/webengage/sdk/android/utils/a/f;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/l;->a(Lcom/webengage/sdk/android/utils/a/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c()V
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/l;->f()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/l;->g:Landroid/widget/RemoteViews;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/webengage/sdk/android/R$layout;->rating_v1:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v2, Lcom/webengage/sdk/android/R$id;->rating_v1_star_body:I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getBackgroundColor()I

    move-result v3

    const-string v4, "setBackgroundColor"

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->h:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->h:Ljava/lang/Long;

    :goto_0
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->f:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/l;->h:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    sget v2, Lcom/webengage/sdk/android/R$id;->rating_v1_frame:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_3
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_image:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_image:I

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_4
    sget v2, Lcom/webengage/sdk/android/R$id;->rating_v1_frame:I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_icon:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_icon:I

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_5
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_title:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_title:I

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_title:I

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentTextColor()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_6
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_message:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_message:I

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_message:I

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getContentTextColor()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_7
    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_submit:I

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getSubmitCTA()Lcom/webengage/sdk/android/actions/render/CallToAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_8

    sget v0, Lcom/webengage/sdk/android/R$id;->rating_v1_submit:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructPushRatingSubmitPendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget v4, Lcom/webengage/sdk/android/R$id;->rating_v1_submit:I

    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_2
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/webengage/sdk/android/R$drawable;->star_selected:I

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/webengage/sdk/android/R$drawable;->star_unselected:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    :goto_3
    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v6}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->getRateScale()I

    move-result v6

    if-gt v5, v6, :cond_13

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "current"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/render/l;->h:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "when"

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "we_wk_render"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/render/l;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/l;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "rating_v1_star"

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v6}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructRerenderPendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v6

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star10:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star10:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_9

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star10:I

    goto/16 :goto_4

    :cond_9
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star10:I

    goto/16 :goto_5

    :pswitch_1
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star9:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star9:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_a

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star9:I

    goto/16 :goto_4

    :cond_a
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star9:I

    goto/16 :goto_5

    :pswitch_2
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star8:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star8:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_b

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star8:I

    goto/16 :goto_4

    :cond_b
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star8:I

    goto/16 :goto_5

    :pswitch_3
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star7:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star7:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_c

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star7:I

    goto/16 :goto_4

    :cond_c
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star7:I

    goto/16 :goto_5

    :pswitch_4
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star6:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star6:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_d

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star6:I

    goto/16 :goto_4

    :cond_d
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star6:I

    goto/16 :goto_5

    :pswitch_5
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star5:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star5:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_e

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star5:I

    goto :goto_4

    :cond_e
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star5:I

    goto :goto_5

    :pswitch_6
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star4:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star4:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_f

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star4:I

    goto :goto_4

    :cond_f
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star4:I

    goto :goto_5

    :pswitch_7
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star3:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star3:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_10

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star3:I

    goto :goto_4

    :cond_10
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star3:I

    goto :goto_5

    :pswitch_8
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star2:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star2:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_11

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star2:I

    goto :goto_4

    :cond_11
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star2:I

    goto :goto_5

    :pswitch_9
    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star1:I

    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Lcom/webengage/sdk/android/R$id;->rating_v1_star1:I

    invoke-virtual {v1, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_12

    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star1:I

    :goto_4
    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_12
    sget v6, Lcom/webengage/sdk/android/R$id;->rating_v1_star1:I

    :goto_5
    invoke-virtual {v1, v6, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_13
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->g:Landroid/widget/RemoteViews;

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    invoke-virtual {v0, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->g:Landroid/widget/RemoteViews;

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/j;->onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z

    move-result p1

    return p1
.end method

.method public onRerender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Landroid/os/Bundle;)Z
    .locals 2

    if-eqz p3, :cond_0

    const-string v0, "when"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/l;->h:Ljava/lang/Long;

    const-string v0, "current"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/l;->i:Ljava/lang/Integer;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/j;->a(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z

    move-result p1

    return p1
.end method
