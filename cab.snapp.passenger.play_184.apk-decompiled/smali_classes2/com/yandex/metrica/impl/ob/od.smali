.class public Lcom/yandex/metrica/impl/ob/od;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/nh<",
            "Lcom/yandex/metrica/impl/ob/oe;",
            "Lcom/yandex/metrica/impl/ob/oc;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/nh<",
            "Lcom/yandex/metrica/impl/s$a;",
            "Lcom/yandex/metrica/impl/ob/oc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/oa;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/oa;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/of;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/of;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/nx;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/nx;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/od;-><init>(Lcom/yandex/metrica/impl/ob/oc;Lcom/yandex/metrica/impl/ob/oc;Lcom/yandex/metrica/impl/ob/oc;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/oc;Lcom/yandex/metrica/impl/ob/oc;Lcom/yandex/metrica/impl/ob/oc;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/nh;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/nh;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/od;->a:Lcom/yandex/metrica/impl/ob/nh;

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/od;->a:Lcom/yandex/metrica/impl/ob/nh;

    sget-object v1, Lcom/yandex/metrica/impl/ob/oe;->a:Lcom/yandex/metrica/impl/ob/oe;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/nh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/od;->a:Lcom/yandex/metrica/impl/ob/nh;

    sget-object v1, Lcom/yandex/metrica/impl/ob/oe;->b:Lcom/yandex/metrica/impl/ob/oe;

    invoke-virtual {v0, v1, p2}, Lcom/yandex/metrica/impl/ob/nh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/od;->a:Lcom/yandex/metrica/impl/ob/nh;

    sget-object v0, Lcom/yandex/metrica/impl/ob/oe;->c:Lcom/yandex/metrica/impl/ob/oe;

    invoke-virtual {p2, v0, p3}, Lcom/yandex/metrica/impl/ob/nh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    new-instance p2, Lcom/yandex/metrica/impl/ob/nh;

    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/ob/nh;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/od;->b:Lcom/yandex/metrica/impl/ob/nh;

    .line 46
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/od;->b:Lcom/yandex/metrica/impl/ob/nh;

    sget-object p2, Lcom/yandex/metrica/impl/s$a;->p:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/nh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/oc;
    .locals 1

    .line 56
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->e()I

    move-result p1

    .line 57
    invoke-static {p1}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object p1

    .line 1063
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/od;->b:Lcom/yandex/metrica/impl/ob/nh;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/nh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/oc;

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/oe;)Lcom/yandex/metrica/impl/ob/oc;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/od;->a:Lcom/yandex/metrica/impl/ob/nh;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/nh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/oc;

    return-object p1
.end method
