.class final Lcom/adyen/threeds2/internal/k/d;
.super Lcom/adyen/threeds2/internal/k/f;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/adyen/threeds2/internal/k/a/f;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x322

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/k/d;->a:Ljava/lang/String;

    const/16 v0, 0x323

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/k/d;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/adyen/threeds2/internal/k/a/f;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/k/f;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/adyen/threeds2/internal/k/d;->c:Lcom/adyen/threeds2/internal/k/a/f;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x320

    .line 50
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)Z
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/adyen/threeds2/internal/k/d;->c:Lcom/adyen/threeds2/internal/k/a/f;

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Lcom/adyen/threeds2/internal/k/a/f;->a(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x321

    .line 55
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/adyen/threeds2/Warning$Severity;
    .locals 1

    .line 60
    sget-object v0, Lcom/adyen/threeds2/Warning$Severity;->HIGH:Lcom/adyen/threeds2/Warning$Severity;

    return-object v0
.end method
