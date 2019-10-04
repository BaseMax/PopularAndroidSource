.class public abstract Lio/fabric/sdk/android/services/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCEPT_JSON_VALUE:Ljava/lang/String; = "application/json"

.field public static final ANDROID_CLIENT_TYPE:Ljava/lang/String; = "android"

.field public static final CLS_ANDROID_SDK_DEVELOPER_TOKEN:Ljava/lang/String; = "470fa2b4ae81cd56ecbcda9735803434cec591fa"

.field public static final CRASHLYTICS_USER_AGENT:Ljava/lang/String; = "Crashlytics Android SDK/"

.field public static final DEFAULT_TIMEOUT:I = 0x2710

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_API_KEY:Ljava/lang/String; = "X-CRASHLYTICS-API-KEY"

.field public static final HEADER_CLIENT_TYPE:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-TYPE"

.field public static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-VERSION"

.field public static final HEADER_DEVELOPER_TOKEN:Ljava/lang/String; = "X-CRASHLYTICS-DEVELOPER-TOKEN"

.field public static final HEADER_REQUEST_ID:Ljava/lang/String; = "X-REQUEST-ID"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lio/fabric/sdk/android/i;

.field private final d:Lio/fabric/sdk/android/services/network/d;

.field private final e:Lio/fabric/sdk/android/services/network/HttpMethod;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http(s?)://[^\\/]+"

    const/4 v1, 0x2

    .line 56
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/a;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Lio/fabric/sdk/android/services/network/HttpMethod;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    .line 92
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/a;->b:Lio/fabric/sdk/android/i;

    .line 93
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/a;->f:Ljava/lang/String;

    .line 1157
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/a;->f:Ljava/lang/String;

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1158
    sget-object p1, Lio/fabric/sdk/android/services/common/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget-object p2, p0, Lio/fabric/sdk/android/services/common/a;->f:Ljava/lang/String;

    .line 1159
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 94
    :cond_0
    iput-object p3, p0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lio/fabric/sdk/android/services/common/a;->d:Lio/fabric/sdk/android/services/network/d;

    .line 96
    iput-object p5, p0, Lio/fabric/sdk/android/services/common/a;->e:Lio/fabric/sdk/android/services/network/HttpMethod;

    return-void

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requestFactory must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final a()Lio/fabric/sdk/android/services/network/c;
    .locals 1

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/common/a;->a(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/network/c;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->d:Lio/fabric/sdk/android/services/network/d;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->e:Lio/fabric/sdk/android/services/network/HttpMethod;

    .line 2100
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/lang/String;

    .line 137
    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/services/network/d;->buildHttpRequest(Lio/fabric/sdk/android/services/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/c;

    move-result-object p1

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Lio/fabric/sdk/android/services/network/c;->useCaches(Z)Lio/fabric/sdk/android/services/network/c;

    move-result-object p1

    const/16 v0, 0x2710

    .line 140
    invoke-virtual {p1, v0}, Lio/fabric/sdk/android/services/network/c;->connectTimeout(I)Lio/fabric/sdk/android/services/network/c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics Android SDK/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->b:Lio/fabric/sdk/android/i;

    .line 141
    invoke-virtual {v1}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object p1

    const-string v0, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v1, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 142
    invoke-virtual {p1, v0, v1}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object p1

    return-object p1
.end method
