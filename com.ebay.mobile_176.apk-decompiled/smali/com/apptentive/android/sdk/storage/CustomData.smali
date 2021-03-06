.class public Lcom/apptentive/android/sdk/storage/CustomData;
.super Ljava/util/HashMap;
.source "CustomData.java"

# interfaces
.implements Lcom/apptentive/android/sdk/storage/Saveable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/io/Serializable;",
        ">;",
        "Lcom/apptentive/android/sdk/storage/Saveable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 65
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 66
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/CustomData;->notifyDataChanged()V

    return-void
.end method

.method public notifyDataChanged()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/CustomData;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/CustomData;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/DataChangedListener;->onDataChanged()V

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    .line 46
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/CustomData;->notifyDataChanged()V

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/storage/CustomData;->put(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 53
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/CustomData;->notifyDataChanged()V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/io/Serializable;
    .locals 0

    .line 58
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    .line 59
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/CustomData;->notifyDataChanged()V

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/storage/CustomData;->remove(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method

.method public setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/CustomData;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    return-void
.end method

.method public toJson()Lcom/apptentive/android/sdk/model/CustomData;
    .locals 4

    .line 72
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/model/CustomData;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/CustomData;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/CustomData;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    invoke-virtual {p0, v2}, Lcom/apptentive/android/sdk/storage/CustomData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/apptentive/android/sdk/model/CustomData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception while creating custom data"

    const/4 v2, 0x0

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
