.class public final Lcom/yandex/metrica/impl/ob/fm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/fm$d;,
        Lcom/yandex/metrica/impl/ob/fm$c;,
        Lcom/yandex/metrica/impl/ob/fm$h;,
        Lcom/yandex/metrica/impl/ob/fm$g;,
        Lcom/yandex/metrica/impl/ob/fm$f;,
        Lcom/yandex/metrica/impl/ob/fm$e;,
        Lcom/yandex/metrica/impl/ob/fm$ab;,
        Lcom/yandex/metrica/impl/ob/fm$aa;,
        Lcom/yandex/metrica/impl/ob/fm$z;,
        Lcom/yandex/metrica/impl/ob/fm$x;,
        Lcom/yandex/metrica/impl/ob/fm$w;,
        Lcom/yandex/metrica/impl/ob/fm$v;,
        Lcom/yandex/metrica/impl/ob/fm$u;,
        Lcom/yandex/metrica/impl/ob/fm$t;,
        Lcom/yandex/metrica/impl/ob/fm$m;,
        Lcom/yandex/metrica/impl/ob/fm$p;,
        Lcom/yandex/metrica/impl/ob/fm$o;,
        Lcom/yandex/metrica/impl/ob/fm$n;,
        Lcom/yandex/metrica/impl/ob/fm$l;,
        Lcom/yandex/metrica/impl/ob/fm$k;,
        Lcom/yandex/metrica/impl/ob/fm$j;,
        Lcom/yandex/metrica/impl/ob/fm$i;,
        Lcom/yandex/metrica/impl/ob/fm$s;,
        Lcom/yandex/metrica/impl/ob/fm$r;,
        Lcom/yandex/metrica/impl/ob/fm$ac;,
        Lcom/yandex/metrica/impl/ob/fm$y;,
        Lcom/yandex/metrica/impl/ob/fm$q;,
        Lcom/yandex/metrica/impl/ob/fm$ad;,
        Lcom/yandex/metrica/impl/ob/fm$a;,
        Lcom/yandex/metrica/impl/ob/fm$ai;,
        Lcom/yandex/metrica/impl/ob/fm$ae;,
        Lcom/yandex/metrica/impl/ob/fm$af;,
        Lcom/yandex/metrica/impl/ob/fm$b;,
        Lcom/yandex/metrica/impl/ob/fm$ah;,
        Lcom/yandex/metrica/impl/ob/fm$ag;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:I

.field static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/fm$q;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/fm$q;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 50
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/yandex/metrica/impl/ob/fm;->a:Ljava/lang/Boolean;

    .line 53
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v0

    sput v0, Lcom/yandex/metrica/impl/ob/fm;->b:I

    .line 584
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 585
    sput-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$y;-><init>(B)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$ac;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$ac;-><init>(B)V

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$r;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$r;-><init>(B)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$s;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$s;-><init>(B)V

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 589
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$t;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$t;-><init>(B)V

    const/16 v4, 0x25

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$u;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$u;-><init>(B)V

    const/16 v4, 0x27

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$v;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$v;-><init>(B)V

    const/16 v4, 0x2d

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$w;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$w;-><init>(B)V

    const/16 v4, 0x2f

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$x;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$x;-><init>(B)V

    const/16 v5, 0x32

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 594
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$z;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$z;-><init>(B)V

    const/16 v6, 0x3c

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 595
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$aa;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$aa;-><init>(B)V

    const/16 v7, 0x42

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$ab;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$ab;-><init>(B)V

    const/16 v7, 0x43

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 600
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 601
    sput-object v0, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$i;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$i;-><init>(B)V

    const/16 v8, 0xc

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$j;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$j;-><init>(B)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 603
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$k;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$k;-><init>(B)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$l;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$l;-><init>(B)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$m;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$m;-><init>(B)V

    const/16 v3, 0x37

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 606
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$n;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$n;-><init>(B)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 607
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$o;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$o;-><init>(B)V

    const/16 v3, 0x3f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$p;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/fm$p;-><init>(B)V

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 612
    sput-object v0, Lcom/yandex/metrica/impl/ob/fm;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$ag;->a:[Ljava/lang/String;

    const-string v2, "reports"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$ah;->a:[Ljava/lang/String;

    const-string v2, "sessions"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$af;->a:[Ljava/lang/String;

    const-string v2, "preferences"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/yandex/metrica/impl/ob/fm;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$b;->a:[Ljava/lang/String;

    const-string v2, "binary_data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/fv;
    .locals 6

    .line 619
    new-instance v0, Lcom/yandex/metrica/impl/ob/fv;

    new-instance v1, Lcom/yandex/metrica/impl/ob/fm$e;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/fm$e;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/fm$f;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/fm$f;-><init>()V

    sget-object v3, Lcom/yandex/metrica/impl/ob/fm;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/yandex/metrica/impl/ob/fx;

    sget-object v5, Lcom/yandex/metrica/impl/ob/fm;->e:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/fx;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/fv;-><init>(Lcom/yandex/metrica/impl/ob/fm$q;Lcom/yandex/metrica/impl/ob/fm$q;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/fw;)V

    return-object v0
.end method

.method public static b()Lcom/yandex/metrica/impl/ob/fv;
    .locals 6

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 630
    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$af;->a:[Ljava/lang/String;

    const-string v2, "preferences"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$b;->a:[Ljava/lang/String;

    const-string v2, "binary_data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$ai;->a:[Ljava/lang/String;

    const-string v2, "startup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$a;->a:[Ljava/lang/String;

    const-string v2, "l_dat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$a;->a:[Ljava/lang/String;

    const-string v2, "lbs_dat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$ae;->a:[Ljava/lang/String;

    const-string v2, "permissions"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v1, Lcom/yandex/metrica/impl/ob/fv;

    new-instance v2, Lcom/yandex/metrica/impl/ob/fm$g;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/fm$g;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/fm$h;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/fm$h;-><init>()V

    sget-object v4, Lcom/yandex/metrica/impl/ob/fm;->d:Landroid/util/SparseArray;

    new-instance v5, Lcom/yandex/metrica/impl/ob/fx;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/fx;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/fv;-><init>(Lcom/yandex/metrica/impl/ob/fm$q;Lcom/yandex/metrica/impl/ob/fm$q;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/fw;)V

    return-object v1
.end method

.method public static c()Lcom/yandex/metrica/impl/ob/fv;
    .locals 6

    .line 647
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 648
    sget-object v1, Lcom/yandex/metrica/impl/ob/fm$af;->a:[Ljava/lang/String;

    const-string v2, "preferences"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    new-instance v1, Lcom/yandex/metrica/impl/ob/fv;

    new-instance v2, Lcom/yandex/metrica/impl/ob/fm$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/fm$c;-><init>(B)V

    new-instance v4, Lcom/yandex/metrica/impl/ob/fm$d;

    invoke-direct {v4, v3}, Lcom/yandex/metrica/impl/ob/fm$d;-><init>(B)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/fx;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/fx;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/yandex/metrica/impl/ob/fv;-><init>(Lcom/yandex/metrica/impl/ob/fm$q;Lcom/yandex/metrica/impl/ob/fm$q;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/fw;)V

    return-object v1
.end method
