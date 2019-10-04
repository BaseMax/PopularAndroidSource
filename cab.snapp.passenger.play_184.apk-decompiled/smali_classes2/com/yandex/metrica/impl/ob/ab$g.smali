.class abstract Lcom/yandex/metrica/impl/ob/ab$g;
.super Lcom/yandex/metrica/impl/ob/ab$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/iv;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/iv;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ab$f;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 410
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ab$g;->a:Lcom/yandex/metrica/impl/ob/iv;

    return-void
.end method


# virtual methods
.method public c()Lcom/yandex/metrica/impl/ob/iv;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$g;->a:Lcom/yandex/metrica/impl/ob/iv;

    return-object v0
.end method
