.class Lcom/apptentive/android/sdk/ApptentiveHelper$Holder;
.super Ljava/lang/Object;
.source "ApptentiveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/ApptentiveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static CONVERSATION_DATA_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

.field static CONVERSATION_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper$Holder;->createConversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveHelper$Holder;->CONVERSATION_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    .line 51
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveHelper$Holder;->createConversationDataQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveHelper$Holder;->CONVERSATION_DATA_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    return-void
.end method

.method private static createConversationDataQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
    .locals 2

    :try_start_0
    const-string v0, "Apptentive Conversation Data Queue"

    .line 63
    sget-object v1, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->Serial:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->createBackgroundQueue(Ljava/lang/String;Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;)Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createConversationQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
    .locals 2

    :try_start_0
    const-string v0, "Apptentive Queue"

    .line 55
    sget-object v1, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->Serial:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->createBackgroundQueue(Ljava/lang/String;Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;)Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
