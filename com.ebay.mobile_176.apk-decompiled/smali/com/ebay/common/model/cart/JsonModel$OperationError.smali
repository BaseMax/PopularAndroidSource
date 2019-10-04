.class public final Lcom/ebay/common/model/cart/JsonModel$OperationError;
.super Ljava/lang/Object;
.source "JsonModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/cart/JsonModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final category:Ljava/lang/String;

.field public final domain:Ljava/lang/String;

.field public final ebayItemId:Ljava/lang/String;

.field public final errorId:Ljava/lang/String;

.field final exceptionId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/cart/JsonModel$Property;",
            ">;"
        }
    .end annotation
.end field

.field public final severity:Ljava/lang/String;

.field public final subdomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V
    .locals 3

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-interface {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->errorId:Ljava/lang/String;

    .line 246
    invoke-interface {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->domain:Ljava/lang/String;

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->subdomain:Ljava/lang/String;

    .line 248
    invoke-interface {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getCategory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->category:Ljava/lang/String;

    .line 249
    invoke-interface {p2, p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getShortMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->message:Ljava/lang/String;

    .line 250
    instance-of v1, p2, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;

    if-eqz v1, :cond_0

    .line 252
    move-object v1, p2

    check-cast v1, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;

    const-string v2, "PaymentInstrumentService"

    .line 253
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;->subdomain:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-interface {p2, p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->message:Ljava/lang/String;

    .line 256
    :cond_0
    invoke-interface {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->severity:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->exceptionId:Ljava/lang/String;

    .line 258
    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->parameters:Ljava/util/List;

    .line 259
    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->ebayItemId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "errorId"

    .line 209
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->errorId:Ljava/lang/String;

    const-string v0, "domain"

    .line 210
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->domain:Ljava/lang/String;

    const-string/jumbo v0, "subdomain"

    .line 211
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->subdomain:Ljava/lang/String;

    const-string/jumbo v0, "severity"

    .line 212
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->severity:Ljava/lang/String;

    const-string v0, "category"

    .line 213
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->category:Ljava/lang/String;

    const-string v0, "message"

    .line 214
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->message:Ljava/lang/String;

    const-string v0, "exceptionId"

    .line 215
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->exceptionId:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->parameters:Ljava/util/List;

    const-string v0, "parameter"

    .line 219
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "parameter"

    .line 221
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 222
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 224
    new-instance v2, Lcom/ebay/common/model/cart/JsonModel$Property;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ebay/common/model/cart/JsonModel$Property;-><init>(Lorg/json/JSONObject;)V

    const-string v3, "baseIdentifier"

    .line 228
    iget-object v4, v2, Lcom/ebay/common/model/cart/JsonModel$Property;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, v2, Lcom/ebay/common/model/cart/JsonModel$Property;->value:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/ebay/common/model/cart/JsonModel$Property;->value:Ljava/lang/String;

    const-string v4, "ItemId="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    iget-object v1, v2, Lcom/ebay/common/model/cart/JsonModel$Property;->value:Ljava/lang/String;

    const-string v2, "ItemId="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->parameters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    iput-object v1, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->ebayItemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/cart/JsonModel$Property;

    .line 268
    iget-object v2, v1, Lcom/ebay/common/model/cart/JsonModel$Property;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/ebay/common/model/cart/JsonModel$Property;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object p1, v1, Lcom/ebay/common/model/cart/JsonModel$Property;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    const-string v0, "nativeErrorCode"

    .line 285
    invoke-virtual {p0, v0}, Lcom/ebay/common/model/cart/JsonModel$OperationError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "nativeErrorMsg"

    .line 280
    invoke-virtual {p0, v0}, Lcom/ebay/common/model/cart/JsonModel$OperationError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isError()Z
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->severity:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->severity:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWarning()Z
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->severity:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$OperationError;->severity:Ljava/lang/String;

    const-string/jumbo v1, "warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
