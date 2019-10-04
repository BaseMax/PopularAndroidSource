.class public Lcom/yandex/metrica/impl/ob/fd;
.super Lcom/yandex/metrica/impl/ob/fb;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fg;

.field private final b:Lcom/yandex/metrica/impl/ob/ey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ey;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fg;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fg;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fd;-><init>(Lcom/yandex/metrica/impl/ob/fg;Lcom/yandex/metrica/impl/ob/ey;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fg;Lcom/yandex/metrica/impl/ob/ey;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fb;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fd;->a:Lcom/yandex/metrica/impl/ob/fg;

    .line 38
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fd;->b:Lcom/yandex/metrica/impl/ob/ey;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/fa;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/fd;->a:Lcom/yandex/metrica/impl/ob/fg;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ff;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ff;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/fg;->a(Lcom/yandex/metrica/impl/ob/ff;)V

    .line 46
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fd;->b:Lcom/yandex/metrica/impl/ob/ey;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ey;->a()V

    :cond_0
    return-void
.end method
