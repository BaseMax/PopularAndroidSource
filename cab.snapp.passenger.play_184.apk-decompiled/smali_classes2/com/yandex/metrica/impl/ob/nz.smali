.class public Lcom/yandex/metrica/impl/ob/nz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/og;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ny;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/ny;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ny;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nz;-><init>(Lcom/yandex/metrica/impl/ob/ny;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ny;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/nz;->a:Lcom/yandex/metrica/impl/ob/ny;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/oh;
    .locals 1

    .line 30
    sget-object v0, Lcom/yandex/metrica/impl/ob/oh;->b:Lcom/yandex/metrica/impl/ob/oh;

    return-object v0
.end method

.method public a([B)[B
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nz;->a:Lcom/yandex/metrica/impl/ob/ny;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ny;->a([B)[B

    move-result-object p1

    return-object p1
.end method
