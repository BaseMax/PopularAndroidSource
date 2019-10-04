.class Lcom/yandex/metrica/impl/ob/ih;
.super Lcom/yandex/metrica/impl/ob/ho;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ft;

.field private b:Lcom/yandex/metrica/impl/ob/hp;

.field private c:Lcom/yandex/metrica/impl/ob/np;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hn;)V
    .locals 2

    .line 32
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->g()Lcom/yandex/metrica/impl/ob/ft;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/hp;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/hp;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/yandex/metrica/impl/ob/ih;-><init>(Lcom/yandex/metrica/impl/ob/hn;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/hp;Lcom/yandex/metrica/impl/ob/np;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/hn;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/hp;Lcom/yandex/metrica/impl/ob/np;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ho;-><init>(Lcom/yandex/metrica/impl/ob/hn;)V

    .line 55
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ih;->a:Lcom/yandex/metrica/impl/ob/ft;

    .line 56
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ih;->b:Lcom/yandex/metrica/impl/ob/hp;

    .line 57
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ih;->c:Lcom/yandex/metrica/impl/ob/np;

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 3

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/ic;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/hq;->a()Lcom/yandex/metrica/impl/ob/hq$a;

    move-result-object p2

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ih;->c:Lcom/yandex/metrica/impl/ob/np;

    .line 41
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/np;->a()J

    move-result-wide v1

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/ic;-><init>(Lcom/yandex/metrica/impl/ob/hq$a;JLandroid/location/Location;)V

    .line 43
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ih;->b:Lcom/yandex/metrica/impl/ob/hp;

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/hp;->a(Lcom/yandex/metrica/impl/ob/ic;)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ih;->a:Lcom/yandex/metrica/impl/ob/ft;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/yandex/metrica/impl/ob/ft;->a(JLjava/lang/String;)V

    :cond_0
    return-void
.end method
