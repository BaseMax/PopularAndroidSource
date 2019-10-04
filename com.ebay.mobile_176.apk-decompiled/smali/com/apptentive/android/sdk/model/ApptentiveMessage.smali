.class public abstract Lcom/apptentive/android/sdk/model/ApptentiveMessage;
.super Lcom/apptentive/android/sdk/model/ConversationItem;
.source "ApptentiveMessage.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/messagecenter/model/MessageCenterListItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;,
        Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;
    }
.end annotation


# static fields
.field public static final KEY_AUTOMATED:Ljava/lang/String; = "automated"

.field public static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final KEY_CUSTOM_DATA:Ljava/lang/String; = "custom_data"
    .annotation runtime Lcom/apptentive/android/sdk/model/SensitiveDataKey;
    .end annotation
.end field

.field public static final KEY_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_INBOUND:Ljava/lang/String; = "inbound"

.field public static final KEY_SENDER:Ljava/lang/String; = "sender"

.field public static final KEY_SENDER_ID:Ljava/lang/String; = "id"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private datestamp:Ljava/lang/String;

.field private read:Z

.field private state:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 45
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->message:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/model/ConversationItem;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;)V

    .line 36
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    iput-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->state:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->read:Z

    .line 46
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->sending:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    iput-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->state:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->read:Z

    .line 48
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->initType()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->message:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-direct {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ConversationItem;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    iput-object p1, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->state:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->read:Z

    .line 53
    sget-object p1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    iput-object p1, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->state:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    .line 54
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->initType()V

    return-void
.end method


# virtual methods
.method public clearDatestamp()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->datestamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->datestamp:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutomated()Z
    .locals 1

    const-string v0, "automated"

    .line 184
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCreatedAt()Ljava/lang/Double;
    .locals 1

    const-string v0, "created_at"

    .line 68
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDatestamp()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->datestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;
    .locals 2

    const-string/jumbo v0, "type"

    .line 76
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->CompoundMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    return-object v0

    :cond_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSenderProfilePhoto()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "sender"

    .line 171
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sender"

    .line 172
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "profile_photo"

    .line 173
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "profile_photo"

    .line 174
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 178
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSenderUsername()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "sender"

    .line 157
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sender"

    .line 158
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    .line 159
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "name"

    .line 160
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->state:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->state:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    return-object v0
.end method

.method protected abstract initType()V
.end method

.method public isAutomatedMessage()Z
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getAutomated()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    const-string v0, "hidden"

    .line 88
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 2

    const-string v0, "inbound"

    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->read:Z

    return v0
.end method

.method public setAutomated(Z)V
    .locals 1

    const-string v0, "automated"

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCreatedAt(Ljava/lang/Double;)V
    .locals 3

    const-string v0, "created_at"

    .line 72
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public setCustomData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 101
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "custom_data"

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Exception setting ApptentiveMessage\'s %s field."

    const/4 v1, 0x1

    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "custom_data"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_2
    :goto_2
    const-string p1, "custom_data"

    .line 102
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "custom_data"

    .line 103
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->remove(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setDatestamp(Ljava/lang/String;)Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->datestamp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->datestamp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 203
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->datestamp:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setHidden(Z)V
    .locals 1

    const-string v0, "hidden"

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRead(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->read:Z

    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "sender"

    .line 142
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sender"

    .line 143
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sender"

    .line 146
    invoke-virtual {p0, v1, v0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    const-string v1, "id"

    .line 148
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Exception setting ApptentiveMessage\'s %s field."

    const/4 v1, 0x1

    .line 150
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setState(Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->state:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    return-void
.end method

.method protected setType(Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;)V
    .locals 1

    const-string/jumbo v0, "type"

    .line 84
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
