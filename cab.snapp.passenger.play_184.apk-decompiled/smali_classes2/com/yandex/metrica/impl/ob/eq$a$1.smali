.class Lcom/yandex/metrica/impl/ob/eq$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/eq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/eq$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/eq$a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eq$a$1;->a:Lcom/yandex/metrica/impl/ob/eq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eq$a$1;->a:Lcom/yandex/metrica/impl/ob/eq$a;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eq$a;->a(Lcom/yandex/metrica/impl/ob/eq$a;)V

    .line 67
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/eq$a$1;->a:Lcom/yandex/metrica/impl/ob/eq$a;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eq$a;->b(Lcom/yandex/metrica/impl/ob/eq$a;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
