.class public Lcom/yandex/metrica/impl/ob/ig$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/kz$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/kz$d<",
        "Lcom/yandex/metrica/impl/ob/ig;",
        "Lcom/yandex/metrica/impl/ob/ig$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ig$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ig$a;)Lcom/yandex/metrica/impl/ob/ig;
    .locals 3

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/ig;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ig$a;->b:Lcom/yandex/metrica/impl/ob/hq;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ig;-><init>(Lcom/yandex/metrica/impl/ob/hq;B)V

    .line 60
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ig$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/ig;->a(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ig$b;->a:Landroid/content/Context;

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bv;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/ig;->b(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V

    .line 64
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ig$a;->a:Lcom/yandex/metrica/impl/ob/ma;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/ig;->a(Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/ob/ma;)V

    .line 65
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ig$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/h;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/ig;->a(Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/h;)V

    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ig$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/ig;->c(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V

    .line 67
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ig$a;->a:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/ig;->d(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V

    .line 68
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ig$a;->a:Lcom/yandex/metrica/impl/ob/ma;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/ig;->e(Lcom/yandex/metrica/impl/ob/ig;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->a()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ig$b;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->c(Landroid/content/Context;)Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/ig;->a(Lcom/yandex/metrica/impl/ob/ig;Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 0

    .line 47
    check-cast p1, Lcom/yandex/metrica/impl/ob/ig$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ig$b;->a(Lcom/yandex/metrica/impl/ob/ig$a;)Lcom/yandex/metrica/impl/ob/ig;

    move-result-object p1

    return-object p1
.end method
