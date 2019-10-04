.class final Lcom/adyen/threeds2/internal/k/b;
.super Lcom/adyen/threeds2/internal/k/f;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/adyen/threeds2/internal/k/a/b;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x31a

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/k/b;->a:Ljava/lang/String;

    const/16 v0, 0x31b

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/k/b;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/adyen/threeds2/internal/k/a/b;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/k/f;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/adyen/threeds2/internal/k/b;->c:Lcom/adyen/threeds2/internal/k/a/b;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x318

    .line 45
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/adyen/threeds2/internal/k/b;->c:Lcom/adyen/threeds2/internal/k/a/b;

    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/k/a/b;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x319

    .line 50
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/adyen/threeds2/Warning$Severity;
    .locals 1

    .line 55
    sget-object v0, Lcom/adyen/threeds2/Warning$Severity;->HIGH:Lcom/adyen/threeds2/Warning$Severity;

    return-object v0
.end method
