.class public Lcom/apptentive/android/sdk/model/CommerceExtendedData;
.super Lcom/apptentive/android/sdk/model/ExtendedData;
.source "CommerceExtendedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;
    }
.end annotation


# static fields
.field private static final KEY_AFFILIATION:Ljava/lang/String; = "affiliation"

.field private static final KEY_CURRENCY:Ljava/lang/String; = "currency"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_ITEMS:Ljava/lang/String; = "items"

.field private static final KEY_REVENUE:Ljava/lang/String; = "revenue"

.field private static final KEY_SHIPPING:Ljava/lang/String; = "shipping"

.field private static final KEY_TAX:Ljava/lang/String; = "tax"

.field private static final VERSION:I = 0x1


# instance fields
.field private affiliation:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private id:Ljava/lang/Object;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private revenue:D

.field private shipping:D

.field private tax:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/apptentive/android/sdk/model/ExtendedData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;DDDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/apptentive/android/sdk/model/ExtendedData;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setId(Ljava/lang/Object;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    .line 50
    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setAffiliation(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    .line 51
    invoke-virtual {p0, p3, p4}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setRevenue(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    .line 52
    invoke-virtual {p0, p5, p6}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setShipping(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    .line 53
    invoke-virtual {p0, p7, p8}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setTax(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    .line 54
    invoke-virtual {p0, p9}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setCurrency(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/model/ExtendedData;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 60
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setId(Ljava/lang/Object;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    const-string p1, "affiliation"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setAffiliation(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    const-string/jumbo p1, "revenue"

    const-wide/16 v2, 0x0

    .line 62
    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setRevenue(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    const-string/jumbo p1, "shipping"

    .line 63
    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setShipping(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    const-string/jumbo p1, "tax"

    .line 64
    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setTax(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    const-string p1, "currency"

    .line 65
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setCurrency(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    const-string p1, "items"

    .line 66
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setItems(Lorg/json/JSONArray;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->items:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected init()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->items:Ljava/util/List;

    .line 40
    sget-object v0, Lcom/apptentive/android/sdk/model/ExtendedData$Type;->commerce:Lcom/apptentive/android/sdk/model/ExtendedData$Type;

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setType(Lcom/apptentive/android/sdk/model/ExtendedData$Type;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->setVersion(I)V

    return-void
.end method

.method public setAffiliation(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->affiliation:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/Object;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->id:Ljava/lang/Object;

    return-object p0
.end method

.method public setItems(Lorg/json/JSONArray;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 117
    new-instance v1, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->addItem(Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;)Lcom/apptentive/android/sdk/model/CommerceExtendedData;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setRevenue(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    iput-wide p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->revenue:D

    return-object p0
.end method

.method public setShipping(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 85
    iput-wide p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->shipping:D

    return-object p0
.end method

.method public setTax(D)Lcom/apptentive/android/sdk/model/CommerceExtendedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    iput-wide p1, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->tax:D

    return-object p0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 125
    invoke-super {p0}, Lcom/apptentive/android/sdk/model/ExtendedData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    .line 126
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "affiliation"

    .line 127
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->affiliation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "revenue"

    .line 128
    iget-wide v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->revenue:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "shipping"

    .line 129
    iget-wide v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->shipping:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "tax"

    .line 130
    iget-wide v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->tax:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "currency"

    .line 131
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/apptentive/android/sdk/model/CommerceExtendedData;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;

    .line 134
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/CommerceExtendedData$Item;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "items"

    .line 136
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
