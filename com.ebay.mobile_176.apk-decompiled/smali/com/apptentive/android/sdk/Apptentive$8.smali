.class final Lcom/apptentive/android/sdk/Apptentive$8;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->removeCustomDeviceData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$8;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 1

    .line 309
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getDevice()Lcom/apptentive/android/sdk/storage/Device;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$8;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/storage/CustomData;->remove(Ljava/lang/Object;)Ljava/io/Serializable;

    const/4 p1, 0x1

    return p1
.end method
