.class public Lcom/yandex/metrica/impl/ob/lh;
.super Lcom/yandex/metrica/impl/ob/li;
.source "SourceFile"


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/lg;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/li;-><init>(I)V

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/lg;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/lg;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/lh;->b:Lcom/yandex/metrica/impl/ob/lg;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lh;->b:Lcom/yandex/metrica/impl/ob/lg;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lg;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/li;->a()V

    return-void
.end method
