.class public Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;
.super Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/PushNotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RatingV1"
.end annotation


# instance fields
.field private backgroundColor:I

.field private contentBackgroundColor:I

.field private contentMessage:Ljava/lang/String;

.field private contentTextColor:I

.field private contentTitle:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private rateScale:I

.field private rateValue:I

.field private submitCTA:Lcom/webengage/sdk/android/actions/render/CallToAction;

.field final synthetic this$0:Lcom/webengage/sdk/android/actions/render/PushNotificationData;


# direct methods
.method public constructor <init>(Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lorg/a/c;)V
    .locals 12

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->this$0:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-direct {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;-><init>(Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lorg/a/c;)V

    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->backgroundColor:I

    const-string v0, "#F0F0F0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentBackgroundColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->iconUrl:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->rateScale:I

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentTextColor:I

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->submitCTA:Lcom/webengage/sdk/android/actions/render/CallToAction;

    const/4 v3, -0x1

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->rateValue:I

    if-eqz p2, :cond_9

    const-string v3, "image"

    invoke-virtual {p2, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->imageUrl:Ljava/lang/String;

    const-string v3, "icon"

    invoke-virtual {p2, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->iconUrl:Ljava/lang/String;

    const-string v3, "rateScale"

    invoke-virtual {p2, v3, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->rateScale:I

    const-string v1, "bckColor"

    invoke-virtual {p2, v1}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->backgroundColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->backgroundColor:I

    :cond_2
    :goto_2
    const-string p1, "content"

    invoke-virtual {p2, p1}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v3}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentTitle:Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v3}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentMessage:Ljava/lang/String;

    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentTextColor:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentTextColor:I

    :cond_5
    :goto_5
    invoke-virtual {p1, v1}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_2
    invoke-virtual {p1, v1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentBackgroundColor:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    const-string p1, "#f0f0f0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentBackgroundColor:I

    :cond_6
    :goto_6
    const-string p1, "submitCTA"

    invoke-virtual {p2, p1}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance p2, Lcom/webengage/sdk/android/actions/render/CallToAction;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "actionText"

    invoke-virtual {p1, v0}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "Submit"

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object v2, v0

    const-string v0, "actionLink"

    invoke-virtual {p1, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/webengage/sdk/android/actions/render/CallToAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->submitCTA:Lcom/webengage/sdk/android/actions/render/CallToAction;

    return-void

    :cond_8
    new-instance p1, Lcom/webengage/sdk/android/actions/render/CallToAction;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, "Submit"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/webengage/sdk/android/actions/render/CallToAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->submitCTA:Lcom/webengage/sdk/android/actions/render/CallToAction;

    :cond_9
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->backgroundColor:I

    return v0
.end method

.method public getContentBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentBackgroundColor:I

    return v0
.end method

.method public getContentMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTextColor()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentTextColor:I

    return v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRateScale()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->rateScale:I

    return v0
.end method

.method public getRateValue()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->rateValue:I

    return v0
.end method

.method public getSubmitCTA()Lcom/webengage/sdk/android/actions/render/CallToAction;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->submitCTA:Lcom/webengage/sdk/android/actions/render/CallToAction;

    return-object v0
.end method

.method public setRateValue(I)V
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->rateValue:I

    return-void
.end method
