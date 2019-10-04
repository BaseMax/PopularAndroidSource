.class public Lcom/ebay/common/model/cart/JsonModel$Property;
.super Ljava/lang/Object;
.source "JsonModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/cart/JsonModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "@name"

    .line 390
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/cart/JsonModel$Property;->name:Ljava/lang/String;

    const-string v0, "__value__"

    .line 391
    invoke-static {p1, v0}, Lcom/ebay/common/model/cart/JsonModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/cart/JsonModel$Property;->value:Ljava/lang/String;

    return-void
.end method
