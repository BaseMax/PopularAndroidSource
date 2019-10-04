.class final Lcom/apptentive/android/sdk/Apptentive$26;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->sendAttachmentFile(Ljava/io/InputStream;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$is:Ljava/io/InputStream;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$26;->val$is:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/apptentive/android/sdk/Apptentive$26;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 7

    .line 1150
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$26;->val$is:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1153
    :cond_0
    new-instance v0, Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;-><init>()V

    const/4 v2, 0x0

    .line 1155
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setBody(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1156
    invoke-virtual {v0, v3}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setRead(Z)V

    .line 1157
    invoke-virtual {v0, v3}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setHidden(Z)V

    .line 1158
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/storage/Person;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setSenderId(Ljava/lang/String;)V

    .line 1160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v5

    invoke-interface {v5}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/apptentive/android/sdk/util/Util;->generateCacheFilePathFromNonceOrPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1163
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    iget-object v6, p0, Lcom/apptentive/android/sdk/Apptentive$26;->val$mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1164
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    :cond_1
    iget-object v5, p0, Lcom/apptentive/android/sdk/Apptentive$26;->val$is:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/apptentive/android/sdk/Apptentive$26;->val$mimeType:Ljava/lang/String;

    invoke-static {v5, v2, v2, v6}, Lcom/apptentive/android/sdk/util/Util;->createLocalStoredFile(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/apptentive/android/sdk/model/StoredFile;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 1172
    :cond_2
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/apptentive/android/sdk/model/StoredFile;->setId(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-virtual {v0, v4}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setAssociatedFiles(Ljava/util/List;)Z

    .line 1176
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->sendMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    return v3
.end method
