.class public Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location$Deserializer;
.super Ljava/lang/Object;
.source "SaasSearchRequest.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 65
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 67
    new-instance p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    invoke-direct {p2}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;-><init>()V

    const-string p3, "country"

    .line 68
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 71
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    .line 72
    iget-object p3, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    const-string v1, "NONE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 73
    :cond_0
    iput-object v0, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->country:Ljava/lang/String;

    :cond_1
    const-string p3, "postalCode"

    .line 76
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 79
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    .line 80
    iget-object p1, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    const-string p3, "null"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 81
    :cond_2
    iput-object v0, p2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;->postalCode:Ljava/lang/String;

    :cond_3
    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location$Deserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    move-result-object p1

    return-object p1
.end method
