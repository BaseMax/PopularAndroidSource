.class public Lcom/ebay/common/net/api/search/following/GetInterestResponse;
.super Lcom/ebay/nautilus/domain/net/EbayCosResponse;
.source "GetInterestResponse.java"


# static fields
.field private static final MAPPER:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;


# instance fields
.field public interests:[Lcom/ebay/common/net/api/search/following/InterestDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location;

    new-instance v2, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location$Deserializer;

    invoke-direct {v2}, Lcom/ebay/common/net/api/search/following/SaasSearchRequest$Location$Deserializer;-><init>()V

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->toDataMapper(Lcom/google/gson/Gson;)Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->MAPPER:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    return-void

    :array_0
    .array-data 4
        0x8
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0}, Lcom/ebay/nautilus/domain/net/EbayCosResponse;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public hasSuccessResponseCode()Z
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/ebay/nautilus/domain/net/EbayCosResponse;->hasSuccessResponseCode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->responseCode:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->responseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 47
    :try_start_0
    new-instance v0, Lcom/ebay/common/net/api/search/following/GetInterestResponse$1;

    invoke-direct {v0, p0}, Lcom/ebay/common/net/api/search/following/GetInterestResponse$1;-><init>(Lcom/ebay/common/net/api/search/following/GetInterestResponse;)V

    .line 49
    invoke-virtual {v0}, Lcom/ebay/common/net/api/search/following/GetInterestResponse$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->MAPPER:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 53
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->setResult(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setResult(Ljava/util/HashMap;)V
    .locals 3
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ebay/common/net/api/search/following/InterestDescriptor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->interests:[Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    iget-object v2, p0, Lcom/ebay/common/net/api/search/following/GetInterestResponse;->interests:[Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
