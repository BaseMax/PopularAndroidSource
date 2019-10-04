.class Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;
.super Ljava/lang/Object;
.source "FileMessageStore.java"

# interfaces
.implements Lcom/apptentive/android/sdk/serialization/SerializableObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/conversation/FileMessageStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageEntry"
.end annotation


# instance fields
.field clientCreatedAt:Ljava/lang/Double;

.field id:Ljava/lang/String;

.field isRead:Ljava/lang/Boolean;

.field json:Ljava/lang/String;

.field nonce:Ljava/lang/String;

.field state:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->id:Ljava/lang/String;

    .line 316
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableDouble(Ljava/io/DataInput;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->clientCreatedAt:Ljava/lang/Double;

    .line 317
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->nonce:Ljava/lang/String;

    .line 318
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->state:Ljava/lang/String;

    .line 319
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableBoolean(Ljava/io/DataInput;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->isRead:Ljava/lang/Boolean;

    .line 320
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readNullableUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageEntry{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clientCreatedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->clientCreatedAt:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nonce=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isRead="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->isRead:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", json=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->json:Ljava/lang/String;

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

    .line 325
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableUTF(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->clientCreatedAt:Ljava/lang/Double;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableDouble(Ljava/io/DataOutput;Ljava/lang/Double;)V

    .line 327
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->nonce:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableUTF(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->state:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableUTF(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->isRead:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableBoolean(Ljava/io/DataOutput;Ljava/lang/Boolean;)V

    .line 330
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry;->json:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/util/Util;->writeNullableUTF(Ljava/io/DataOutput;Ljava/lang/String;)V

    return-void
.end method
