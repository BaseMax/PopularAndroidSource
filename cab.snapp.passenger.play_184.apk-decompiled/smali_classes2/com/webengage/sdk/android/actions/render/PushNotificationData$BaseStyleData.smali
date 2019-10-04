.class public Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/PushNotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseStyleData"
.end annotation


# instance fields
.field private bigContentTitle:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field final synthetic this$0:Lcom/webengage/sdk/android/actions/render/PushNotificationData;


# direct methods
.method public constructor <init>(Lcom/webengage/sdk/android/actions/render/PushNotificationData;Lorg/a/c;)V
    .locals 2

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->this$0:Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->bigContentTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->summary:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p2, v0}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->bigContentTitle:Ljava/lang/String;

    const-string v0, "message"

    invoke-virtual {p2, v0}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getContentText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->summary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBigContentTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->bigContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public setBigContentTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->bigContentTitle:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/PushNotificationData$BaseStyleData;->summary:Ljava/lang/String;

    return-void
.end method
