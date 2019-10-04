.class public Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigTextStyle;
.super Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/PushNotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BigTextStyle"
.end annotation


# instance fields
.field private bigText:Ljava/lang/String;

.field final synthetic this$0:Lcom/webengage/sdk/android/actions/render/PushNotificationData;


# direct methods
.method public constructor <init>(Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lorg/a/c;)V
    .locals 2

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigTextStyle;->this$0:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-direct {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;-><init>(Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lorg/a/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigTextStyle;->bigText:Ljava/lang/String;

    const-string v0, "message"

    invoke-virtual {p2, v0}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getContentText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigTextStyle;->bigText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBigText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigTextStyle;->bigText:Ljava/lang/String;

    return-object v0
.end method

.method public setBigText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BigTextStyle;->bigText:Ljava/lang/String;

    return-void
.end method
