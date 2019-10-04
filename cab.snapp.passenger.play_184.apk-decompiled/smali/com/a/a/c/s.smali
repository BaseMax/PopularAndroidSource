.class final Lcom/a/a/c/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/fabric/sdk/android/services/settings/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/settings/o;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/a/a/c/s;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/a/a/c/s;->b:Lio/fabric/sdk/android/services/settings/o;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/a/a/c/s;->a:Landroid/content/Context;

    .line 94
    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/common/i;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1, p2}, Lcom/a/a/c/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-static {p0}, Lcom/a/a/c/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getAlwaysSendButtonTitle()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/a/a/c/s;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/o;->alwaysSendButtonTitle:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionAlwaysSendTitle"

    invoke-direct {p0, v1, v0}, Lcom/a/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCancelButtonTitle()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/a/a/c/s;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/o;->cancelButtonTitle:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionCancelTitle"

    invoke-direct {p0, v1, v0}, Lcom/a/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/a/a/c/s;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/o;->message:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionPromptMessage"

    invoke-direct {p0, v1, v0}, Lcom/a/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSendButtonTitle()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/a/a/c/s;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/o;->sendButtonTitle:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionSendTitle"

    invoke-direct {p0, v1, v0}, Lcom/a/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/a/a/c/s;->b:Lio/fabric/sdk/android/services/settings/o;

    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/o;->title:Ljava/lang/String;

    const-string v1, "com.crashlytics.CrashSubmissionPromptTitle"

    invoke-direct {p0, v1, v0}, Lcom/a/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
