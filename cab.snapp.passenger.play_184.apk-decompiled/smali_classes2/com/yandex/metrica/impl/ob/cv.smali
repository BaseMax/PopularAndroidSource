.class public Lcom/yandex/metrica/impl/ob/cv;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/gb;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->A()Lcom/yandex/metrica/impl/ob/gb;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/cv;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gb;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gb;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 30
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cv;->a:Lcom/yandex/metrica/impl/ob/gb;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cv;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cv;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gb;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->L()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1484
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->F:Lcom/yandex/metrica/impl/s$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    goto :goto_0

    .line 2428
    :cond_0
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->b:Lcom/yandex/metrica/impl/s$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cv;->a:Lcom/yandex/metrica/impl/ob/gb;

    const-string v2, ""

    .line 45
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/gb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ac;->d(Lcom/yandex/metrica/impl/i;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ac;->a(Z)V

    .line 47
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cv;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gb;->a()V

    .line 48
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cv;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gb;->e()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
