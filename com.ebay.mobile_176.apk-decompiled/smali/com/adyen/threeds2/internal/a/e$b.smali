.class public final Lcom/adyen/threeds2/internal/a/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/e$a;

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/a/e$a;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/e$b;->a:Lcom/adyen/threeds2/internal/a/e$a;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    sget-object p2, Lcom/adyen/threeds2/internal/b;->a:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/e$b;->b:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/a/e$a;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/e$b;->a:Lcom/adyen/threeds2/internal/a/e$a;

    return-object v0
.end method

.method public b()Ljava/nio/charset/Charset;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/e$b;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/e$b;->a:Lcom/adyen/threeds2/internal/a/e$a;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/e$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x16

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/e$b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/a/e$b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
