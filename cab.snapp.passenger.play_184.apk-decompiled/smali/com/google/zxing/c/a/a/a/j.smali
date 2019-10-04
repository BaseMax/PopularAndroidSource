.class public abstract Lcom/google/zxing/c/a/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/zxing/common/a;

.field final b:Lcom/google/zxing/c/a/a/a/s;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/c/a/a/a/j;->a:Lcom/google/zxing/common/a;

    .line 44
    new-instance v0, Lcom/google/zxing/c/a/a/a/s;

    invoke-direct {v0, p1}, Lcom/google/zxing/c/a/a/a/s;-><init>(Lcom/google/zxing/common/a;)V

    iput-object v0, p0, Lcom/google/zxing/c/a/a/a/j;->b:Lcom/google/zxing/c/a/a/a/s;

    return-void
.end method

.method public static createDecoder(Lcom/google/zxing/common/a;)Lcom/google/zxing/c/a/a/a/j;
    .locals 7

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/a;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/google/zxing/c/a/a/a/g;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/g;-><init>(Lcom/google/zxing/common/a;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/a;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    new-instance v0, Lcom/google/zxing/c/a/a/a/k;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/k;-><init>(Lcom/google/zxing/common/a;)V

    return-object v0

    :cond_1
    const/4 v1, 0x4

    .line 65
    invoke-static {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/s;->a(Lcom/google/zxing/common/a;II)I

    move-result v2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x5

    if-eq v2, v1, :cond_4

    .line 72
    invoke-static {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/s;->a(Lcom/google/zxing/common/a;II)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/4 v1, 0x7

    .line 78
    invoke-static {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/s;->a(Lcom/google/zxing/common/a;II)I

    move-result v0

    const-string v1, "17"

    const-string v2, "15"

    const-string v3, "13"

    const-string v4, "11"

    const-string v5, "320"

    const-string v6, "310"

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown decoder: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_0
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    invoke-direct {v0, p0, v5, v1}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 86
    :pswitch_1
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    invoke-direct {v0, p0, v6, v1}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 85
    :pswitch_2
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    invoke-direct {v0, p0, v5, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 84
    :pswitch_3
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    invoke-direct {v0, p0, v6, v2}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 83
    :pswitch_4
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    invoke-direct {v0, p0, v5, v3}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 82
    :pswitch_5
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    invoke-direct {v0, p0, v6, v3}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 81
    :pswitch_6
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    invoke-direct {v0, p0, v5, v4}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 80
    :pswitch_7
    new-instance v0, Lcom/google/zxing/c/a/a/a/e;

    invoke-direct {v0, p0, v6, v4}, Lcom/google/zxing/c/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 75
    :cond_2
    new-instance v0, Lcom/google/zxing/c/a/a/a/d;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/d;-><init>(Lcom/google/zxing/common/a;)V

    return-object v0

    .line 74
    :cond_3
    new-instance v0, Lcom/google/zxing/c/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/c;-><init>(Lcom/google/zxing/common/a;)V

    return-object v0

    .line 69
    :cond_4
    new-instance v0, Lcom/google/zxing/c/a/a/a/b;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/b;-><init>(Lcom/google/zxing/common/a;)V

    return-object v0

    .line 68
    :cond_5
    new-instance v0, Lcom/google/zxing/c/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/google/zxing/c/a/a/a/a;-><init>(Lcom/google/zxing/common/a;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract parseInformation()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/d;
        }
    .end annotation
.end method
