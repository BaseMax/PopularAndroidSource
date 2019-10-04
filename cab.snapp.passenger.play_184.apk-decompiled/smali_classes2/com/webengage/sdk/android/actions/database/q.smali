.class public Lcom/webengage/sdk/android/actions/database/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/ab;


# static fields
.field protected static a:Lcom/webengage/sdk/android/actions/database/t;

.field public static final b:Lcom/webengage/sdk/android/ab$a;

.field private static d:Lcom/webengage/sdk/android/actions/database/q;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/webengage/sdk/android/actions/database/q$1;

    invoke-direct {v0}, Lcom/webengage/sdk/android/actions/database/q$1;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/actions/database/q;->b:Lcom/webengage/sdk/android/ab$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/q;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/q;->c:Landroid/content/Context;

    sget-object p1, Lcom/webengage/sdk/android/actions/database/q;->a:Lcom/webengage/sdk/android/actions/database/t;

    if-nez p1, :cond_0

    new-instance p1, Lcom/webengage/sdk/android/actions/database/r;

    invoke-direct {p1}, Lcom/webengage/sdk/android/actions/database/r;-><init>()V

    new-instance v0, Lcom/webengage/sdk/android/actions/database/t;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/q;->c:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/actions/database/t;-><init>(Lcom/webengage/sdk/android/actions/database/r;Landroid/content/Context;)V

    sput-object v0, Lcom/webengage/sdk/android/actions/database/q;->a:Lcom/webengage/sdk/android/actions/database/t;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/webengage/sdk/android/actions/database/q$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/database/q;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a()Lcom/webengage/sdk/android/actions/database/q;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/database/q;->d:Lcom/webengage/sdk/android/actions/database/q;

    return-object v0
.end method

.method static synthetic a(Lcom/webengage/sdk/android/actions/database/q;)Lcom/webengage/sdk/android/actions/database/q;
    .locals 0

    sput-object p0, Lcom/webengage/sdk/android/actions/database/q;->d:Lcom/webengage/sdk/android/actions/database/q;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/webengage/sdk/android/actions/database/q;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/webengage/sdk/android/actions/database/p;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/q;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/webengage/sdk/android/actions/database/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2}, Lcom/webengage/sdk/android/actions/database/q;->b(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/a;->b(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/webengage/sdk/android/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/webengage/sdk/android/l;

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getFilterCustomEvents()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public b(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/af;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "strategy"

    const-string v1, "action_data"

    if-eqz p2, :cond_0

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/q;->a:Lcom/webengage/sdk/android/actions/database/t;

    check-cast p2, Lcom/webengage/sdk/android/l;

    invoke-virtual {v1, p2}, Lcom/webengage/sdk/android/actions/database/t;->a(Lcom/webengage/sdk/android/l;)Lcom/webengage/sdk/android/actions/database/s;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/webengage/sdk/android/actions/database/q;->a:Lcom/webengage/sdk/android/actions/database/t;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/database/t;->a()Lcom/webengage/sdk/android/actions/database/j;

    move-result-object p2

    :goto_0
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
