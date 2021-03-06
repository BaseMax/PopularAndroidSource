.class public Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;
.super Ljava/lang/Object;
.source "ConversationMetadataItem.java"

# interfaces
.implements Lcom/apptentive/android/sdk/serialization/SerializableObject;


# instance fields
.field private conversationEncryptionKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private conversationId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private conversationState:Lcom/apptentive/android/sdk/conversation/ConversationState;

.field private conversationToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataFile:Ljava/io/File;

.field private final localConversationId:Ljava/lang/String;

.field private final messagesFile:Ljava/io/File;

.field private userId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->UNDEFINED:Lcom/apptentive/android/sdk/conversation/ConversationState;

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    .line 85
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->localConversationId:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationId:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationToken:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->getEncryptedFilename(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->dataFile:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->getEncryptedFilename(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->messagesFile:Ljava/io/File;

    .line 90
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/conversation/ConversationState;->valueOf(B)Lcom/apptentive/android/sdk/conversation/ConversationState;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    .line 91
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationEncryptionKey:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/apptentive/android/sdk/conversation/ConversationState;->UNDEFINED:Lcom/apptentive/android/sdk/conversation/ConversationState;

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 78
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->localConversationId:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationId:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->dataFile:Ljava/io/File;

    .line 81
    iput-object p4, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->messagesFile:Ljava/io/File;

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Messages file is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data file is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local conversation id is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getConversationEncryptionKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationEncryptionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationState()Lcom/apptentive/android/sdk/conversation/ConversationState;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    return-object v0
.end method

.method public getConversationToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDataFile()Ljava/io/File;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->dataFile:Ljava/io/File;

    return-object v0
.end method

.method public getLocalConversationId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->localConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessagesFile()Ljava/io/File;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->messagesFile:Ljava/io/File;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationEncryptionKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 132
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationEncryptionKey:Ljava/lang/String;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationId:Ljava/lang/String;

    return-void
.end method

.method public setConversationState(Lcom/apptentive/android/sdk/conversation/ConversationState;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    return-void
.end method

.method public setConversationToken(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationToken:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationMetadataItem{conversationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localConversationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->localConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", conversationId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", conversationToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationToken:Ljava/lang/String;

    .line 165
    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dataFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->dataFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", messagesFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->messagesFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", conversationEncryptionKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationEncryptionKey:Ljava/lang/String;

    .line 168
    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->localConversationId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableUTF(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableUTF(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->dataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->messagesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationState:Lcom/apptentive/android/sdk/conversation/ConversationState;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationState;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 103
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->conversationEncryptionKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableUTF(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->userId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableUTF(Ljava/io/DataOutput;Ljava/lang/String;)V

    return-void
.end method
