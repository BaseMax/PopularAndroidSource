.class public abstract Lcom/ebay/common/model/cart/JsonModel;
.super Ljava/lang/Object;
.source "JsonModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/cart/JsonModel$Property;,
        Lcom/ebay/common/model/cart/JsonModel$OperationError;
    }
.end annotation


# instance fields
.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/cart/JsonModel$OperationError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "operationErrors"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "operationErrors"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "error"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    new-instance v2, Lcom/ebay/common/model/cart/JsonModel$OperationError;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ebay/common/model/cart/JsonModel$OperationError;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    :cond_1
    return-void
.end method

.method static varargs getArray(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private static getArray(Lorg/json/JSONObject;[Ljava/lang/String;I)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 151
    aget-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 154
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ebay/common/model/cart/JsonModel;->getArray(Lorg/json/JSONObject;[Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getCurrencyAmount(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ebay/common/model/cart/JsonModel;->toCurrencyAmount(Lorg/json/JSONObject;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ebay/common/util/EbayDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "Error parsing date time"

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static varargs getObject(Lorg/json/JSONObject;I[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 127
    aget-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    .line 130
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    array-length v1, p2

    if-ge p1, v1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ebay/common/model/cart/JsonModel;->getObject(Lorg/json/JSONObject;I[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static varargs getObject(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, v0, p1}, Lcom/ebay/common/model/cart/JsonModel;->getObject(Lorg/json/JSONObject;I[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_UAES_NULL_"

    .line 69
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static toCurrencyAmount(Lorg/json/JSONObject;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 56
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    const-string v1, "__value__"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@currencyId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getEbayResponseErrors()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    iget-object v2, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/cart/JsonModel$OperationError;

    .line 356
    new-instance v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;

    invoke-direct {v4}, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;-><init>()V

    const/4 v5, 0x1

    .line 357
    iput v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->category:I

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/ebay/common/model/cart/JsonModel$OperationError;->errorId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ebay/common/model/cart/JsonModel$OperationError;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->code:Ljava/lang/String;

    .line 359
    invoke-virtual {v3}, Lcom/ebay/common/model/cart/JsonModel$OperationError;->isError()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    iput v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->severity:I

    .line 361
    iget-object v5, v3, Lcom/ebay/common/model/cart/JsonModel$OperationError;->message:Ljava/lang/String;

    iput-object v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->longMessage:Ljava/lang/String;

    .line 362
    invoke-virtual {v3}, Lcom/ebay/common/model/cart/JsonModel$OperationError;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->shortMessage:Ljava/lang/String;

    .line 363
    iget-object v5, v3, Lcom/ebay/common/model/cart/JsonModel$OperationError;->domain:Ljava/lang/String;

    iput-object v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->domain:Ljava/lang/String;

    .line 364
    iget-object v5, v3, Lcom/ebay/common/model/cart/JsonModel$OperationError;->subdomain:Ljava/lang/String;

    iput-object v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->subdomain:Ljava/lang/String;

    const/4 v5, 0x0

    .line 365
    iput-boolean v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->userDisplay:Z

    .line 366
    iput-object v1, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->parameters:Ljava/util/ArrayList;

    .line 367
    iget-object v5, v3, Lcom/ebay/common/model/cart/JsonModel$OperationError;->parameters:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 369
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/ebay/common/model/cart/JsonModel$OperationError;->parameters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->parameters:Ljava/util/ArrayList;

    .line 370
    iget-object v3, v3, Lcom/ebay/common/model/cart/JsonModel$OperationError;->parameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/model/cart/JsonModel$Property;

    .line 372
    new-instance v6, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails$Parameter;

    invoke-direct {v6}, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails$Parameter;-><init>()V

    .line 373
    iget-object v7, v5, Lcom/ebay/common/model/cart/JsonModel$Property;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails$Parameter;->name:Ljava/lang/String;

    .line 374
    iget-object v5, v5, Lcom/ebay/common/model/cart/JsonModel$Property;->value:Ljava/lang/String;

    iput-object v5, v6, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails$Parameter;->value:Ljava/lang/String;

    .line 375
    iget-object v5, v4, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 378
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public final getErrorId()Ljava/lang/String;
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/cart/JsonModel$OperationError;

    .line 318
    iget-object v2, v1, Lcom/ebay/common/model/cart/JsonModel$OperationError;->errorId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    iget-object v0, v1, Lcom/ebay/common/model/cart/JsonModel$OperationError;->errorId:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/cart/JsonModel$OperationError;

    .line 334
    iget-object v2, v1, Lcom/ebay/common/model/cart/JsonModel$OperationError;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    iget-object v0, v1, Lcom/ebay/common/model/cart/JsonModel$OperationError;->message:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
