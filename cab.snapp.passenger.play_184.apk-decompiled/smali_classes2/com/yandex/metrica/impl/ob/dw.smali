.class public Lcom/yandex/metrica/impl/ob/dw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/yandex/metrica/impl/ob/dz;

.field private c:Lcom/yandex/metrica/impl/ob/dx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;I)V
    .locals 1

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/dz;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/dz;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;)V

    invoke-direct {p0, v0, p3}, Lcom/yandex/metrica/impl/ob/dw;-><init>(Lcom/yandex/metrica/impl/ob/dz;I)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/dz;I)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p2, p0, Lcom/yandex/metrica/impl/ob/dw;->a:I

    .line 97
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dw;->b:Lcom/yandex/metrica/impl/ob/dz;

    return-void
.end method

.method private b()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->b:Lcom/yandex/metrica/impl/ob/dz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dz;->a()Lcom/yandex/metrica/impl/ob/dx;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dx;->e()I

    move-result v0

    iget v1, p0, Lcom/yandex/metrica/impl/ob/dw;->a:I

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dx;->a(I)V

    .line 81
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dw;->c()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->b:Lcom/yandex/metrica/impl/ob/dz;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dz;->a(Lcom/yandex/metrica/impl/ob/dx;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/t;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dw;->b()V

    .line 1091
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dx;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    sget-object p1, Lcom/yandex/metrica/impl/t;->c:Lcom/yandex/metrica/impl/t;

    goto :goto_2

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dx;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yandex/metrica/impl/t;->b:Lcom/yandex/metrica/impl/t;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/yandex/metrica/impl/t;->a:Lcom/yandex/metrica/impl/t;

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dx;->d()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3

    .line 44
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/dx;->b(I)V

    goto :goto_1

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/dx;->a(Z)V

    .line 48
    :goto_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dw;->c()V

    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public a()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dw;->b()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dx;->a()V

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dw;->c:Lcom/yandex/metrica/impl/ob/dx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dx;->a(Z)V

    .line 72
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dw;->c()V

    return-void
.end method
