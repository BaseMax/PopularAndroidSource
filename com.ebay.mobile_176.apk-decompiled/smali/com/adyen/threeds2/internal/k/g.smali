.class public final Lcom/adyen/threeds2/internal/k/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/Warning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/adyen/threeds2/util/AdyenConfigParameters;->SECURITY_APP_SIGNATURE:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    invoke-static {p2, v0}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->getParamValue(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/adyen/threeds2/util/AdyenConfigParameters;->SECURITY_TRUSTED_APP_STORES:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    invoke-static {p2, v1}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->getParamValues(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;)Ljava/util/Collection;

    move-result-object v1

    .line 59
    sget-object v2, Lcom/adyen/threeds2/util/AdyenConfigParameters;->SECURITY_MALICIOUS_APPS:Lcom/adyen/threeds2/util/AdyenConfigParameters$a;

    invoke-static {p2, v2}, Lcom/adyen/threeds2/util/AdyenConfigParameters;->getParamValues(Lcom/adyen/threeds2/parameters/ConfigParameters;Lcom/adyen/threeds2/util/AdyenConfigParameters$a;)Ljava/util/Collection;

    move-result-object p2

    .line 62
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adyen/threeds2/internal/k/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/k/g;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;)Lcom/adyen/threeds2/internal/k/g;
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    new-instance v0, Lcom/adyen/threeds2/internal/k/g;

    invoke-direct {v0, p0, p1}, Lcom/adyen/threeds2/internal/k/g;-><init>(Landroid/content/Context;Lcom/adyen/threeds2/parameters/ConfigParameters;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/Warning;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-direct {p0, p2, p3, p4}, Lcom/adyen/threeds2/internal/k/g;->a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 79
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/adyen/threeds2/internal/k/f;

    .line 80
    invoke-virtual {p3, p1}, Lcom/adyen/threeds2/internal/k/f;->b(Landroid/content/Context;)Lcom/adyen/threeds2/internal/j;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/k/f;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lcom/adyen/threeds2/internal/k/a/i;

    invoke-direct {v1}, Lcom/adyen/threeds2/internal/k/a/i;-><init>()V

    .line 98
    new-instance v2, Lcom/adyen/threeds2/internal/k/b;

    invoke-direct {v2, v1}, Lcom/adyen/threeds2/internal/k/b;-><init>(Lcom/adyen/threeds2/internal/k/a/b;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Lcom/adyen/threeds2/internal/k/e;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/adyen/threeds2/internal/k/e;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/adyen/threeds2/internal/k/a/d;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance p1, Lcom/adyen/threeds2/internal/k/c;

    invoke-direct {p1, v1}, Lcom/adyen/threeds2/internal/k/c;-><init>(Lcom/adyen/threeds2/internal/k/a/c;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance p1, Lcom/adyen/threeds2/internal/k/a;

    invoke-direct {p1, v1}, Lcom/adyen/threeds2/internal/k/a;-><init>(Lcom/adyen/threeds2/internal/k/a/a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance p1, Lcom/adyen/threeds2/internal/k/d;

    invoke-direct {p1, v1}, Lcom/adyen/threeds2/internal/k/d;-><init>(Lcom/adyen/threeds2/internal/k/a/f;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/Warning;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/g;->a:Ljava/util/List;

    return-object v0
.end method
