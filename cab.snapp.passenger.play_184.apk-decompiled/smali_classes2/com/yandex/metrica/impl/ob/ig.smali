.class Lcom/yandex/metrica/impl/ob/ig;
.super Lcom/yandex/metrica/impl/ob/kz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ig$b;,
        Lcom/yandex/metrica/impl/ob/ig$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/hq;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/kz;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ig;->a:Lcom/yandex/metrica/impl/ob/hq;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/hq;B)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;-><init>(Lcom/yandex/metrica/impl/ob/hq;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;->a(Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/h;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;->a(Lcom/yandex/metrica/impl/h;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;->a(Lcom/yandex/metrica/impl/ob/ma;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/hq;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ig;->a:Lcom/yandex/metrica/impl/ob/hq;

    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ig;->d()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ma;->g:Ljava/util/List;

    return-object v0
.end method
