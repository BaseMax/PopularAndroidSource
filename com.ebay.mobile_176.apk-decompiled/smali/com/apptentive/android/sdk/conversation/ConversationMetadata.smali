.class public Lcom/apptentive/android/sdk/conversation/ConversationMetadata;
.super Ljava/lang/Object;
.source "ConversationMetadata.java"

# interfaces
.implements Lcom/apptentive/android/sdk/serialization/SerializableObject;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/conversation/ConversationMetadata$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apptentive/android/sdk/serialization/SerializableObject;",
        "Ljava/lang/Iterable<",
        "Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION:B = 0x1t


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    iget-object v2, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    new-instance v3, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    invoke-direct {v3, p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected version 1 but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method addItem(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method findItem(Lcom/apptentive/android/sdk/conversation/Conversation;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;
    .locals 1

    .line 67
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata$2;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata$2;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationMetadata;Lcom/apptentive/android/sdk/conversation/Conversation;)V

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/ConversationMetadata$Filter;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object p1

    return-object p1
.end method

.method findItem(Lcom/apptentive/android/sdk/conversation/ConversationMetadata$Filter;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    .line 77
    invoke-interface {p1, v1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata$Filter;->accept(Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method findItem(Lcom/apptentive/android/sdk/conversation/ConversationState;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;
    .locals 1

    .line 58
    new-instance v0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata$1;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata$1;-><init>(Lcom/apptentive/android/sdk/conversation/ConversationMetadata;Lcom/apptentive/android/sdk/conversation/ConversationState;)V

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->findItem(Lcom/apptentive/android/sdk/conversation/ConversationMetadata$Filter;)Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    move-result-object p1

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationMetadata{items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 42
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 43
    iget-object v0, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/apptentive/android/sdk/conversation/ConversationMetadata;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;

    invoke-virtual {v1, p1}, Lcom/apptentive/android/sdk/conversation/ConversationMetadataItem;->writeExternal(Ljava/io/DataOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
