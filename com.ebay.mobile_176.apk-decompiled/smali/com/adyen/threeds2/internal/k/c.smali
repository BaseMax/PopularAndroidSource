.class final Lcom/adyen/threeds2/internal/k/c;
.super Lcom/adyen/threeds2/internal/k/f;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/adyen/threeds2/internal/k/a/c;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x31e

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/k/c;->a:Ljava/lang/String;

    const/16 v0, 0x31f

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/k/c;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/adyen/threeds2/internal/k/a/c;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/k/f;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/adyen/threeds2/internal/k/c;->c:Lcom/adyen/threeds2/internal/k/a/c;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x31c

    .line 46
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)Z
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/adyen/threeds2/internal/k/c;->c:Lcom/adyen/threeds2/internal/k/a/c;

    invoke-interface {p1}, Lcom/adyen/threeds2/internal/k/a/c;->a()Z

    move-result p1

    return p1
.end method

.method b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x31d

    .line 51
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/adyen/threeds2/Warning$Severity;
    .locals 1

    .line 56
    sget-object v0, Lcom/adyen/threeds2/Warning$Severity;->HIGH:Lcom/adyen/threeds2/Warning$Severity;

    return-object v0
.end method
