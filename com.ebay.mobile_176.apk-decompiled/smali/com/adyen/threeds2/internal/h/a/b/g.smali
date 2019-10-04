.class public final Lcom/adyen/threeds2/internal/h/a/b/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/adyen/threeds2/internal/h/a/b/b;

.field public static final b:Lcom/adyen/threeds2/internal/h/a/b/d;

.field public static final c:Lcom/adyen/threeds2/internal/h/a/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/adyen/threeds2/internal/h/a/b/a;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/h/a/b/a;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/b/g;->a:Lcom/adyen/threeds2/internal/h/a/b/b;

    .line 30
    new-instance v0, Lcom/adyen/threeds2/internal/h/a/b/c;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/h/a/b/c;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/b/g;->b:Lcom/adyen/threeds2/internal/h/a/b/d;

    .line 32
    new-instance v0, Lcom/adyen/threeds2/internal/h/a/b/h;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/h/a/b/h;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/b/g;->c:Lcom/adyen/threeds2/internal/h/a/b/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/a/b/f;
    .locals 1

    .line 35
    sget-object v0, Lcom/adyen/threeds2/internal/h/a/b/g;->a:Lcom/adyen/threeds2/internal/h/a/b/b;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object p0, Lcom/adyen/threeds2/internal/h/a/b/g;->a:Lcom/adyen/threeds2/internal/h/a/b/b;

    return-object p0

    .line 37
    :cond_0
    sget-object v0, Lcom/adyen/threeds2/internal/h/a/b/g;->b:Lcom/adyen/threeds2/internal/h/a/b/d;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/a/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    sget-object p0, Lcom/adyen/threeds2/internal/h/a/b/g;->b:Lcom/adyen/threeds2/internal/h/a/b/d;

    return-object p0

    .line 39
    :cond_1
    sget-object v0, Lcom/adyen/threeds2/internal/h/a/b/g;->c:Lcom/adyen/threeds2/internal/h/a/b/e;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/a/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 40
    sget-object p0, Lcom/adyen/threeds2/internal/h/a/b/g;->c:Lcom/adyen/threeds2/internal/h/a/b/e;

    return-object p0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x29a

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
