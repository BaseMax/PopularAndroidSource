.class final Lcab/snapp/passenger/e/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/e/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/e/a/b;

.field private final b:Lcab/snapp/passenger/e/b/d;

.field private c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/authenticator/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/snappnetwork/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/network/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/data_access_layer/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcab/snapp/passenger/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcab/snapp/passenger/e/a/b;Lcab/snapp/passenger/e/b/d;)V
    .locals 7

    .line 497
    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    invoke-static {p2}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/e/b/d;

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    .line 1504
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 2193
    iget-object p2, p2, Lcab/snapp/passenger/e/a/b;->b:Ljavax/inject/Provider;

    .line 1506
    invoke-static {p1, p2}, Lcab/snapp/passenger/e/b/l;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1505
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->c:Ljavax/inject/Provider;

    .line 1508
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 3193
    iget-object p2, p2, Lcab/snapp/passenger/e/a/b;->b:Ljavax/inject/Provider;

    .line 1512
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 4193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->d:Ljavax/inject/Provider;

    .line 1510
    invoke-static {p1, p2, v0}, Lcab/snapp/passenger/e/b/m;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1509
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->d:Ljavax/inject/Provider;

    .line 1514
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 5193
    iget-object p2, p2, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 1518
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->d:Ljavax/inject/Provider;

    .line 1516
    invoke-static {p1, p2, v0}, Lcab/snapp/passenger/e/b/i;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1515
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->e:Ljavax/inject/Provider;

    .line 1520
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 6193
    iget-object p2, p2, Lcab/snapp/passenger/e/a/b;->b:Ljavax/inject/Provider;

    .line 1522
    invoke-static {p1, p2}, Lcab/snapp/passenger/e/b/e;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1521
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->f:Ljavax/inject/Provider;

    .line 1524
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->f:Ljavax/inject/Provider;

    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->d:Ljavax/inject/Provider;

    .line 1526
    invoke-static {p1, p2, v0}, Lcab/snapp/passenger/e/b/k;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1525
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->g:Ljavax/inject/Provider;

    .line 1528
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->e:Ljavax/inject/Provider;

    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->g:Ljavax/inject/Provider;

    .line 1530
    invoke-static {p1, p2, v0}, Lcab/snapp/passenger/e/b/s;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1529
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->h:Ljavax/inject/Provider;

    .line 1534
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->h:Ljavax/inject/Provider;

    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->c:Ljavax/inject/Provider;

    iget-object v1, p0, Lcab/snapp/passenger/e/a/b$b;->g:Ljavax/inject/Provider;

    .line 1536
    invoke-static {p1, p2, v0, v1}, Lcab/snapp/passenger/e/b/j;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1535
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->i:Ljavax/inject/Provider;

    .line 1541
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->d:Ljavax/inject/Provider;

    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 7193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 1546
    iget-object v1, p0, Lcab/snapp/passenger/e/a/b$b;->i:Ljavax/inject/Provider;

    .line 1543
    invoke-static {p1, p2, v0, v1}, Lcab/snapp/passenger/e/b/o;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1542
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 1548
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 8193
    iget-object p2, p2, Lcab/snapp/passenger/e/a/b;->b:Ljavax/inject/Provider;

    .line 1552
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    iget-object v1, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 9193
    iget-object v1, v1, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 1550
    invoke-static {p1, p2, v0, v1}, Lcab/snapp/passenger/e/b/n;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1549
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 1555
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 10193
    iget-object p2, p2, Lcab/snapp/passenger/e/a/b;->b:Ljavax/inject/Provider;

    .line 1557
    invoke-static {p1, p2}, Lcab/snapp/passenger/e/b/r;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1556
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 1559
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->i:Ljavax/inject/Provider;

    iget-object v1, p0, Lcab/snapp/passenger/e/a/b$b;->h:Ljavax/inject/Provider;

    .line 1561
    invoke-static {p1, p2, v0, v1}, Lcab/snapp/passenger/e/b/g;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1560
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->m:Ljavax/inject/Provider;

    .line 1566
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->f:Ljavax/inject/Provider;

    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->m:Ljavax/inject/Provider;

    .line 1568
    invoke-static {p1, p2, v0}, Lcab/snapp/passenger/e/b/h;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1567
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->n:Ljavax/inject/Provider;

    .line 1570
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object v1, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    iget-object v2, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    iget-object v3, p0, Lcab/snapp/passenger/e/a/b$b;->m:Ljavax/inject/Provider;

    iget-object v4, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    iget-object v5, p0, Lcab/snapp/passenger/e/a/b$b;->n:Ljavax/inject/Provider;

    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 11193
    iget-object v6, p1, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 1572
    invoke-static/range {v0 .. v6}, Lcab/snapp/passenger/e/b/u;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1571
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 1580
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 1582
    invoke-static {p1, p2}, Lcab/snapp/passenger/e/b/q;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1581
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 1584
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    .line 1586
    invoke-static {p1}, Lcab/snapp/passenger/e/b/v;->create(Lcab/snapp/passenger/e/b/d;)Ldagger/a/b;

    move-result-object p1

    .line 1585
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->q:Ljavax/inject/Provider;

    .line 1587
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 12193
    iget-object p2, p2, Lcab/snapp/passenger/e/a/b;->b:Ljavax/inject/Provider;

    .line 1591
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 1589
    invoke-static {p1, p2, v0}, Lcab/snapp/passenger/e/b/p;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1588
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->r:Ljavax/inject/Provider;

    .line 1593
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    iget-object p2, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    iget-object v1, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 13193
    iget-object v1, v1, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 1595
    invoke-static {p1, p2, v0, v1}, Lcab/snapp/passenger/e/b/t;->create(Lcab/snapp/passenger/e/b/d;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/a/b;

    move-result-object p1

    .line 1594
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 1600
    iget-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->b:Lcab/snapp/passenger/e/b/d;

    .line 1602
    invoke-static {p1}, Lcab/snapp/passenger/e/b/f;->create(Lcab/snapp/passenger/e/b/d;)Ldagger/a/b;

    move-result-object p1

    .line 1601
    invoke-static {p1}, Ldagger/a/a;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$b;->t:Ljavax/inject/Provider;

    return-void
.end method

.method synthetic constructor <init>(Lcab/snapp/passenger/e/a/b;Lcab/snapp/passenger/e/b/d;B)V
    .locals 0

    .line 458
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/e/a/b$b;-><init>(Lcab/snapp/passenger/e/a/b;Lcab/snapp/passenger/e/b/d;)V

    return-void
.end method


# virtual methods
.method public final inject(Lcab/snapp/passenger/BaseApplication;)V
    .locals 1

    .line 13877
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->c:Ljavax/inject/Provider;

    .line 13878
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b/a;

    .line 13877
    invoke-static {p1, v0}, Lcab/snapp/passenger/b;->injectSharedPreferencesManager(Lcab/snapp/passenger/BaseApplication;Lcab/snapp/b/a;)V

    .line 13879
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->i:Ljavax/inject/Provider;

    .line 13880
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/b;

    .line 13879
    invoke-static {p1, v0}, Lcab/snapp/passenger/b;->injectNetworkModules(Lcab/snapp/passenger/BaseApplication;Lcab/snapp/passenger/data_access_layer/network/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/activities/base/BaseActivity;)V
    .locals 1

    .line 46248
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 46249
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 46248
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/base/a;->injectSnappLocationDataManager(Lcab/snapp/passenger/activities/base/BaseActivity;Lcab/snapp/passenger/c/e;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/activities/launcher/LauncherActivity;)V
    .locals 1

    .line 33112
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 33113
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 33112
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/launcher/a;->injectSnappRideDataManager(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/c/g;)V

    .line 33114
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 33193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 33115
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 33114
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/launcher/a;->injectReportManagerHelper(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/f/b/b/c;)V

    .line 33116
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->t:Ljavax/inject/Provider;

    .line 33117
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b;

    .line 33116
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/launcher/a;->injectDeepLinkHelper(Lcab/snapp/passenger/activities/launcher/LauncherActivity;Lcab/snapp/passenger/f/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/activities/root/AuthenticatorActivity;)V
    .locals 1

    .line 50271
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->d:Ljavax/inject/Provider;

    .line 50272
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/authenticator/c;

    .line 50271
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/a;->injectSnappAccountManager(Lcab/snapp/passenger/activities/root/AuthenticatorActivity;Lcab/snapp/authenticator/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/activities/root/RootActivity;)V
    .locals 1

    .line 14905
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 14906
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 14905
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/base/a;->injectSnappLocationDataManager(Lcab/snapp/passenger/activities/base/BaseActivity;Lcab/snapp/passenger/c/e;)V

    .line 14907
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 15193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 14908
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 14907
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectShowcaseHelper(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/f/o;)V

    .line 14909
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 14910
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 14909
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/b;)V

    .line 14911
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 14912
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 14911
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectSnappRideDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/g;)V

    .line 14913
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 14914
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    .line 14913
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/c/d;)V

    .line 14915
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 16193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 14916
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 14915
    invoke-static {p1, v0}, Lcab/snapp/passenger/activities/root/b;->injectReportManagerHelper(Lcab/snapp/passenger/activities/root/RootActivity;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/about_us/a;)V
    .locals 1

    .line 48262
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 48263
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 48262
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/about_us/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/about_us/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 48264
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 49193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 48265
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 48264
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/about_us/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/about_us/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/box_options/a;)V
    .locals 1

    .line 34122
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 34123
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 34122
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/box_options/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/box_options/a;Lcab/snapp/passenger/c/g;)V

    .line 34124
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 34193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 34125
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 34124
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/box_options/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/box_options/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/charge/a;)V
    .locals 1

    .line 29055
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 29056
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 29055
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/charge/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/c/b;)V

    .line 29057
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 29058
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 29057
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/charge/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 29059
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 29193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 29060
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 29059
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/charge/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/charge/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/charge_confirm_payment/a;)V
    .locals 1

    .line 50304
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50305
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50304
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/charge_confirm_payment/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/charge_confirm_payment/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50306
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->t:Ljavax/inject/Provider;

    .line 50307
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b;

    .line 50306
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/charge_confirm_payment/b;->injectDeepLinkHelper(Lcab/snapp/passenger/units/charge_confirm_payment/a;Lcab/snapp/passenger/f/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/charge_recently/a;)V
    .locals 1

    .line 50293
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50294
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50293
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/charge_recently/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/charge_recently/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/charge_select_amount/a;)V
    .locals 1

    .line 50299
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50300
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50299
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/charge_select_amount/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/charge_select_amount/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50301
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 50302
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 50301
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/charge_select_amount/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/charge_select_amount/a;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/credit/a;)V
    .locals 1

    .line 49270
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 49271
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 49270
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/credit/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/credit/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 49272
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 49273
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 49272
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/credit/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/credit/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;)V
    .locals 1

    .line 33093
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 33094
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 33093
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/a;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressController;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/favorite_add_address/b;)V
    .locals 1

    .line 16922
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 16923
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 16922
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/c;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/passenger/c/b;)V

    .line 16924
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->q:Ljavax/inject/Provider;

    .line 16925
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/h;

    .line 16924
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/c;->injectSnappSearchDataManager(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/passenger/c/h;)V

    .line 16926
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->r:Ljavax/inject/Provider;

    .line 16927
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/c;

    .line 16926
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/c;->injectSnappFavoritesDataManager(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/passenger/c/c;)V

    .line 16928
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 16929
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 16928
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/c;->injectSnappLocationDataManager(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/passenger/c/e;)V

    .line 16930
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 16931
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 16930
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/c;->injectSnappDataLayer(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 16932
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 17193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 16933
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 16932
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/c;->injectReportManagerHelper(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/favorite_address/a;)V
    .locals 1

    .line 35131
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 35132
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 35131
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/g;)V

    .line 35133
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->r:Ljavax/inject/Provider;

    .line 35134
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/c;

    .line 35133
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/b;->injectSnappFavoritesDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/c;)V

    .line 35135
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 35136
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 35135
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/b;->injectSnappLocationDataManager(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/c/e;)V

    .line 35137
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 35193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 35138
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 35137
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_address/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/favorite_bar/a;)V
    .locals 1

    .line 36143
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 36144
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 36143
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_bar/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/favorite_bar/a;Lcab/snapp/passenger/c/g;)V

    .line 36145
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->r:Ljavax/inject/Provider;

    .line 36146
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/c;

    .line 36145
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_bar/b;->injectSnappFavoritesDataManager(Lcab/snapp/passenger/units/favorite_bar/a;Lcab/snapp/passenger/c/c;)V

    .line 36147
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 36193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 36148
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 36147
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/favorite_bar/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/favorite_bar/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V
    .locals 1

    .line 31076
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 31193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 31077
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 31076
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/b;->injectShowcaseHelper(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;Lcab/snapp/passenger/f/o;)V

    .line 31078
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 31079
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 31078
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;Lcab/snapp/passenger/c/f;)V

    .line 31080
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 31081
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 31080
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;Lcab/snapp/passenger/c/b;)V

    .line 31082
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 31083
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 31082
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;Lcab/snapp/passenger/c/g;)V

    .line 31084
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 31085
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 31084
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 31086
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 32193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 31087
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 31086
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/footer/mainfooter/a;)V
    .locals 1

    .line 37153
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 37154
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 37153
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/mainfooter/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/footer/mainfooter/a;Lcab/snapp/passenger/c/g;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V
    .locals 1

    .line 17939
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 18193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 17940
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 17939
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/b;->injectShowcaseHelper(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Lcab/snapp/passenger/f/o;)V

    .line 17941
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 17942
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 17941
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Lcab/snapp/passenger/c/b;)V

    .line 17943
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 17944
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 17943
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Lcab/snapp/passenger/c/g;)V

    .line 17945
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 17946
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 17945
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 17947
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 19193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 17948
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 17947
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/forgot_password/a;)V
    .locals 1

    .line 50194
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50195
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50194
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/forgot_password/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/forgot_password/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50196
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50199
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50197
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50196
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/forgot_password/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/forgot_password/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/jek_header/a;)V
    .locals 1

    .line 50286
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 50287
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    .line 50286
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/jek_header/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/d;)V

    .line 50288
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 50289
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 50288
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/jek_header/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/f;)V

    .line 50290
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 50291
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 50290
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/jek_header/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/c/g;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/login/loginWithEmail/a;)V
    .locals 1

    .line 50200
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50201
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50200
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/login/loginWithEmail/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/login/loginWithEmail/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50202
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50207
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50203
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50202
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/login/loginWithEmail/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/login/loginWithEmail/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 50204
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->d:Ljavax/inject/Provider;

    .line 50205
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/authenticator/c;

    .line 50204
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/login/loginWithEmail/b;->injectSnappAccountManager(Lcab/snapp/passenger/units/login/loginWithEmail/a;Lcab/snapp/authenticator/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/login/loginWithOTP/a;)V
    .locals 1

    .line 50208
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50209
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50208
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/login/loginWithOTP/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50210
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50213
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50211
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50210
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/login/loginWithOTP/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;)V
    .locals 1

    .line 50214
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50215
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50214
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50216
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50219
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50217
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50216
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/main/MainController;)V
    .locals 1

    .line 33099
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 33100
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 33099
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/a;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/main/MainController;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/main/b;)V
    .locals 1

    .line 19953
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 20193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 19954
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 19953
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectShowcaseHelper(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/f/o;)V

    .line 19955
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 19956
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 19955
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/c/b;)V

    .line 19957
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 19958
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 19957
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectSnappRideDataManager(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/c/g;)V

    .line 19959
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->q:Ljavax/inject/Provider;

    .line 19960
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/h;

    .line 19959
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectSnappSearchDataManager(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/c/h;)V

    .line 19961
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 19962
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 19961
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/c/f;)V

    .line 19963
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 19964
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 19963
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectSnappLocationDataManager(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/c/e;)V

    .line 19965
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 19966
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 19965
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectSnappDataLayer(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 19967
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 21193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 19968
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 19967
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectReportManagerHelper(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/f/b/b/c;)V

    .line 19969
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->c:Ljavax/inject/Provider;

    .line 19970
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b/a;

    .line 19969
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectSharedPreferencesManager(Lcab/snapp/passenger/units/main/b;Lcab/snapp/b/a;)V

    .line 19971
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->t:Ljavax/inject/Provider;

    .line 19972
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b;

    .line 19971
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectDeepLinkHelper(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/f/b;)V

    .line 19973
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 19974
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    .line 19973
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/main/c;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/c/d;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/mainheader/a;)V
    .locals 1

    .line 21979
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 22193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 21980
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 21979
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/b;->injectShowcaseHelper(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/f/o;)V

    .line 21981
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 21982
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 21981
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/c/b;)V

    .line 21983
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 21984
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 21983
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/c/g;)V

    .line 21985
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 21986
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 21985
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 21987
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 23193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 21988
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 21987
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 21989
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 21990
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    .line 21989
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/c/d;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/messages/a;)V
    .locals 1

    .line 50220
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50221
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50220
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/messages/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/messages/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50222
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50225
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50223
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50222
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/messages/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/messages/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/over_the_map_empty/a;)V
    .locals 1

    .line 50226
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 50227
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 50226
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/over_the_map_empty/b;->injectM(Lcab/snapp/passenger/units/over_the_map_empty/a;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/payment/a;)V
    .locals 1

    .line 23995
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 23996
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 23995
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/f;)V

    .line 23997
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 23998
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 23997
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 23999
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 24193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 24000
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 23999
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 24001
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 24002
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 24001
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/g;)V

    .line 24003
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 24004
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 24003
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/payment/b;->injectConfigDataManager(Lcab/snapp/passenger/units/payment/a;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/phone_verification/a;)V
    .locals 1

    .line 50235
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50236
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50235
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/phone_verification/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/phone_verification/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50237
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50240
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50238
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50237
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/phone_verification/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/phone_verification/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/profile/a;)V
    .locals 1

    .line 44228
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 44229
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 44228
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/profile/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/profile/a;Lcab/snapp/passenger/c/f;)V

    .line 44230
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 45193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 44231
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 44230
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/profile/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/profile/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/referral/a;)V
    .locals 1

    .line 25009
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 25010
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 25009
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/referral/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/referral/a;Lcab/snapp/passenger/c/b;)V

    .line 25011
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 25193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 25012
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 25011
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/referral/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/referral/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/request_ride_waiting/a;)V
    .locals 1

    .line 26018
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 26019
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 26018
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/request_ride_waiting/a;Lcab/snapp/passenger/c/b;)V

    .line 26020
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 26021
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 26020
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/request_ride_waiting/a;Lcab/snapp/passenger/c/g;)V

    .line 26022
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 26193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 26023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 26022
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/request_ride_waiting/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/ride_history/a;)V
    .locals 1

    .line 50229
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50230
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50229
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_history/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/ride_history/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50231
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50234
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50232
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50231
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_history/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/ride_history/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/ride_history_details/a;)V
    .locals 1

    .line 50241
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50244
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50242
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50241
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_history_details/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/ride_history_details/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/ride_options/a;)V
    .locals 1

    .line 37159
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 37160
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 37159
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_options/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/ride_options/a;Lcab/snapp/passenger/c/g;)V

    .line 37161
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 37162
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 37161
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_options/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/ride_options/a;Lcab/snapp/passenger/c/f;)V

    .line 37163
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 37193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 37164
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 37163
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_options/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/ride_options/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/ride_rating/a;)V
    .locals 1

    .line 38169
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 38193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 38170
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 38169
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_rating/b;->injectShowcaseHelper(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/f/o;)V

    .line 38171
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 38172
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 38171
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_rating/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/c/g;)V

    .line 38173
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 38174
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 38173
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_rating/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 38175
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 39193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 38176
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 38175
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ride_rating/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/ride_rating/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/search/a;)V
    .locals 1

    .line 40181
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 41193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 40182
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 40181
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectShowcaseHelper(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/f/o;)V

    .line 40183
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 40184
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 40183
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/g;)V

    .line 40185
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->q:Ljavax/inject/Provider;

    .line 40186
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/h;

    .line 40185
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectSnappSearchDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/h;)V

    .line 40187
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 40188
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 40187
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectSnappLocationDataManager(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/c/e;)V

    .line 40189
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 40190
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 40189
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 40191
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 42193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 40192
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 40191
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/search/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/search/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/second_destination/SecondDestinationController;)V
    .locals 1

    .line 33106
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 33107
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 33106
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/second_destination/a;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/second_destination/SecondDestinationController;Lcab/snapp/passenger/c/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/second_destination/b;)V
    .locals 1

    .line 27029
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 27030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 27029
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/second_destination/c;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/passenger/c/b;)V

    .line 27031
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 27032
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 27031
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/second_destination/c;->injectSnappRideDataManager(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/passenger/c/g;)V

    .line 27033
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->q:Ljavax/inject/Provider;

    .line 27034
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/h;

    .line 27033
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/second_destination/c;->injectSnappSearchDataManager(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/passenger/c/h;)V

    .line 27035
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 27036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 27035
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/second_destination/c;->injectSnappLocationDataManager(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/passenger/c/e;)V

    .line 27037
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 27038
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 27037
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/second_destination/c;->injectSnappDataLayer(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 27039
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 27193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 27040
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 27039
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/second_destination/c;->injectReportManagerHelper(Lcab/snapp/passenger/units/second_destination/b;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/setting/a;)V
    .locals 1

    .line 45236
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 45237
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 45236
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/setting/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/c/b;)V

    .line 45238
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->c:Ljavax/inject/Provider;

    .line 45239
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b/a;

    .line 45238
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/setting/b;->injectSharedPreferencesManager(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/b/a;)V

    .line 45240
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 45241
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 45240
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/setting/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 45242
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 46193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 45243
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 45242
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/setting/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/sideMenu/a;)V
    .locals 1

    .line 42197
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->r:Ljavax/inject/Provider;

    .line 42198
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/c;

    .line 42197
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappFavoritesDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/c;)V

    .line 42199
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 42200
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 42199
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/f;)V

    .line 42201
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 42202
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 42201
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/b;)V

    .line 42203
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->q:Ljavax/inject/Provider;

    .line 42204
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/h;

    .line 42203
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappSearchDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/h;)V

    .line 42205
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 42206
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 42205
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/g;)V

    .line 42207
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 42208
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    .line 42207
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/c/d;)V

    .line 42209
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 43193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 42210
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 42209
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 42211
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->d:Ljavax/inject/Provider;

    .line 42212
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/authenticator/c;

    .line 42211
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/sideMenu/b;->injectSnappAccountManager(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/authenticator/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/signup/a;)V
    .locals 1

    .line 28045
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 28046
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 28045
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/signup/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/signup/a;Lcab/snapp/passenger/c/b;)V

    .line 28047
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 28048
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 28047
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/signup/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/signup/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 28049
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 28193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 28050
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 28049
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/signup/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/signup/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/skippable_mobile_verification/a;)V
    .locals 1

    .line 43218
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 43219
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    .line 43218
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/skippable_mobile_verification/a;Lcab/snapp/passenger/c/d;)V

    .line 43220
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 43221
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 43220
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/skippable_mobile_verification/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 43222
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 44193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 43223
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 43222
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/skippable_mobile_verification/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/snapp_charge_transactions/a;)V
    .locals 1

    .line 50296
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50297
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50296
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/snapp_charge_transactions/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;)V
    .locals 1

    .line 50245
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50248
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50246
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50245
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/snapp_services/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/splash/a;)V
    .locals 1

    .line 13885
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->c:Ljavax/inject/Provider;

    .line 13886
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b/a;

    .line 13885
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSharedPreferencesManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/b/a;)V

    .line 13887
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 13888
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 13887
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/b;)V

    .line 13889
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 13890
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 13889
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSnappRideDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/g;)V

    .line 13891
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 13892
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    .line 13891
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSnappGroupDataManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/c/d;)V

    .line 13893
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 14193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 13894
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 13893
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 13895
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->d:Ljavax/inject/Provider;

    .line 13896
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/authenticator/c;

    .line 13895
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectSnappAccountManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/authenticator/c;)V

    .line 13897
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->i:Ljavax/inject/Provider;

    .line 13898
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/b;

    .line 13897
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectNetworkModules(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/data_access_layer/network/b;)V

    .line 13899
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->n:Ljavax/inject/Provider;

    .line 13900
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/b;

    .line 13899
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/splash/b;->injectEventManager(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/b;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/support/a;)V
    .locals 1

    .line 30065
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 30066
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 30065
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/support/b;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/support/a;Lcab/snapp/passenger/c/b;)V

    .line 30067
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 30068
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 30067
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/support/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/support/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 30069
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 30193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 30070
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 30069
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/support/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/support/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/ticket/a;)V
    .locals 1

    .line 50265
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50266
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50265
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ticket/b;->injectSnappDataLayer(Lcab/snapp/passenger/units/ticket/a;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50267
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50270
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50268
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50267
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/ticket/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/ticket/a;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/top_up_payment/b;)V
    .locals 1

    .line 50274
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->j:Ljavax/inject/Provider;

    .line 50275
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/d;

    .line 50274
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/c;->injectSnappDataLayer(Lcab/snapp/passenger/units/top_up_payment/b;Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 50276
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50285
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50277
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50276
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/c;->injectReportManagerHelper(Lcab/snapp/passenger/units/top_up_payment/b;Lcab/snapp/passenger/f/b/b/c;)V

    .line 50278
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 50279
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 50278
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/c;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/top_up_payment/b;Lcab/snapp/passenger/c/f;)V

    .line 50280
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->k:Ljavax/inject/Provider;

    .line 50281
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/b;

    .line 50280
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/c;->injectSnappConfigDataManager(Lcab/snapp/passenger/units/top_up_payment/b;Lcab/snapp/passenger/c/b;)V

    .line 50282
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 50283
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 50282
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/c;->injectSnappRideDataManager(Lcab/snapp/passenger/units/top_up_payment/b;Lcab/snapp/passenger/c/g;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/tour/b;)V
    .locals 1

    .line 46254
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 47193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->a:Ljavax/inject/Provider;

    .line 46255
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/o;

    .line 46254
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/tour/c;->injectShowcaseHelper(Lcab/snapp/passenger/units/tour/b;Lcab/snapp/passenger/f/o;)V

    .line 46256
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 48193
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 46257
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 46256
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/tour/c;->injectReportManagerHelper(Lcab/snapp/passenger/units/tour/b;Lcab/snapp/passenger/f/b/b/c;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/webhost/a;)V
    .locals 1

    .line 50249
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50258
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50250
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50249
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/webhost/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 50251
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->o:Ljavax/inject/Provider;

    .line 50252
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/g;

    .line 50251
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/webhost/b;->injectRideDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/g;)V

    .line 50253
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->p:Ljavax/inject/Provider;

    .line 50254
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/d;

    .line 50253
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/webhost/b;->injectGroupDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/d;)V

    .line 50255
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->l:Ljavax/inject/Provider;

    .line 50256
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/e;

    .line 50255
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/webhost/b;->injectLocationDataManager(Lcab/snapp/passenger/units/webhost/a;Lcab/snapp/passenger/c/e;)V

    return-void
.end method

.method public final inject(Lcab/snapp/passenger/units/welcome/a;)V
    .locals 1

    .line 50259
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->a:Lcab/snapp/passenger/e/a/b;

    .line 50264
    iget-object v0, v0, Lcab/snapp/passenger/e/a/b;->c:Ljavax/inject/Provider;

    .line 50260
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/b/c;

    .line 50259
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/welcome/b;->injectReportManagerHelper(Lcab/snapp/passenger/units/welcome/a;Lcab/snapp/passenger/f/b/b/c;)V

    .line 50261
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$b;->s:Ljavax/inject/Provider;

    .line 50262
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/c/f;

    .line 50261
    invoke-static {p1, v0}, Lcab/snapp/passenger/units/welcome/b;->injectSnappProfileDataManager(Lcab/snapp/passenger/units/welcome/a;Lcab/snapp/passenger/c/f;)V

    return-void
.end method
