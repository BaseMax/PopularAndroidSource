.class public Lcom/yandex/metrica/impl/ob/hu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fs;

.field private final b:Lcom/yandex/metrica/impl/ob/hp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fq;->h()Lcom/yandex/metrica/impl/ob/fs;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/hp;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/hp;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/hu;-><init>(Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/hp;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/hp;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hu;->a:Lcom/yandex/metrica/impl/ob/fs;

    .line 44
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hu;->b:Lcom/yandex/metrica/impl/ob/hp;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/hv;)V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hu;->b:Lcom/yandex/metrica/impl/ob/hp;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/hp;->a(Lcom/yandex/metrica/impl/ob/hv;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hu;->a:Lcom/yandex/metrica/impl/ob/fs;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hv;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/yandex/metrica/impl/ob/fs;->a(JLjava/lang/String;)V

    :cond_0
    return-void
.end method
