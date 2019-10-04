.class public Lcom/yandex/metrica/impl/ob/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bp$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/yandex/metrica/impl/i;

.field private final c:Lcom/yandex/metrica/impl/ob/bq;

.field private final d:Lcom/yandex/metrica/impl/ob/bs;

.field private final e:Lcom/yandex/metrica/impl/ob/op;

.field private final f:Lcom/yandex/metrica/impl/ob/op;

.field private final g:Lcom/yandex/metrica/impl/ob/nq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/bp$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/bp$1;-><init>()V

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bq;Lcom/yandex/metrica/impl/ob/bs;)V
    .locals 7

    .line 64
    new-instance v4, Lcom/yandex/metrica/impl/ob/op;

    const/16 v0, 0x400

    const-string v1, "diagnostic event name"

    invoke-direct {v4, v0, v1}, Lcom/yandex/metrica/impl/ob/op;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/op;

    const v0, 0x32000

    const-string v1, "diagnostic event value"

    invoke-direct {v5, v0, v1}, Lcom/yandex/metrica/impl/ob/op;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/bp;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bq;Lcom/yandex/metrica/impl/ob/bs;Lcom/yandex/metrica/impl/ob/op;Lcom/yandex/metrica/impl/ob/op;Lcom/yandex/metrica/impl/ob/nq;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bq;Lcom/yandex/metrica/impl/ob/bs;Lcom/yandex/metrica/impl/ob/op;Lcom/yandex/metrica/impl/ob/op;Lcom/yandex/metrica/impl/ob/nq;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Lcom/yandex/metrica/impl/i;

    .line 87
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bp;->c:Lcom/yandex/metrica/impl/ob/bq;

    .line 88
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bp;->d:Lcom/yandex/metrica/impl/ob/bs;

    .line 89
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/bp;->f:Lcom/yandex/metrica/impl/ob/op;

    .line 90
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/bp;->e:Lcom/yandex/metrica/impl/ob/op;

    .line 91
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/bp;->g:Lcom/yandex/metrica/impl/ob/nq;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 8

    .line 95
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c;-><init>()V

    .line 96
    new-instance v1, Lcom/yandex/metrica/impl/ob/ka$c$e;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ka$c$e;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/yandex/metrica/impl/ob/ka$c$e;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 97
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    .line 98
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bp;->d:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/bs;->a()Lcom/yandex/metrica/impl/ob/bs$a;

    move-result-object v3

    .line 99
    iget-wide v5, v3, Lcom/yandex/metrica/impl/ob/bs$a;->a:J

    iput-wide v5, v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->b:J

    .line 100
    new-instance v5, Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/ka$c$e$b;-><init>()V

    iput-object v5, v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    .line 101
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    const/4 v6, 0x2

    iput v6, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d:I

    .line 102
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    new-instance v6, Lcom/yandex/metrica/impl/ob/ka$c$g;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/ka$c$g;-><init>()V

    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    .line 103
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    iget-object v5, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    iget-wide v6, v3, Lcom/yandex/metrica/impl/ob/bs$a;->b:J

    iput-wide v6, v5, Lcom/yandex/metrica/impl/ob/ka$c$g;->b:J

    .line 104
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    iget-object v5, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    iget-wide v6, v3, Lcom/yandex/metrica/impl/ob/bs$a;->b:J

    .line 105
    invoke-static {v6, v7}, Lcom/yandex/metrica/impl/ob/nr;->a(J)I

    move-result v6

    iput v6, v5, Lcom/yandex/metrica/impl/ob/ka$c$g;->c:I

    .line 106
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/bp;->c:Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/bq;->y()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->c:Ljava/lang/String;

    .line 107
    new-instance v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/ka$c$e$a;-><init>()V

    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    aput-object v5, v2, v4

    .line 108
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    .line 109
    iget v1, v3, Lcom/yandex/metrica/impl/ob/bs$a;->c:I

    int-to-long v1, v1

    iput-wide v1, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->b:J

    .line 110
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->g:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/nq;->b()J

    move-result-wide v1

    iget-wide v6, v3, Lcom/yandex/metrica/impl/ob/bs$a;->b:J

    sub-long/2addr v1, v6

    iput-wide v1, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->c:J

    .line 111
    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/i;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->d:I

    .line 112
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->f:Lcom/yandex/metrica/impl/ob/op;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/op;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e:Ljava/lang/String;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bp;->e:Lcom/yandex/metrica/impl/ob/op;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/op;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    .line 121
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    array-length v4, v2

    :goto_0
    sub-int/2addr v1, v4

    iput v1, v5, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->k:I

    .line 124
    :cond_3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;)[B

    move-result-object v0

    return-object v0
.end method
