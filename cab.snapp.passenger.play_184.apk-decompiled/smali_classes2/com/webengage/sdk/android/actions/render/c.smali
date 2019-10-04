.class public Lcom/webengage/sdk/android/actions/render/c;
.super Lcom/webengage/sdk/android/actions/render/j;

# interfaces
.implements Lcom/webengage/sdk/android/callbacks/CustomPushRender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;-><init>()V

    return-void
.end method

.method private f()Landroid/widget/RemoteViews;
    .locals 5

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/c;->d()Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_message:I

    const-string v2, "setMaxLines"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/c;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getBigPictureStyleData()Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v3, Lcom/webengage/sdk/android/R$id;->custom_title:I

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;->getBigContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v3, Lcom/webengage/sdk/android/R$id;->custom_message:I

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/c;->e()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/webengage/sdk/android/R$id;->push_base_margin_view:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getBigPictureStyleData()Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getBigPictureStyleData()Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;->getBigPictureUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/webengage/sdk/android/utils/a/f$a;

    sget-object v2, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v3}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/c;->a(Lcom/webengage/sdk/android/utils/a/f;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/render/c;->a(Lcom/webengage/sdk/android/utils/a/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/c;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->isBigNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getStyle()Lcom/webengage/sdk/android/utils/WebEngageConstant$STYLE;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getBigPictureStyleData()Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getBigPictureStyleData()Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;

    move-result-object v0

    iget-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/c;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;->getBigContentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigPictureStyle;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :try_start_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->f:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/c;->f()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->g:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/webengage/sdk/android/R$layout;->big_picture:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget v1, Lcom/webengage/sdk/android/R$id;->big_picture_image:I

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/c;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_2
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/c;->g:Landroid/widget/RemoteViews;

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/c;->g:Landroid/widget/RemoteViews;

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/c;->g:Landroid/widget/RemoteViews;

    sget v1, Lcom/webengage/sdk/android/R$id;->big_picture_image:I

    const/high16 v2, 0x43210000    # 161.0f

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/c;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/webengage/sdk/android/utils/k;->a(FLandroid/content/Context;)I

    move-result v2

    const-string v3, "setMaxHeight"

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/j;->onRender(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z

    move-result p1

    return p1
.end method
