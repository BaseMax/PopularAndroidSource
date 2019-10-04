.class abstract Lcom/yandex/metrica/impl/ob/ho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/hn;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/hn;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/hn;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ho;->a:Lcom/yandex/metrica/impl/ob/hn;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/location/Location;Lcom/yandex/metrica/impl/ob/hq;)V
.end method

.method public a(Ljava/lang/String;Landroid/location/Location;Lcom/yandex/metrica/impl/ob/hq;)V
    .locals 1

    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/ho;->a(Landroid/location/Location;Lcom/yandex/metrica/impl/ob/hq;)V

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ho;->a:Lcom/yandex/metrica/impl/ob/hn;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/hn;->a(Ljava/lang/String;Landroid/location/Location;Lcom/yandex/metrica/impl/ob/hq;)V

    :cond_0
    return-void
.end method
