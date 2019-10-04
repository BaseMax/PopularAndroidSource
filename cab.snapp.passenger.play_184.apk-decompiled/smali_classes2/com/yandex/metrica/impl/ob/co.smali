.class public Lcom/yandex/metrica/impl/ob/co;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/gb;

.field private b:Lcom/yandex/metrica/impl/ob/nn;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->A()Lcom/yandex/metrica/impl/ob/gb;

    move-result-object v0

    invoke-static {}, Lcom/yandex/metrica/impl/ob/nn;->a()Lcom/yandex/metrica/impl/ob/nn;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/co;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gb;Lcom/yandex/metrica/impl/ob/nn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gb;Lcom/yandex/metrica/impl/ob/nn;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 34
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/co;->a:Lcom/yandex/metrica/impl/ob/gb;

    .line 35
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/co;->b:Lcom/yandex/metrica/impl/ob/nn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 4

    .line 40
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/co;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/co;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/gb;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/co;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/gb;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/co;->b:Lcom/yandex/metrica/impl/ob/nn;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/nn;->c()V

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->c()Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/co;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {v3, v2}, Lcom/yandex/metrica/impl/ob/gb;->c(Ljava/lang/String;)V

    .line 1480
    sget-object v3, Lcom/yandex/metrica/impl/s$a;->B:Lcom/yandex/metrica/impl/s$a;

    invoke-static {p1, v3}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/s$a;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ac;->c(Lcom/yandex/metrica/impl/i;)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ac;->a(Z)V

    .line 60
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/co;->a:Lcom/yandex/metrica/impl/ob/gb;

    .line 61
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->M()Z

    move-result v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gb;->a(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/co;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->H()Lcom/yandex/metrica/impl/ob/dw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dw;->a()V

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/co;->a:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gb;->b()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
