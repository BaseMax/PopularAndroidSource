.class public Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;
.super Lcom/ebay/nautilus/kernel/net/Response;
.source "AutoSuggestionResponse.java"

# interfaces
.implements Lcom/ebay/nautilus/kernel/net/IResponseDataHandler;


# instance fields
.field public categoryCount:I

.field private final enableUncategorizedTopSuggestion:Z

.field public final results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/AutoFillSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/net/Response;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->results:Ljava/util/ArrayList;

    .line 31
    iput-boolean p1, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->enableUncategorizedTopSuggestion:Z

    return-void
.end method


# virtual methods
.method public getDataHandler()Lcom/ebay/nautilus/kernel/net/IResponseDataHandler;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->hasSuccessResponseCode()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/StreamUtil;->jsonObjectFromStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "prefix"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "res"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string/jumbo v0, "sug"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "prefetch"

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 56
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    move-object v7, v2

    move-object v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 59
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v10, "keyword"

    .line 62
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 63
    invoke-static {v10}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "category"

    .line 65
    invoke-virtual {v9, v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    if-nez v8, :cond_1

    .line 69
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 70
    :cond_1
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    .line 75
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 76
    :cond_3
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    move-object v2, v7

    goto :goto_2

    :cond_6
    move-object v8, v2

    :goto_2
    const-string v1, "categories"

    .line 83
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_c

    .line 87
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-gtz v5, :cond_7

    if-eqz p1, :cond_7

    .line 89
    iget-boolean v7, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->enableUncategorizedTopSuggestion:Z

    if-eqz v7, :cond_9

    .line 91
    :cond_7
    new-instance v7, Lcom/ebay/common/model/AutoFillSuggestion;

    invoke-direct {v7}, Lcom/ebay/common/model/AutoFillSuggestion;-><init>()V

    .line 92
    iput-object v6, v7, Lcom/ebay/common/model/AutoFillSuggestion;->title:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 93
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 95
    iput-boolean v4, v7, Lcom/ebay/common/model/AutoFillSuggestion;->prefetch:Z

    .line 96
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_8
    iget-object v9, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v5, :cond_b

    if-eqz p1, :cond_b

    .line 105
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    iput v7, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->categoryCount:I

    const/4 v7, 0x0

    .line 106
    :goto_4
    iget v9, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->categoryCount:I

    if-ge v7, v9, :cond_b

    .line 108
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v9

    .line 109
    new-instance v10, Lcom/ebay/common/model/AutoFillSuggestion;

    invoke-direct {v10}, Lcom/ebay/common/model/AutoFillSuggestion;-><init>()V

    .line 111
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/ebay/common/model/AutoFillSuggestion;->categoryId:Ljava/lang/String;

    .line 112
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/ebay/common/model/AutoFillSuggestion;->categoryName:Ljava/lang/String;

    .line 113
    iput-object v6, v10, Lcom/ebay/common/model/AutoFillSuggestion;->title:Ljava/lang/String;

    .line 114
    iget-object v9, v10, Lcom/ebay/common/model/AutoFillSuggestion;->categoryId:Ljava/lang/String;

    if-eqz v9, :cond_a

    if-eqz v8, :cond_a

    iget-object v9, v10, Lcom/ebay/common/model/AutoFillSuggestion;->categoryId:Ljava/lang/String;

    .line 116
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 118
    iput-boolean v4, v10, Lcom/ebay/common/model/AutoFillSuggestion;->prefetch:Z

    .line 119
    iget-object v9, v10, Lcom/ebay/common/model/AutoFillSuggestion;->categoryId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_a
    iget-object v9, p0, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    return-void

    :catch_0
    move-exception p1

    .line 130
    new-instance v0, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
