.class final Lcom/adyen/threeds2/internal/k/e;
.super Lcom/adyen/threeds2/internal/k/f;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/adyen/threeds2/internal/k/a/d;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x326

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/k/e;->a:Ljava/lang/String;

    const/16 v0, 0x327

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/k/e;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/adyen/threeds2/internal/k/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adyen/threeds2/internal/k/a/d;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/k/f;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/adyen/threeds2/internal/k/e;->c:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/adyen/threeds2/internal/k/e;->d:Ljava/util/Collection;

    .line 56
    iput-object p3, p0, Lcom/adyen/threeds2/internal/k/e;->e:Ljava/util/Collection;

    .line 57
    iput-object p4, p0, Lcom/adyen/threeds2/internal/k/e;->f:Lcom/adyen/threeds2/internal/k/a/d;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x324

    .line 62
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/e;->f:Lcom/adyen/threeds2/internal/k/a/d;

    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/k/a/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/e;->f:Lcom/adyen/threeds2/internal/k/a/d;

    .line 79
    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/k/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/e;->f:Lcom/adyen/threeds2/internal/k/a/d;

    .line 80
    invoke-interface {v0}, Lcom/adyen/threeds2/internal/k/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/e;->f:Lcom/adyen/threeds2/internal/k/a/d;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/k/e;->e:Ljava/util/Collection;

    .line 81
    invoke-interface {v0, p1, v1}, Lcom/adyen/threeds2/internal/k/a/d;->b(Landroid/content/Context;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/e;->f:Lcom/adyen/threeds2/internal/k/a/d;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/k/e;->d:Ljava/util/Collection;

    .line 82
    invoke-interface {v0, p1, v1}, Lcom/adyen/threeds2/internal/k/a/d;->a(Landroid/content/Context;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/e;->f:Lcom/adyen/threeds2/internal/k/a/d;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/k/e;->c:Ljava/lang/String;

    .line 83
    invoke-interface {v0, p1, v1}, Lcom/adyen/threeds2/internal/k/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x325

    .line 67
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/adyen/threeds2/Warning$Severity;
    .locals 1

    .line 72
    sget-object v0, Lcom/adyen/threeds2/Warning$Severity;->HIGH:Lcom/adyen/threeds2/Warning$Severity;

    return-object v0
.end method
