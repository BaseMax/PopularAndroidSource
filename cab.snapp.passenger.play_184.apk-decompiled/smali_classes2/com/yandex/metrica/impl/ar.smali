.class public abstract Lcom/yandex/metrica/impl/ar;
.super Lcom/yandex/metrica/impl/at;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/og;

.field private final b:Lcom/yandex/metrica/impl/ob/nd;

.field private final c:Lcom/yandex/metrica/impl/ob/nq;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/p;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/p;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/nz;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/nz;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/nd;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/nd;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ar;-><init>(Lcom/yandex/metrica/impl/ap;Lcom/yandex/metrica/impl/ob/og;Lcom/yandex/metrica/impl/ob/nd;Lcom/yandex/metrica/impl/ob/nq;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ap;Lcom/yandex/metrica/impl/ob/og;Lcom/yandex/metrica/impl/ob/nd;Lcom/yandex/metrica/impl/ob/nq;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/at;-><init>(Lcom/yandex/metrica/impl/ap;)V

    .line 48
    iput-object p2, p0, Lcom/yandex/metrica/impl/ar;->a:Lcom/yandex/metrica/impl/ob/og;

    .line 49
    iput-object p3, p0, Lcom/yandex/metrica/impl/ar;->b:Lcom/yandex/metrica/impl/ob/nd;

    .line 50
    iput-object p4, p0, Lcom/yandex/metrica/impl/ar;->c:Lcom/yandex/metrica/impl/ob/nq;

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->c:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ar;->a(Ljava/lang/Long;)V

    return-void
.end method

.method protected abstract C()V
.end method

.method protected a(Landroid/net/Uri$Builder;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->a:Lcom/yandex/metrica/impl/ob/og;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/og;->a()Lcom/yandex/metrica/impl/ob/oh;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/oh;->b:Lcom/yandex/metrica/impl/ob/oh;

    if-ne v0, v1, :cond_0

    const-string v0, "encrypted_request"

    const-string v1, "1"

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/at;->a([B)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/yandex/metrica/impl/at;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ar;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ar;->C()V

    :cond_1
    return v0
.end method

.method public c([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ar;->b:Lcom/yandex/metrica/impl/ob/nd;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/nd;->a([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/yandex/metrica/impl/ar;->a:Lcom/yandex/metrica/impl/ob/og;

    invoke-interface {v1, p1}, Lcom/yandex/metrica/impl/ob/og;->a([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ar;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public e()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/yandex/metrica/impl/at;->e()V

    .line 56
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ar;->B()V

    return-void
.end method

.method protected p()Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ar;->l()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
