.class Lcom/yandex/metrica/impl/ob/kq$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kq;->a(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/YandexMetricaConfig;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/kq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kq;Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kq$12;->c:Lcom/yandex/metrica/impl/ob/kq;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kq$12;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/kq$12;->b:Lcom/yandex/metrica/YandexMetricaConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq$12;->c:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kq;->c()Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kq$12;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kq$12;->b:Lcom/yandex/metrica/YandexMetricaConfig;

    invoke-static {v2}, Lcom/yandex/metrica/e;->a(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/kp;->a(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    return-void
.end method
