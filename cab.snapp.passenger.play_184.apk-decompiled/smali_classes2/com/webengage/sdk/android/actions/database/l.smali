.class public Lcom/webengage/sdk/android/actions/database/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/ab;


# static fields
.field public static final a:Lcom/webengage/sdk/android/ab$a;

.field private static c:Lcom/webengage/sdk/android/actions/database/l;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/webengage/sdk/android/actions/database/l$1;

    invoke-direct {v0}, Lcom/webengage/sdk/android/actions/database/l$1;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/actions/database/l;->a:Lcom/webengage/sdk/android/ab$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/l;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/l;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/webengage/sdk/android/actions/database/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/database/l;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a()Lcom/webengage/sdk/android/actions/database/l;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/database/l;->c:Lcom/webengage/sdk/android/actions/database/l;

    return-object v0
.end method

.method static synthetic a(Lcom/webengage/sdk/android/actions/database/l;)Lcom/webengage/sdk/android/actions/database/l;
    .locals 0

    sput-object p0, Lcom/webengage/sdk/android/actions/database/l;->c:Lcom/webengage/sdk/android/actions/database/l;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/actions/database/k;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/l;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/webengage/sdk/android/actions/database/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2}, Lcom/webengage/sdk/android/actions/database/l;->b(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/a;->b(Ljava/util/Map;)V

    return-void
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "topic"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
