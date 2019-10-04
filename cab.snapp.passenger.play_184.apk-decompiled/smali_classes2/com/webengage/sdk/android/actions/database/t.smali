.class Lcom/webengage/sdk/android/actions/database/t;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/webengage/sdk/android/actions/database/r;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/webengage/sdk/android/actions/database/e;

.field private e:Lcom/webengage/sdk/android/actions/database/m;

.field private f:Lcom/webengage/sdk/android/actions/database/j;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/actions/database/r;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/webengage/sdk/android/actions/database/t;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->d:Lcom/webengage/sdk/android/actions/database/e;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->e:Lcom/webengage/sdk/android/actions/database/m;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->f:Lcom/webengage/sdk/android/actions/database/j;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/t;->a:Lcom/webengage/sdk/android/actions/database/r;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/database/t;->c:Landroid/content/Context;

    return-void
.end method

.method private a(I)Lcom/webengage/sdk/android/actions/database/s;
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->a:Lcom/webengage/sdk/android/actions/database/r;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->a:Lcom/webengage/sdk/android/actions/database/r;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/r;->c()I

    move-result v0

    iget v1, p0, Lcom/webengage/sdk/android/actions/database/t;->b:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/database/t;->c()Lcom/webengage/sdk/android/actions/database/e;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/database/t;->e()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->FORCE_SYNC:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/webengage/sdk/android/actions/database/d;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/database/t;->c()Lcom/webengage/sdk/android/actions/database/e;

    move-result-object v0

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/database/t;->d()Lcom/webengage/sdk/android/actions/database/m;

    move-result-object v1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/database/t;->c:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2}, Lcom/webengage/sdk/android/actions/database/d;-><init>(Lcom/webengage/sdk/android/actions/database/e;Lcom/webengage/sdk/android/actions/database/m;Landroid/content/Context;)V

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lcom/webengage/sdk/android/actions/database/c;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/database/t;->c()Lcom/webengage/sdk/android/actions/database/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/t;->a()Lcom/webengage/sdk/android/actions/database/j;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/webengage/sdk/android/actions/database/c;-><init>(Lcom/webengage/sdk/android/actions/database/e;Lcom/webengage/sdk/android/actions/database/j;)V

    return-object p1
.end method

.method private b(Lcom/webengage/sdk/android/l;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->l()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->l()Ljava/util/Map;

    move-result-object p1

    const-string v1, "high_reporting_priority"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    return v0

    :cond_2
    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private c()Lcom/webengage/sdk/android/actions/database/e;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->d:Lcom/webengage/sdk/android/actions/database/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/actions/database/e;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/t;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/webengage/sdk/android/actions/database/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->d:Lcom/webengage/sdk/android/actions/database/e;

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->d:Lcom/webengage/sdk/android/actions/database/e;

    return-object v0
.end method

.method private d()Lcom/webengage/sdk/android/actions/database/m;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->e:Lcom/webengage/sdk/android/actions/database/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/actions/database/m;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/t;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/webengage/sdk/android/actions/database/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->e:Lcom/webengage/sdk/android/actions/database/m;

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->e:Lcom/webengage/sdk/android/actions/database/m;

    return-object v0
.end method

.method private e()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;
    .locals 1

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEventReportingStrategy()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/webengage/sdk/android/actions/database/j;
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->f:Lcom/webengage/sdk/android/actions/database/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/actions/database/j;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/t;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/database/t;->d()Lcom/webengage/sdk/android/actions/database/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/webengage/sdk/android/actions/database/j;-><init>(Landroid/content/Context;Lcom/webengage/sdk/android/actions/database/m;)V

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->f:Lcom/webengage/sdk/android/actions/database/j;

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->f:Lcom/webengage/sdk/android/actions/database/j;

    return-object v0
.end method

.method public a(Lcom/webengage/sdk/android/l;)Lcom/webengage/sdk/android/actions/database/s;
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/database/t;->b(Lcom/webengage/sdk/android/l;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/database/t;->a(I)Lcom/webengage/sdk/android/actions/database/s;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/webengage/sdk/android/actions/database/r;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/t;->a:Lcom/webengage/sdk/android/actions/database/r;

    return-object v0
.end method
