.class public Lcom/yandex/metrica/impl/ob/ht;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/bw;

.field private final b:Lcom/yandex/metrica/impl/ob/mw;

.field private final c:Lcom/yandex/metrica/impl/ob/ii;

.field private final d:Lcom/yandex/metrica/impl/ob/hu;

.field private final e:Lcom/yandex/metrica/impl/ob/hm;

.field private final f:Lcom/yandex/metrica/impl/ob/np;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/bw;Lcom/yandex/metrica/impl/ob/mw;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 7

    .line 41
    new-instance v4, Lcom/yandex/metrica/impl/ob/hu;

    invoke-direct {v4, p1}, Lcom/yandex/metrica/impl/ob/hu;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ht;-><init>(Lcom/yandex/metrica/impl/bw;Lcom/yandex/metrica/impl/ob/mw;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hu;Lcom/yandex/metrica/impl/ob/np;Lcom/yandex/metrica/impl/ob/hm;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/bw;Lcom/yandex/metrica/impl/ob/mw;Lcom/yandex/metrica/impl/ob/ii;Lcom/yandex/metrica/impl/ob/hu;Lcom/yandex/metrica/impl/ob/np;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ht;->a:Lcom/yandex/metrica/impl/bw;

    .line 66
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ht;->b:Lcom/yandex/metrica/impl/ob/mw;

    .line 67
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ht;->c:Lcom/yandex/metrica/impl/ob/ii;

    .line 68
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ht;->d:Lcom/yandex/metrica/impl/ob/hu;

    .line 69
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ht;->f:Lcom/yandex/metrica/impl/ob/np;

    .line 70
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/ht;->e:Lcom/yandex/metrica/impl/ob/hm;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/hv;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/hv;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ht;->f:Lcom/yandex/metrica/impl/ob/np;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/np;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/hv;->a(J)V

    .line 47
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ht;->a:Lcom/yandex/metrica/impl/bw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bw;->a()Lorg/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/hv;->a(Lorg/a/a;)V

    .line 48
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ht;->b:Lcom/yandex/metrica/impl/ob/mw;

    new-instance v2, Lcom/yandex/metrica/impl/ob/ht$1;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/ht$1;-><init>(Lcom/yandex/metrica/impl/ob/hv;)V

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/mw;->a(Lcom/yandex/metrica/impl/ob/mo;)V

    .line 53
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ht;->d:Lcom/yandex/metrica/impl/ob/hu;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/hu;->a(Lcom/yandex/metrica/impl/ob/hv;)V

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ht;->c:Lcom/yandex/metrica/impl/ob/ii;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ii;->a()V

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ht;->e:Lcom/yandex/metrica/impl/ob/hm;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hm;->a()V

    return-void
.end method
