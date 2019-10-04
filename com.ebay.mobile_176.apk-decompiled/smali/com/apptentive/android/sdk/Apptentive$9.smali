.class final Lcom/apptentive/android/sdk/Apptentive$9;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->addCustomPersonData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$9;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/apptentive/android/sdk/Apptentive$9;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 2

    .line 327
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object p1

    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$9;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/apptentive/android/sdk/Apptentive$9;->val$value:Ljava/lang/String;

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/apptentive/android/sdk/storage/CustomData;->put(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    const/4 p1, 0x1

    return p1
.end method
