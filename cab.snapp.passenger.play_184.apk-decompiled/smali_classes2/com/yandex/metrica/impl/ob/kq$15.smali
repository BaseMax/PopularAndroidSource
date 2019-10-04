.class Lcom/yandex/metrica/impl/ob/kq$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kq;->a(Lcom/yandex/metrica/Revenue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/Revenue;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/kq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kq;Lcom/yandex/metrica/Revenue;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kq$15;->b:Lcom/yandex/metrica/impl/ob/kq;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kq$15;->a:Lcom/yandex/metrica/Revenue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq$15;->b:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kq;->c()Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->e()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kq$15;->a:Lcom/yandex/metrica/Revenue;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ad;->reportRevenue(Lcom/yandex/metrica/Revenue;)V

    return-void
.end method
