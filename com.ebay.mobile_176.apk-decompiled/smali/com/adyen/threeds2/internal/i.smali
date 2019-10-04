.class Lcom/adyen/threeds2/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/Transaction;
.implements Lcom/adyen/threeds2/internal/a;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/adyen/threeds2/internal/h/c/a;

.field private c:Lcom/adyen/threeds2/AuthenticationRequestParameters;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/adyen/threeds2/ChallengeStatusReceiver;

.field private f:Lcom/adyen/threeds2/internal/f;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/adyen/threeds2/internal/h/c/a;Lcom/adyen/threeds2/AuthenticationRequestParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lcom/adyen/threeds2/internal/h/c/a;",
            "Lcom/adyen/threeds2/AuthenticationRequestParameters;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/adyen/threeds2/internal/i;->a:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lcom/adyen/threeds2/internal/i;->b:Lcom/adyen/threeds2/internal/h/c/a;

    .line 85
    iput-object p3, p0, Lcom/adyen/threeds2/internal/i;->c:Lcom/adyen/threeds2/AuthenticationRequestParameters;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/b/a/a;
    .locals 1

    .line 293
    :try_start_0
    invoke-static {p1}, Lcom/adyen/threeds2/internal/h/d/d;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/d/d;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/adyen/threeds2/internal/h/d/d;->a(Ljava/util/List;)V

    .line 295
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/d/d;->a()Lcom/adyen/threeds2/internal/h/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/d/b;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 296
    new-instance v0, Lcom/adyen/threeds2/internal/b/a/a;

    invoke-direct {v0, p1}, Lcom/adyen/threeds2/internal/b/a/a;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/adyen/threeds2/exception/SDKRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 298
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->SECURE_CHANNEL_SETUP_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/c/b;)Lcom/adyen/threeds2/internal/h/b/a;
    .locals 3

    .line 304
    instance-of v0, p2, Lcom/adyen/threeds2/internal/h/c/a;

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0xf

    .line 310
    :try_start_0
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    new-instance p1, Lcom/adyen/threeds2/internal/h/b/f;

    sget-object v1, Lcom/adyen/threeds2/internal/h/a/b/g;->a:Lcom/adyen/threeds2/internal/h/a/b/b;

    sget-object v2, Lcom/adyen/threeds2/internal/h/a/a/c;->a:Lcom/adyen/threeds2/internal/h/a/a/b;

    invoke-direct {p1, v1, v2, v0}, Lcom/adyen/threeds2/internal/h/b/f;-><init>(Lcom/adyen/threeds2/internal/h/a/b/f;Lcom/adyen/threeds2/internal/h/a/a/b;Lorg/json/JSONObject;)V

    .line 316
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->c:Lcom/adyen/threeds2/AuthenticationRequestParameters;

    invoke-interface {v0}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getSDKReferenceNumber()Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/adyen/threeds2/internal/i;->b:Lcom/adyen/threeds2/internal/h/c/a;

    check-cast p2, Lcom/adyen/threeds2/internal/h/c/a;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/h/c/a;->b()Ljava/security/interfaces/ECPublicKey;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, p2}, Lcom/adyen/threeds2/internal/h/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object p2

    .line 318
    new-instance v0, Lcom/adyen/threeds2/internal/h/c/e;

    invoke-direct {v0, v2, p2}, Lcom/adyen/threeds2/internal/h/c/e;-><init>(Ljava/lang/String;[B)V

    .line 321
    iget-object p2, p0, Lcom/adyen/threeds2/internal/i;->b:Lcom/adyen/threeds2/internal/h/c/a;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/h/c/a;->g()V

    .line 324
    :try_start_1
    new-instance p2, Lcom/adyen/threeds2/internal/h/b/a;

    invoke-direct {p2, p1, v0}, Lcom/adyen/threeds2/internal/h/b/a;-><init>(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/c/b;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 326
    sget-object p2, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 312
    sget-object p2, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/e/c;->a(Ljava/lang/Throwable;)Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1

    .line 305
    :cond_0
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method

.method private b()V
    .locals 2

    .line 234
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/i;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/adyen/threeds2/internal/a/a/b/a;)V
    .locals 1

    .line 246
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/internal/i;->a(Landroid/app/Activity;Lcom/adyen/threeds2/internal/a/a/b/a;)Landroid/content/Intent;

    move-result-object p1

    .line 252
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 256
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/i;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d()Landroid/app/Activity;
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->d:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Lcom/adyen/threeds2/internal/e/b;->ACTIVITY_WEAK_REFERENCE_MISSING:Lcom/adyen/threeds2/internal/e/b;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/e/b;->a()Lcom/adyen/threeds2/RuntimeErrorEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/i;->runtimeError(Lcom/adyen/threeds2/RuntimeErrorEvent;)V

    return-object v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 275
    sget-object v0, Lcom/adyen/threeds2/internal/e/b;->ACTIVITY_REFERENCE_MISSING:Lcom/adyen/threeds2/internal/e/b;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/e/b;->a()Lcom/adyen/threeds2/RuntimeErrorEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/i;->runtimeError(Lcom/adyen/threeds2/RuntimeErrorEvent;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method private e()Lcom/adyen/threeds2/ChallengeStatusReceiver;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->e:Lcom/adyen/threeds2/ChallengeStatusReceiver;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->e:Lcom/adyen/threeds2/ChallengeStatusReceiver;

    return-object v0

    .line 285
    :cond_0
    sget-object v0, Lcom/adyen/threeds2/internal/e/c;->CHALLENGE_PRESENTATION_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 0

    .line 220
    invoke-static {p1}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/app/Activity;Lcom/adyen/threeds2/internal/a/a/b/a;)Landroid/content/Intent;
    .locals 0

    .line 225
    invoke-static {p1, p2}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Landroid/content/Context;Lcom/adyen/threeds2/internal/a/a/b/a;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->b()V

    return-void
.end method

.method public a(Lcom/adyen/threeds2/internal/a/a/b/a;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/i;->b(Lcom/adyen/threeds2/internal/a/a/b/a;)V

    return-void
.end method

.method b(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 0

    .line 230
    invoke-static {p1}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public cancelled()V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->c()V

    .line 178
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->e()Lcom/adyen/threeds2/ChallengeStatusReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/adyen/threeds2/ChallengeStatusReceiver;->cancelled()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->b:Lcom/adyen/threeds2/internal/h/c/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/c/a;->g()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/adyen/threeds2/internal/i;->c:Lcom/adyen/threeds2/AuthenticationRequestParameters;

    .line 140
    iput-object v0, p0, Lcom/adyen/threeds2/internal/i;->e:Lcom/adyen/threeds2/ChallengeStatusReceiver;

    .line 142
    iget-object v1, p0, Lcom/adyen/threeds2/internal/i;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/adyen/threeds2/internal/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 144
    iput-object v0, p0, Lcom/adyen/threeds2/internal/i;->d:Ljava/lang/ref/WeakReference;

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/adyen/threeds2/internal/i;->f:Lcom/adyen/threeds2/internal/f;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/adyen/threeds2/internal/i;->f:Lcom/adyen/threeds2/internal/f;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/f;->c()V

    .line 149
    iput-object v0, p0, Lcom/adyen/threeds2/internal/i;->f:Lcom/adyen/threeds2/internal/f;

    :cond_1
    return-void
.end method

.method public completed(Lcom/adyen/threeds2/CompletionEvent;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->c()V

    .line 167
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->e()Lcom/adyen/threeds2/ChallengeStatusReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p1}, Lcom/adyen/threeds2/ChallengeStatusReceiver;->completed(Lcom/adyen/threeds2/CompletionEvent;)V

    :cond_0
    return-void
.end method

.method public doChallenge(Landroid/app/Activity;Lcom/adyen/threeds2/parameters/ChallengeParameters;Lcom/adyen/threeds2/ChallengeStatusReceiver;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->CURRENT_ACTIVITY:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 101
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->CHALLENGE_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p2, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 102
    invoke-virtual {p2}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->getAcsTransactionID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->CHALLENGE_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {v0, v1}, Lcom/adyen/threeds2/internal/l/f;->b(Ljava/lang/String;Lcom/adyen/threeds2/internal/e/a;)V

    .line 103
    invoke-virtual {p2}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->get3DSServerTransactionID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/e/a;->CHALLENGE_PARAMETERS:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {v0, v1}, Lcom/adyen/threeds2/internal/l/f;->b(Ljava/lang/String;Lcom/adyen/threeds2/internal/e/a;)V

    .line 104
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->CHALLENGE_STATUS_RECEIVER:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p3, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 105
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->TIMEOUT:Lcom/adyen/threeds2/internal/e/a;

    const/4 v1, 0x5

    invoke-static {p4, v1, v0}, Lcom/adyen/threeds2/internal/l/f;->a(IILcom/adyen/threeds2/internal/e/a;)V

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adyen/threeds2/internal/i;->d:Ljava/lang/ref/WeakReference;

    .line 108
    iput-object p3, p0, Lcom/adyen/threeds2/internal/i;->e:Lcom/adyen/threeds2/ChallengeStatusReceiver;

    .line 110
    invoke-virtual {p2}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->getAcsSignedContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/i;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/b/a/a;

    move-result-object p1

    .line 112
    new-instance v3, Lcom/adyen/threeds2/internal/a/a/b/b;

    iget-object p3, p0, Lcom/adyen/threeds2/internal/i;->c:Lcom/adyen/threeds2/AuthenticationRequestParameters;

    .line 113
    invoke-interface {p3}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getMessageVersion()Ljava/lang/String;

    move-result-object p3

    .line 114
    invoke-virtual {p2}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->get3DSServerTransactionID()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p2}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->getAcsTransactionID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adyen/threeds2/internal/i;->c:Lcom/adyen/threeds2/AuthenticationRequestParameters;

    .line 116
    invoke-interface {v2}, Lcom/adyen/threeds2/AuthenticationRequestParameters;->getSDKTransactionID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p3, v0, v1, v2}, Lcom/adyen/threeds2/internal/a/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Lcom/adyen/threeds2/parameters/ChallengeParameters;->getAcsTransactionID()Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/b/a/a;->a()Lcom/adyen/threeds2/internal/h/c/b;

    move-result-object p3

    .line 119
    invoke-direct {p0, p2, p3}, Lcom/adyen/threeds2/internal/i;->a(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/c/b;)Lcom/adyen/threeds2/internal/h/b/a;

    move-result-object v2

    .line 123
    invoke-static {}, Lcom/adyen/threeds2/internal/f;->a()Lcom/adyen/threeds2/internal/f;

    move-result-object p2

    iput-object p2, p0, Lcom/adyen/threeds2/internal/i;->f:Lcom/adyen/threeds2/internal/f;

    .line 124
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->f:Lcom/adyen/threeds2/internal/f;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adyen/threeds2/internal/f;->a(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/b/a;Lcom/adyen/threeds2/internal/a/a/b/b;ILcom/adyen/threeds2/internal/a;)V

    return-void
.end method

.method public getAuthenticationRequestParameters()Lcom/adyen/threeds2/AuthenticationRequestParameters;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/adyen/threeds2/internal/i;->c:Lcom/adyen/threeds2/AuthenticationRequestParameters;

    return-object v0
.end method

.method public getProgressView(Landroid/app/Activity;)Lcom/adyen/threeds2/ProgressDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/adyen/threeds2/internal/e/a;->CURRENT_ACTIVITY:Lcom/adyen/threeds2/internal/e/a;

    invoke-static {p1, v0}, Lcom/adyen/threeds2/internal/l/f;->a(Ljava/lang/Object;Lcom/adyen/threeds2/internal/e/a;)V

    .line 131
    new-instance v0, Lcom/adyen/threeds2/internal/ui/a/a;

    invoke-direct {v0, p1}, Lcom/adyen/threeds2/internal/ui/a/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public protocolError(Lcom/adyen/threeds2/ProtocolErrorEvent;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->c()V

    .line 200
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->e()Lcom/adyen/threeds2/ChallengeStatusReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p1}, Lcom/adyen/threeds2/ChallengeStatusReceiver;->protocolError(Lcom/adyen/threeds2/ProtocolErrorEvent;)V

    :cond_0
    return-void
.end method

.method public runtimeError(Lcom/adyen/threeds2/RuntimeErrorEvent;)V
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->c()V

    .line 211
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->e()Lcom/adyen/threeds2/ChallengeStatusReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1}, Lcom/adyen/threeds2/ChallengeStatusReceiver;->runtimeError(Lcom/adyen/threeds2/RuntimeErrorEvent;)V

    :cond_0
    return-void
.end method

.method public timedout()V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->c()V

    .line 189
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/i;->e()Lcom/adyen/threeds2/ChallengeStatusReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lcom/adyen/threeds2/ChallengeStatusReceiver;->timedout()V

    :cond_0
    return-void
.end method
