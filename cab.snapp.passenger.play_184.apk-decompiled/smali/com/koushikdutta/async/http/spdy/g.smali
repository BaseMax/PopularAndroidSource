.class final Lcom/koushikdutta/async/http/spdy/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESPONSE_STATUS:Lcom/koushikdutta/async/http/spdy/c;

.field public static final TARGET_AUTHORITY:Lcom/koushikdutta/async/http/spdy/c;

.field public static final TARGET_HOST:Lcom/koushikdutta/async/http/spdy/c;

.field public static final TARGET_METHOD:Lcom/koushikdutta/async/http/spdy/c;

.field public static final TARGET_PATH:Lcom/koushikdutta/async/http/spdy/c;

.field public static final TARGET_SCHEME:Lcom/koushikdutta/async/http/spdy/c;

.field public static final VERSION:Lcom/koushikdutta/async/http/spdy/c;


# instance fields
.field final a:I

.field public final name:Lcom/koushikdutta/async/http/spdy/c;

.field public final value:Lcom/koushikdutta/async/http/spdy/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    .line 9
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/g;->RESPONSE_STATUS:Lcom/koushikdutta/async/http/spdy/c;

    const-string v0, ":method"

    .line 10
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/g;->TARGET_METHOD:Lcom/koushikdutta/async/http/spdy/c;

    const-string v0, ":path"

    .line 11
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/g;->TARGET_PATH:Lcom/koushikdutta/async/http/spdy/c;

    const-string v0, ":scheme"

    .line 12
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/g;->TARGET_SCHEME:Lcom/koushikdutta/async/http/spdy/c;

    const-string v0, ":authority"

    .line 13
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/g;->TARGET_AUTHORITY:Lcom/koushikdutta/async/http/spdy/c;

    const-string v0, ":host"

    .line 14
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/g;->TARGET_HOST:Lcom/koushikdutta/async/http/spdy/c;

    const-string v0, ":version"

    .line 15
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/g;->VERSION:Lcom/koushikdutta/async/http/spdy/c;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/c;Lcom/koushikdutta/async/http/spdy/c;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    .line 34
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    .line 35
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/c;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/c;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/koushikdutta/async/http/spdy/g;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/spdy/c;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Lcom/koushikdutta/async/http/spdy/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p1

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Lcom/koushikdutta/async/http/spdy/c;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 39
    instance-of v0, p1, Lcom/koushikdutta/async/http/spdy/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/koushikdutta/async/http/spdy/g;

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    iget-object v2, p1, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/spdy/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    .line 42
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/spdy/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/c;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 55
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/c;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/c;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
