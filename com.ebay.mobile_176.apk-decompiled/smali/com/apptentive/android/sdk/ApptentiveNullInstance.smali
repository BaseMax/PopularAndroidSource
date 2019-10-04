.class Lcom/apptentive/android/sdk/ApptentiveNullInstance;
.super Ljava/lang/Object;
.source "ApptentiveNullInstance.java"

# interfaces
.implements Lcom/apptentive/android/sdk/ApptentiveInstance;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private failMethodCall(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Unable to invoke \'%s\': Apptentive SDK is not properly initialized"

    const/4 v1, 0x1

    .line 214
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/debug/Assert;->assertFail(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addInteractionUpdateListener(Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;)V
    .locals 0

    const-string p1, "addInteractionUpdateListener"

    .line 93
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public getAndClearCustomData()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "getAndClearCustomData"

    .line 153
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getAppRelease"

    .line 125
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getApplicationContext"

    .line 104
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationVersionCode()I
    .locals 1

    const-string v0, "getApplicationVersionCode"

    .line 185
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "getApplicationVersionName"

    .line 179
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApptentiveHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getApptentiveHttpClient"

    .line 139
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getApptentiveTaskManager"

    .line 132
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApptentiveToolbarTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    const-string v0, "getApptentiveToolbarTheme"

    .line 197
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getConversation"

    .line 111
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getConversationProxy"

    .line 118
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTaskStackTopActivity()Landroid/app/Activity;
    .locals 1

    const-string v0, "getCurrentTaskStackTopActivity"

    .line 173
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultAppDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDefaultAppDisplayName"

    .line 209
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultStatusBarColor()I
    .locals 1

    const-string v0, "getDefaultStatusBarColor"

    .line 191
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getGlobalSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getGlobalSharedPrefs"

    .line 146
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnSurveyFinishedListener()Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;
    .locals 1

    const-string v0, "getOnSurveyFinishedListener"

    .line 67
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRatingProvider()Lcom/apptentive/android/sdk/module/rating/IRatingProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getRatingProvider"

    .line 160
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRatingProviderArgs()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getRatingProviderArgs"

    .line 167
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAppUsingAppCompatTheme()Z
    .locals 1

    const-string v0, "isAppUsingAppCompatTheme"

    .line 203
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public login(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 0

    const-string p1, "login"

    .line 42
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public logout()V
    .locals 1

    const-string v0, "logout"

    .line 47
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public notifyInteractionUpdated(Z)V
    .locals 0

    const-string p1, "notifyInteractionUpdated"

    .line 57
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public putRatingProviderArg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo p1, "putRatingProviderArg"

    .line 88
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public removeInteractionUpdateListener(Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;)V
    .locals 0

    const-string/jumbo p1, "removeInteractionUpdateListener"

    .line 98
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthenticationFailedListener(Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;)V
    .locals 0

    const-string/jumbo p1, "setAuthenticationFailedListener"

    .line 78
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public setOnSurveyFinishedListener(Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;)V
    .locals 0

    const-string/jumbo p1, "setOnSurveyFinishedListener"

    .line 73
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public setRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V
    .locals 0
    .param p1    # Lcom/apptentive/android/sdk/module/rating/IRatingProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo p1, "setRatingProvider"

    .line 83
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public showAboutInternal(Landroid/content/Context;Z)V
    .locals 0

    const-string/jumbo p1, "showAboutInternal"

    .line 62
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public showMessageCenterInternal(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo p1, "showMessageCenterInternal"

    .line 36
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateApptentiveInteractionTheme(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0

    const-string/jumbo p1, "updateApptentiveInteractionTheme"

    .line 52
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveNullInstance;->failMethodCall(Ljava/lang/String;)V

    return-void
.end method
