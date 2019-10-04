.class Lcom/yandex/metrica/impl/ob/ki$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ki;->a(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/yandex/metrica/impl/ob/ki;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ki;Ljava/util/List;J)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$3;->c:Lcom/yandex/metrica/impl/ob/ki;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ki$3;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/yandex/metrica/impl/ob/ki$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$3;->c:Lcom/yandex/metrica/impl/ob/ki;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ki$3;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/ki$3;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ki;->a(Lcom/yandex/metrica/impl/ob/ki;Ljava/util/List;J)V

    return-void
.end method
