.class public Lcom/yandex/metrica/impl/ob/fc;
.super Lcom/yandex/metrica/impl/ob/fb;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ey;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ey;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fb;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fc;->a:Lcom/yandex/metrica/impl/ob/ey;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/fa;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fc;->a:Lcom/yandex/metrica/impl/ob/ey;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/ey;->a(Lcom/yandex/metrica/impl/ob/fa;)V

    return-void
.end method
