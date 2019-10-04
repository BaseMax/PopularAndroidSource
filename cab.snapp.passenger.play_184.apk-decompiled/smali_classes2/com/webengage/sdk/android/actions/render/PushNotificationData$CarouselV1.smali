.class public Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;
.super Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/PushNotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarouselV1"
.end annotation


# instance fields
.field private final MODE:Ljava/lang/String;

.field private backgroundColor:I

.field private callToActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lcom/webengage/sdk/android/actions/render/PushNotificationData;


# direct methods
.method public constructor <init>(Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lorg/a/c;)V
    .locals 9

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->this$0:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-direct {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;-><init>(Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lorg/a/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->callToActions:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->size:I

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->backgroundColor:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->callToActions:Ljava/util/List;

    const-string v1, "items"

    invoke-virtual {p2, v1}, Lorg/a/c;->optJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/a/a;->length()I

    move-result v2

    iput v2, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->size:I

    :goto_0
    invoke-virtual {v1}, Lorg/a/a;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/a/a;->optJSONObject(I)Lorg/a/c;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "image"

    invoke-virtual {v2, v4}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->callToActions:Ljava/util/List;

    new-instance v6, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;

    invoke-virtual {v2, v3}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "actionText"

    invoke-virtual {v2, v7}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "actionLink"

    invoke-virtual {v2, v8}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v3, v7, v8, v2}, Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "mode"

    const-string v1, "landscape"

    invoke-virtual {p2, p1, v1}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->MODE:Ljava/lang/String;

    const-string p1, "bckColor"

    invoke-virtual {p2, p1}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->backgroundColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->backgroundColor:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->backgroundColor:I

    return v0
.end method

.method public getCallToActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->callToActions:Ljava/util/List;

    return-object v0
.end method

.method public getMODE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->MODE:Ljava/lang/String;

    return-object v0
.end method

.method protected getSize()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->size:I

    return v0
.end method

.method public setBackgroudColor(I)V
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->backgroundColor:I

    return-void
.end method

.method public setCallToActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/actions/render/CarouselV1CallToAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$CarouselV1;->callToActions:Ljava/util/List;

    return-void
.end method
