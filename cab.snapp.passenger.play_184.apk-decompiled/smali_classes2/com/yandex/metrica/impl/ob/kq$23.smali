.class Lcom/yandex/metrica/impl/ob/kq$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kq;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/kq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kq$23;->c:Lcom/yandex/metrica/impl/ob/kq;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kq$23;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/kq$23;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kq$23;->c:Lcom/yandex/metrica/impl/ob/kq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kq;->c()Lcom/yandex/metrica/impl/ob/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/kp;->e()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kq$23;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kq$23;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ad;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
