.class public final Lcom/facebook/crypto/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final b:Ljava/nio/charset/Charset;


# instance fields
.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-16"

    .line 28
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/facebook/crypto/f;->a:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    .line 29
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/facebook/crypto/f;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/facebook/crypto/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/crypto/f;->c:[B

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/crypto/f;->c:[B

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/facebook/crypto/f;
    .locals 2

    .line 66
    new-instance v0, Lcom/facebook/crypto/f;

    sget-object v1, Lcom/facebook/crypto/f;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/crypto/f;-><init>([B)V

    return-object v0
.end method

.method public static utf16(Ljava/lang/String;)Lcom/facebook/crypto/f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    new-instance v0, Lcom/facebook/crypto/f;

    invoke-direct {v0, p0}, Lcom/facebook/crypto/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getBytes()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/facebook/crypto/f;->c:[B

    return-object v0
.end method
