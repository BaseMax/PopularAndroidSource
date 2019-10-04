.class final Lcom/apptentive/android/sdk/Apptentive$24;
.super Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->sendAttachmentFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$24;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lcom/apptentive/android/sdk/conversation/Conversation;)Z
    .locals 8

    .line 1068
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$24;->val$uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1071
    :cond_0
    new-instance v0, Lcom/apptentive/android/sdk/model/CompoundMessage;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;-><init>()V

    const/4 v2, 0x0

    .line 1073
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setBody(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1074
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setRead(Z)V

    .line 1075
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setHidden(Z)V

    .line 1076
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getPerson()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/storage/Person;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setSenderId(Ljava/lang/String;)V

    .line 1078
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v4

    invoke-interface {v4}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1083
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/apptentive/android/sdk/Apptentive$24;->val$uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/apptentive/android/sdk/util/Util;->generateCacheFilePathFromNonceOrPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1085
    iget-object v6, p0, Lcom/apptentive/android/sdk/Apptentive$24;->val$uri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/apptentive/android/sdk/util/Util;->getMimeTypeFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 1086
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 1087
    invoke-virtual {v6, v4}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1091
    iget-object v7, p0, Lcom/apptentive/android/sdk/Apptentive$24;->val$uri:Ljava/lang/String;

    invoke-static {v7}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-nez v4, :cond_2

    if-eqz v7, :cond_2

    .line 1094
    invoke-virtual {v6, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1096
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1097
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1099
    :cond_3
    iget-object v6, p0, Lcom/apptentive/android/sdk/Apptentive$24;->val$uri:Ljava/lang/String;

    invoke-static {v6, v5, v4}, Lcom/apptentive/android/sdk/util/Util;->createLocalStoredFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/apptentive/android/sdk/model/StoredFile;

    move-result-object v4

    if-nez v4, :cond_4

    return v1

    .line 1104
    :cond_4
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/model/CompoundMessage;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/apptentive/android/sdk/model/StoredFile;->setId(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-virtual {v0, v3}, Lcom/apptentive/android/sdk/model/CompoundMessage;->setAssociatedFiles(Ljava/util/List;)Z

    .line 1108
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/conversation/Conversation;->getMessageManager()Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/module/messagecenter/MessageManager;->sendMessage(Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    return v2
.end method
