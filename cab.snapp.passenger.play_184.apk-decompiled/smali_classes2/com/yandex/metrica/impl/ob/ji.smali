.class public abstract Lcom/yandex/metrica/impl/ob/ji;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/jh;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ji;->a:Lcom/yandex/metrica/impl/ob/jh;

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/ke$a$a;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 35
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ke$a$a;->d:Lcom/yandex/metrica/impl/ob/ke$a$b;

    iget-boolean p0, p0, Lcom/yandex/metrica/impl/ob/ke$a$b;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method a()Lcom/yandex/metrica/impl/ob/jh;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ji;->a:Lcom/yandex/metrica/impl/ob/jh;

    return-object v0
.end method

.method public abstract a(Lcom/yandex/metrica/impl/ob/jy;Lcom/yandex/metrica/impl/ob/ke$a$a;Lcom/yandex/metrica/impl/ob/jg;)Lcom/yandex/metrica/impl/ob/ke$a$a;
.end method
