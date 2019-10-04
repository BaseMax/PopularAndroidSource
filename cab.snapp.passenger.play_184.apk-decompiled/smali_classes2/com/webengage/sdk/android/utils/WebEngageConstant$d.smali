.class public final enum Lcom/webengage/sdk/android/utils/WebEngageConstant$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/WebEngageConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/webengage/sdk/android/utils/WebEngageConstant$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

.field public static final enum b:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

.field public static final enum c:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

.field public static final enum d:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

.field public static final enum e:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

.field public static final enum f:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

.field public static final enum g:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

.field private static final synthetic i:[Lcom/webengage/sdk/android/utils/WebEngageConstant$d;


# instance fields
.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://c.webengage.com/m2.jpg"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "https://c.webengage.io/m2.jpg"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    const-string v6, "https://c.in.webengage.com/m2.jpg"

    aput-object v6, v2, v5

    const-string v6, "UPLOAD_EVENTS_URL"

    invoke-direct {v0, v6, v3, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "https://c.webengage.com/e.jpg"

    aput-object v6, v2, v3

    const-string v6, "https://c.webengage.io/e.jpg"

    aput-object v6, v2, v4

    const-string v6, "https://c.in.webengage.com/e.jpg"

    aput-object v6, v2, v5

    const-string v6, "EXCEPTION_END_POINT"

    invoke-direct {v0, v6, v4, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "https://c.webengage.com/upf.js"

    aput-object v6, v2, v3

    const-string v6, "https://c.webengage.io/upf.js"

    aput-object v6, v2, v4

    const-string v6, "https://c.in.webengage.com/upf.js"

    aput-object v6, v2, v5

    const-string v6, "USER_PROFILE_BASE"

    invoke-direct {v0, v6, v5, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "https://c.webengage.com/jcx.js"

    aput-object v6, v2, v3

    const-string v6, "https://c.webengage.io/jcx.js"

    aput-object v6, v2, v4

    const-string v6, "https://c.in.webengage.com/jcx.js"

    aput-object v6, v2, v5

    const-string v6, "JOURNEY_CONTEXT_BASE"

    invoke-direct {v0, v6, v1, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->d:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "https://wsdk-files.webengage.com/"

    aput-object v6, v2, v3

    const-string v6, "https://s3.amazonaws.com/webengage-zfiles-gc/"

    aput-object v6, v2, v4

    const-string v6, "https://wsdk-files.in.webengage.com/"

    aput-object v6, v2, v5

    const/4 v6, 0x4

    const-string v7, "RESOURCE_BASE"

    invoke-direct {v0, v7, v6, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->e:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "https://p.webengage.com"

    aput-object v7, v2, v3

    const-string v7, "https://p.webengage.io"

    aput-object v7, v2, v4

    const-string v7, "https://p.in.webengage.com"

    aput-object v7, v2, v5

    const/4 v7, 0x5

    const-string v8, "PERSONALISATION_BASE"

    invoke-direct {v0, v8, v7, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->f:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-instance v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "https://c.webengage.com/push-amp"

    aput-object v8, v2, v3

    const-string v8, "https://c.webengage.io/push-amp"

    aput-object v8, v2, v4

    const-string v8, "https://c.in.webengage.com/push-amp"

    aput-object v8, v2, v5

    const/4 v8, 0x6

    const-string v9, "AMPLIFY_PUSH_BASE"

    invoke-direct {v0, v9, v8, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->g:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    sget-object v2, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    aput-object v2, v0, v3

    sget-object v2, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    aput-object v2, v0, v4

    sget-object v2, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    aput-object v2, v0, v5

    sget-object v2, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->d:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    aput-object v2, v0, v1

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->e:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->f:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->g:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    aput-object v1, v0, v8

    sput-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->i:[Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->h:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->e:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "webengage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/android/v4.js"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "js/notification-layout-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".js"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?licenseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&luid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {p1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&cuid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->f:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/templates/NOTIFICATION-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {p3, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "?cuid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->g:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?sdkId=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&licenseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&luid="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/webengage/sdk/android/utils/k;->b(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "UTF-8"

    const-string v1, "WebEngage"

    if-nez p0, :cond_0

    :try_start_0
    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "&cuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Exception while url-encoding cuid: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/webengage/sdk/android/utils/k;->a()Ljava/lang/String;

    move-result-object p0

    const-string p2, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "&timezone="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "Exception while adding timezone in push-amplify url."

    goto :goto_1

    :catch_2
    move-exception p0

    const-string p1, "Exception while url-encoding timezone in push-amplify url."

    :goto_1
    invoke-static {v1, p1, p0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string p0, "&sdkVersion=31203.0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->d:Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?licenseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&luid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "UTF-8"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {p1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&cuid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&upfc2="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "WebEngage"

    const-string p1, " Error while encoding upfc to base 64"

    invoke-static {p0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :catch_2
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/WebEngageConstant$d;
    .locals 1

    const-class v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    return-object p0
.end method

.method public static values()[Lcom/webengage/sdk/android/utils/WebEngageConstant$d;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->i:[Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    invoke-virtual {v0}, [Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/webengage/sdk/android/utils/WebEngageConstant$d;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aws"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v1, "gce"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->h:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const-string v1, "in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->h:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
