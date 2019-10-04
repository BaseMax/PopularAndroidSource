.class Lcom/webengage/sdk/android/actions/render/e;
.super Lcom/webengage/sdk/android/actions/render/j;

# interfaces
.implements Lcom/webengage/sdk/android/callbacks/CustomPushRender;
.implements Lcom/webengage/sdk/android/callbacks/CustomPushRerender;


# instance fields
.field private h:Ljava/lang/Long;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->h:Ljava/lang/Long;

    const/4 v0, 0x0

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->i:I

    const-string v1, "right"

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->j:Ljava/lang/String;

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->l:I

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->m:I

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->n:I

    return-void
.end method

.method private a(III)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getCallToActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, p1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->getImageURL()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/webengage/sdk/android/utils/a/f$a;

    sget-object v4, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    invoke-direct {v3, v2, v4, v5}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/webengage/sdk/android/actions/render/e;->a(Lcom/webengage/sdk/android/utils/a/f;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/webengage/sdk/android/actions/render/e;->a(Lcom/webengage/sdk/android/utils/a/g;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, p3

    :goto_0
    rem-int/2addr v1, p3

    if-ne v1, p1, :cond_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private f()Landroid/widget/RemoteViews;
    .locals 4

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/e;->d()Landroid/widget/RemoteViews;

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

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_title:I

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getBigContentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_message:I

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_container:I

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getBackgroundColor()I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v1, v3

    const/high16 v3, -0x21000000

    or-int/2addr v1, v3

    const-string v3, "setBackgroundColor"

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 7

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getMODE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getCallToActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->getImageURL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/webengage/sdk/android/utils/a/f$a;

    sget-object v5, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    invoke-direct {v4, v3, v5, v6}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    const/4 v3, 0x6

    invoke-virtual {v4, v3}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/webengage/sdk/android/utils/a/f$a;->a(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/webengage/sdk/android/actions/render/e;->a(Lcom/webengage/sdk/android/utils/a/f;)Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/g;->a()Ljava/lang/Exception;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\nURL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/g;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nResponseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\nIsInputStreamNull: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/webengage/sdk/android/actions/render/e;->a(Ljava/lang/Exception;)V

    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getSize()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->i:I

    :cond_4
    return-void
.end method

.method b()V
    .locals 7

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getMODE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getSize()I

    move-result v1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getCallToActions()Ljava/util/List;

    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "right"

    const-string v4, "left"

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v2, :cond_b

    const/4 v0, 0x3

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->n:I

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/e;->i:I

    invoke-direct {p0, v0, v5, v1}, Lcom/webengage/sdk/android/actions/render/e;->a(III)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/webengage/sdk/android/actions/render/e;->l:I

    :cond_0
    iget v2, p0, Lcom/webengage/sdk/android/actions/render/e;->l:I

    sub-int/2addr v2, v6

    add-int/2addr v2, v1

    rem-int/2addr v2, v1

    invoke-direct {p0, v2, v5, v1}, Lcom/webengage/sdk/android/actions/render/e;->a(III)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    :cond_1
    iget v3, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    sub-int/2addr v3, v6

    add-int/2addr v3, v1

    rem-int/2addr v3, v1

    invoke-direct {p0, v3, v5, v1}, Lcom/webengage/sdk/android/actions/render/e;->a(III)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/e;->m:I

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/e;->i:I

    invoke-direct {p0, v0, v6, v1}, Lcom/webengage/sdk/android/actions/render/e;->a(III)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/webengage/sdk/android/actions/render/e;->m:I

    :cond_6
    iget v2, p0, Lcom/webengage/sdk/android/actions/render/e;->m:I

    add-int/2addr v2, v6

    rem-int/2addr v2, v1

    invoke-direct {p0, v2, v6, v1}, Lcom/webengage/sdk/android/actions/render/e;->a(III)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    :cond_7
    iget v3, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    add-int/2addr v3, v6

    rem-int/2addr v3, v1

    invoke-direct {p0, v3, v6, v1}, Lcom/webengage/sdk/android/actions/render/e;->a(III)Landroid/util/Pair;

    move-result-object v1

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->l:I

    :cond_a
    return-void

    :cond_b
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput v6, p0, Lcom/webengage/sdk/android/actions/render/e;->n:I

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/e;->i:I

    sub-int/2addr v0, v6

    add-int/2addr v0, v1

    rem-int/2addr v0, v1

    invoke-direct {p0, v0, v5, v1}, Lcom/webengage/sdk/android/actions/render/e;->a(III)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/e;->i:I

    add-int/2addr v0, v6

    rem-int/2addr v0, v1

    invoke-direct {p0, v0, v6, v1}, Lcom/webengage/sdk/android/actions/render/e;->a(III)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method c()V
    .locals 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/webengage/sdk/android/actions/render/e;->n:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCarouselV1Data()Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCustomData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/e;->h:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/webengage/sdk/android/actions/render/e;->h:Ljava/lang/Long;

    :goto_0
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/e;->f:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/e;->h:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "we_dismiss"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getCallToActions()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/e;->f()Landroid/widget/RemoteViews;

    move-result-object v4

    iput-object v4, p0, Lcom/webengage/sdk/android/actions/render/e;->g:Landroid/widget/RemoteViews;

    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/webengage/sdk/android/R$layout;->carousel_v1:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v5, Lcom/webengage/sdk/android/R$id;->carousel_v1_body:I

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getBackgroundColor()I

    move-result v6

    const-string v7, "setBackgroundColor"

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v5, Lcom/webengage/sdk/android/R$id;->next:I

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/webengage/sdk/android/R$drawable;->right:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v5, Lcom/webengage/sdk/android/R$id;->prev:I

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/webengage/sdk/android/R$drawable;->left:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/e;->h:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "when"

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v6, 0x1

    const-string v7, "we_wk_render"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    iget v9, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    const-string v10, "right"

    const-string v11, "carousel_v1_right"

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructCarouselBrowsePendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v13

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    iget v9, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    const-string v10, "left"

    const-string v11, "carousel_v1_left"

    invoke-static/range {v7 .. v12}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructCarouselBrowsePendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v5

    sget v7, Lcom/webengage/sdk/android/R$id;->next:I

    invoke-virtual {v4, v7, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v7, Lcom/webengage/sdk/android/R$id;->prev:I

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v7, Lcom/webengage/sdk/android/R$id;->carousel_portrait_2_container:I

    invoke-virtual {v4, v7, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v7, Lcom/webengage/sdk/android/R$id;->carousel_portrait_0_container:I

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getMODE()Ljava/lang/String;

    move-result-object v5

    const-string v7, "portrait"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v7, 0x8

    if-eqz v5, :cond_5

    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_body_landscape:I

    invoke-virtual {v4, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    iget v0, p0, Lcom/webengage/sdk/android/actions/render/e;->n:I

    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    goto :goto_4

    :cond_2
    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_portrait_2_image:I

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_portrait_2_desc:I

    iget v5, p0, Lcom/webengage/sdk/android/actions/render/e;->l:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_portrait_1_image:I

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_portrait_1_desc:I

    iget v5, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    iget v7, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-static {v0, v5, v7, v1}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructPushClickPendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lcom/webengage/sdk/android/actions/render/CallToAction;Z)Landroid/app/PendingIntent;

    move-result-object v0

    sget v5, Lcom/webengage/sdk/android/R$id;->carousel_portrait_1_container:I

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/e;->g:Landroid/widget/RemoteViews;

    sget v7, Lcom/webengage/sdk/android/R$id;->custom_head_container:I

    invoke-virtual {v5, v7, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_4

    :cond_4
    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_portrait_0_image:I

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_portrait_0_desc:I

    iget v5, p0, Lcom/webengage/sdk/android/actions/render/e;->m:I

    :goto_3
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->getMODE()Ljava/lang/String;

    move-result-object v0

    const-string v5, "landscape"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_body_portrait:I

    invoke-virtual {v4, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_landscape_image:I

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/e;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v0, Lcom/webengage/sdk/android/R$id;->carousel_landscape_desc:I

    iget v2, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/e;->b:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    iget v5, p0, Lcom/webengage/sdk/android/actions/render/e;->k:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/webengage/sdk/android/actions/render/CallToAction;

    invoke-static {v0, v2, v3, v1}, Lcom/webengage/sdk/android/PendingIntentFactory;->constructPushClickPendingIntent(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lcom/webengage/sdk/android/actions/render/CallToAction;Z)Landroid/app/PendingIntent;

    move-result-object v0

    sget v1, Lcom/webengage/sdk/android/R$id;->carousel_landscape_container:I

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/e;->g:Landroid/widget/RemoteViews;

    sget v2, Lcom/webengage/sdk/android/R$id;->custom_head_container:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_6
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->g:Landroid/widget/RemoteViews;

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->g:Landroid/widget/RemoteViews;

    sget v1, Lcom/webengage/sdk/android/R$id;->custom_base_container:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_7
    return-void
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

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/e;->h:Ljava/lang/Long;

    const-string v0, "current"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/e;->i:I

    const-string v0, "navigation"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/e;->j:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/j;->a(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z

    move-result p1

    return p1
.end method
