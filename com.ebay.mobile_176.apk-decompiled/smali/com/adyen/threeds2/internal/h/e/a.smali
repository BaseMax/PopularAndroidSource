.class public final Lcom/adyen/threeds2/internal/h/e/a;
.super Ljava/security/Provider;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lcom/adyen/threeds2/internal/h/e/a;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x2da

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/e/a;->a:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/adyen/threeds2/internal/h/e/a;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/h/e/a;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/h/e/a;->b:Lcom/adyen/threeds2/internal/h/e/a;

    .line 39
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x2db

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/e/a;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x2d8

    .line 42
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/h/e/a;->c:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const/16 v0, 0x2d9

    .line 44
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/a/c/a/a/a/a$b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adyen/threeds2/internal/h/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
