.class public Lcom/adyen/threeds2/internal/h/e/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/adyen/threeds2/internal/l/a;


# instance fields
.field private final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/adyen/threeds2/internal/l/a;->a()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/e/f;->a:Lcom/adyen/threeds2/internal/l/a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/e/f;->f()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/l/a;->b(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/e/f;->b:[B

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/e/f;->b:[B

    return-void
.end method


# virtual methods
.method public final c()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/e/f;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/e/f;->f()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/adyen/threeds2/internal/h/e/f;->b:[B

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/l/a;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/e/f;->c()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/h/e/f;->f()Lcom/adyen/threeds2/internal/l/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/l/a;->b()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final f()Lcom/adyen/threeds2/internal/l/a;
    .locals 1

    .line 75
    sget-object v0, Lcom/adyen/threeds2/internal/h/e/f;->a:Lcom/adyen/threeds2/internal/l/a;

    return-object v0
.end method
