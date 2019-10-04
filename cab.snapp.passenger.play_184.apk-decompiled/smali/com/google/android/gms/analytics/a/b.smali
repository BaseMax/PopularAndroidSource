.class public final Lcom/google/android/gms/analytics/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_ADD:Ljava/lang/String; = "add"

.field public static final ACTION_CHECKOUT:Ljava/lang/String; = "checkout"

.field public static final ACTION_CHECKOUT_OPTION:Ljava/lang/String; = "checkout_option"

.field public static final ACTION_CHECKOUT_OPTIONS:Ljava/lang/String; = "checkout_options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CLICK:Ljava/lang/String; = "click"

.field public static final ACTION_DETAIL:Ljava/lang/String; = "detail"

.field public static final ACTION_PURCHASE:Ljava/lang/String; = "purchase"

.field public static final ACTION_REFUND:Ljava/lang/String; = "refund"

.field public static final ACTION_REMOVE:Ljava/lang/String; = "remove"


# instance fields
.field private a:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/a/b;->a:Ljava/util/Map;

    const-string v0, "&pa"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Name should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final build()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/analytics/a/b;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final setCheckoutOptions(Ljava/lang/String;)Lcom/google/android/gms/analytics/a/b;
    .locals 1

    const-string v0, "&col"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setCheckoutStep(I)Lcom/google/android/gms/analytics/a/b;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&cos"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setProductActionList(Ljava/lang/String;)Lcom/google/android/gms/analytics/a/b;
    .locals 1

    const-string v0, "&pal"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setProductListSource(Ljava/lang/String;)Lcom/google/android/gms/analytics/a/b;
    .locals 1

    const-string v0, "&pls"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTransactionAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/a/b;
    .locals 1

    const-string v0, "&ta"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTransactionCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/a/b;
    .locals 1

    const-string v0, "&tcc"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/a/b;
    .locals 1

    const-string v0, "&ti"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTransactionRevenue(D)Lcom/google/android/gms/analytics/a/b;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&tr"

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTransactionShipping(D)Lcom/google/android/gms/analytics/a/b;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&ts"

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTransactionTax(D)Lcom/google/android/gms/analytics/a/b;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&tt"

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/analytics/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/a/b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->zzr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method