.class public Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;
.super Ljava/lang/Object;
.source "CommerceExtendedData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/model/CommerceExtendedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field private static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final KEY_CURRENCY:Ljava/lang/String; = "currency"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PRICE:Ljava/lang/String; = "price"

.field private static final KEY_QUANTITY:Ljava/lang/String; = "quantity"


# instance fields
.field private category:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private id:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private price:D

.field private quantity:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->setId(Ljava/lang/Object;)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;

    :cond_0
    if-eqz p2, :cond_1

    .line 186
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->setName(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;

    :cond_1
    if-eqz p3, :cond_2

    .line 189
    invoke-virtual {p0, p3}, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->setCategory(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;

    .line 191
    :cond_2
    invoke-virtual {p0, p4, p5}, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->setPrice(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;

    .line 192
    invoke-virtual {p0, p6, p7}, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->setQuantity(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;

    if-eqz p8, :cond_3

    .line 194
    invoke-virtual {p0, p8}, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->setCurrency(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 161
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->id:Ljava/lang/Object;

    const-string p1, "name"

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->name:Ljava/lang/String;

    const-string p1, "category"

    .line 163
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->category:Ljava/lang/String;

    const-string p1, "price"

    const-wide/16 v2, 0x0

    .line 164
    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->price:D

    const-string p1, "quantity"

    .line 165
    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->quantity:D

    const-string p1, "currency"

    .line 166
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setCategory(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/Object;)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->id:Ljava/lang/Object;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPrice(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 214
    iput-wide p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->price:D

    return-object p0
.end method

.method public setQuantity(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 219
    iput-wide p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->quantity:D

    return-object p0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 229
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 230
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 231
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    .line 232
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    .line 233
    iget-wide v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->price:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "quantity"

    .line 234
    iget-wide v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->quantity:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "currency"

    .line 235
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
