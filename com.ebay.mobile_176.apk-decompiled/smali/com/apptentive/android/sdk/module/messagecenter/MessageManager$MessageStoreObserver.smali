.class Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Lcom/apptentive/android/sdk/storage/MessageStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageStoreObserver"
.end annotation


# instance fields
.field private final target:Lcom/apptentive/android/sdk/storage/MessageStore;


# direct methods
.method private constructor <init>(Lcom/apptentive/android/sdk/storage/MessageStore;)V
    .locals 1

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 680
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    return-void

    .line 678
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/apptentive/android/sdk/storage/MessageStore;Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$1;)V
    .locals 0

    .line 672
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;-><init>(Lcom/apptentive/android/sdk/storage/MessageStore;)V

    return-void
.end method

.method private notifyChanged()V
    .locals 5

    .line 730
    invoke-static {}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->defaultCenter()Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;

    move-result-object v0

    const-string v1, "MESSAGE_STORE_DID_CHANGE"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "messageStore"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 731
    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/notifications/ApptentiveNotificationCenter;->postNotification(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs addOrUpdateMessages([Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/storage/MessageStore;->addOrUpdateMessages([Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    .line 686
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->notifyChanged()V

    return-void
.end method

.method public deleteAllMessages()V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/MessageStore;->deleteAllMessages()V

    .line 713
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->notifyChanged()V

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/storage/MessageStore;->deleteMessage(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->notifyChanged()V

    return-void
.end method

.method public findMessage(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/storage/MessageStore;->findMessage(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    move-result-object p1

    return-object p1
.end method

.method public getAllMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/ApptentiveMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/MessageStore;->getAllMessages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastReceivedMessageId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/MessageStore;->getLastReceivedMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/MessageStore;->getUnreadMessageCount()I

    move-result v0

    return v0
.end method

.method public updateMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->target:Lcom/apptentive/android/sdk/storage/MessageStore;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/storage/MessageStore;->updateMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    .line 692
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver;->notifyChanged()V

    return-void
.end method
