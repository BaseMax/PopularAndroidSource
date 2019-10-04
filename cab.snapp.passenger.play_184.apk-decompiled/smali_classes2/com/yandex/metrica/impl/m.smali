.class abstract Lcom/yandex/metrica/impl/m;
.super Lcom/yandex/metrica/impl/ar;
.source "SourceFile"


# static fields
.field static final a:Landroid/content/ContentValues;


# instance fields
.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/yandex/metrica/impl/ob/ld;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/m;->a:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ar;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/m;->b:Ljava/util/Map;

    return-void
.end method

.method private D()V
    .locals 1

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/ld;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ld;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/m;->c:Lcom/yandex/metrica/impl/ob/ld;

    return-void
.end method


# virtual methods
.method a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/m;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    iget-object v2, p0, Lcom/yandex/metrica/impl/m;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "report_request_parameters"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ne$a;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance p1, Lcom/yandex/metrica/impl/ob/ld;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/ld;-><init>(Lcom/yandex/metrica/impl/ob/ne$a;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/m;->c:Lcom/yandex/metrica/impl/ob/ld;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/m;->D()V

    :goto_1
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/yandex/metrica/impl/ar;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/m;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
