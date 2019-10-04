.class Lcom/webengage/sdk/android/m;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->A:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utm_campaign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->B:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utm_source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->C:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utm_medium"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->D:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utm_term"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->E:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utm_content"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->F:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gclid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    aget-object v6, v4, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    iget-object v5, p0, Lcom/webengage/sdk/android/m;->a:Ljava/util/Map;

    aget-object v7, v4, v2

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
