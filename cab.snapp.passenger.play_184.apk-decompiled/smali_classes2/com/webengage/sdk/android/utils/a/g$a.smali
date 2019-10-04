.class public Lcom/webengage/sdk/android/utils/a/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Exception;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/InputStream;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->b:Ljava/lang/Exception;

    iput-object v1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->c:Ljava/util/Map;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/webengage/sdk/android/utils/a/g$a;->d:Z

    iput-object v1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->e:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->f:Ljava/io/InputStream;

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->i:I

    iput-object v1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->k:J

    return-void
.end method

.method static synthetic a(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->b:Ljava/lang/Exception;

    return-object p0
.end method

.method static synthetic b(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/webengage/sdk/android/utils/a/g$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->e:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic e(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->f:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic f(Lcom/webengage/sdk/android/utils/a/g$a;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->g:I

    return p0
.end method

.method static synthetic g(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/webengage/sdk/android/utils/a/g$a;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->i:I

    return p0
.end method

.method static synthetic i(Lcom/webengage/sdk/android/utils/a/g$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/webengage/sdk/android/utils/a/g$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->k:J

    return-wide v0
.end method

.method static synthetic k(Lcom/webengage/sdk/android/utils/a/g$a;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->a:I

    return p0
.end method


# virtual methods
.method protected a(I)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->a:I

    return-object p0
.end method

.method protected a(J)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput-wide p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->k:J

    return-object p0
.end method

.method public a(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->e:Ljava/io/InputStream;

    return-object p0
.end method

.method public a(Ljava/lang/Exception;)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->b:Ljava/lang/Exception;

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method protected a(Ljava/util/Map;)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/webengage/sdk/android/utils/a/g$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method protected a(Z)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->d:Z

    return-object p0
.end method

.method public a()Lcom/webengage/sdk/android/utils/a/g;
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/utils/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/webengage/sdk/android/utils/a/g;-><init>(Lcom/webengage/sdk/android/utils/a/g$a;Lcom/webengage/sdk/android/utils/a/g$1;)V

    return-object v0
.end method

.method protected b(I)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->g:I

    return-object p0
.end method

.method public b(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->f:Ljava/io/InputStream;

    return-object p0
.end method

.method protected b(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method protected c(I)Lcom/webengage/sdk/android/utils/a/g$a;
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/utils/a/g$a;->i:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/webengage/sdk/android/utils/a/g$a;->i:I

    return-object p0
.end method
