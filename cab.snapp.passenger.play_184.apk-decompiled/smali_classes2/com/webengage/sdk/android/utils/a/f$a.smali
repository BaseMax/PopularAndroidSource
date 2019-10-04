.class public Lcom/webengage/sdk/android/utils/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/webengage/sdk/android/utils/a/e;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->f:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->h:I

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/f$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/webengage/sdk/android/utils/a/f$a;->b:Lcom/webengage/sdk/android/utils/a/e;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/f$a;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/webengage/sdk/android/utils/a/f$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/webengage/sdk/android/utils/a/f$a;)Lcom/webengage/sdk/android/utils/a/e;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->b:Lcom/webengage/sdk/android/utils/a/e;

    return-object p0
.end method

.method static synthetic c(Lcom/webengage/sdk/android/utils/a/f$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/webengage/sdk/android/utils/a/f$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/webengage/sdk/android/utils/a/f$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/webengage/sdk/android/utils/a/f$a;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->g:I

    return p0
.end method

.method static synthetic g(Lcom/webengage/sdk/android/utils/a/f$a;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->h:I

    return p0
.end method

.method static synthetic h(Lcom/webengage/sdk/android/utils/a/f$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->f:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/webengage/sdk/android/utils/a/f$a;
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/utils/a/f$a;->g:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/webengage/sdk/android/utils/a/f$a;->g:I

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/a/f$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/f$a;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/f$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/f$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/webengage/sdk/android/utils/a/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/webengage/sdk/android/utils/a/f$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/f$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public a()Lcom/webengage/sdk/android/utils/a/f;
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/utils/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/webengage/sdk/android/utils/a/f;-><init>(Lcom/webengage/sdk/android/utils/a/f$a;Lcom/webengage/sdk/android/utils/a/f$1;)V

    return-object v0
.end method

.method public b(I)Lcom/webengage/sdk/android/utils/a/f$a;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/utils/a/f$a;->h:I

    return-object p0
.end method
