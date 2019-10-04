.class Lcom/yandex/metrica/impl/ob/km$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/km;->a(Lcom/yandex/metrica/ReporterConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/ReporterConfig;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/km;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/km;Lcom/yandex/metrica/ReporterConfig;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/km$1;->b:Lcom/yandex/metrica/impl/ob/km;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/km$1;->a:Lcom/yandex/metrica/ReporterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km$1;->b:Lcom/yandex/metrica/impl/ob/km;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/km$1;->a:Lcom/yandex/metrica/ReporterConfig;

    invoke-static {v1}, Lcom/yandex/metrica/c;->a(Lcom/yandex/metrica/ReporterConfig;)Lcom/yandex/metrica/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/km;->b(Lcom/yandex/metrica/c;)V

    return-void
.end method
