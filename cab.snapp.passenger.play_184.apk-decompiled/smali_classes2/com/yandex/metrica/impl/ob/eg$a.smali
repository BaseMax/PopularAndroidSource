.class final Lcom/yandex/metrica/impl/ob/eg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field private b:Lcom/yandex/metrica/impl/ob/en;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/ei;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ei;->a()Lcom/yandex/metrica/impl/ob/en;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eg$a;->b:Lcom/yandex/metrica/impl/ob/en;

    .line 102
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ei;->b()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg$a;->e:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/ei;B)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/eg$a;-><init>(Lcom/yandex/metrica/impl/ob/ei;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/eg$a;)Lcom/yandex/metrica/impl/ob/en;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eg$a;->b:Lcom/yandex/metrica/impl/ob/en;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Integer;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eg$a;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Long;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eg$a;->c:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Long;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eg$a;->d:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic e(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Long;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eg$a;->f:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic f(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Boolean;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eg$a;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic g(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Long;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eg$a;->h:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/eg$a;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg$a;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg$a;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public final a()Lcom/yandex/metrica/impl/ob/eg;
    .locals 2

    .line 136
    new-instance v0, Lcom/yandex/metrica/impl/ob/eg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/eg;-><init>(Lcom/yandex/metrica/impl/ob/eg$a;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg$a;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public final c(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg$a;->f:Ljava/lang/Long;

    return-object p0
.end method

.method public final d(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg$a;->h:Ljava/lang/Long;

    return-object p0
.end method

.method public final e(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg$a;->a:Ljava/lang/Long;

    return-object p0
.end method
